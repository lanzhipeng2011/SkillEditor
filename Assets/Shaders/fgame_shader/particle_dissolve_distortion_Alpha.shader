﻿// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "TF/Fx/particle_dissolve_distortion_Alpha"
{
	Properties
	{
		_TintColor ("Tint Color", Color) = (1,1,1,1)
		_BackColor("Back Color", Color) = (1,1,1,1)

		_ColorPower01 ("ColorPower01", Float ) = 1
   
		_MainTex ("MainTex", 2D) = "white" {}
		_Alpha("Alpha", 2D) = "white" {}

		_Power("_Power", Range(0, 5)) = 1
		_RimPower("Fresnel Falloff", Range(-8, 8)) = 0
		

		
		[ShowWhenHasAnyKeyword(Dissolve_Alpha,All_Alpha)]_DissloveTex ("Disslove Texture (RBG)", 2D) 		= "white" {}
		[ShowWhenHasAnyKeyword(Dissolve_Alpha,All_Alpha)]_burnColor ( "BurnColor", Color ) = ( 0,0,0,0 )
    	[ShowWhenHasAnyKeyword(Dissolve_Alpha,All_Alpha)]_burnSize("BurnSize", Range ( 0.0, 0.5 ) )	= 0.25
    	[ShowWhenHasAnyKeyword(Dissolve_Alpha,All_Alpha)]_mix("Mix", Range ( 0,1.5 ) )			= 0.35
    	
    	[ShowWhenHasAnyKeyword(Distortion_Alpha,All_Alpha)]_NoiseTex ("Distort Texture (RG)", 2D) = "white" {}
		[ShowWhenHasAnyKeyword(Distortion_Alpha,All_Alpha)]_HeatTime  ("Heat Time", range (-1,1)) = 0
		[ShowWhenHasAnyKeyword(Distortion_Alpha,All_Alpha)]_ForceX  ("Strength X", range (0,1)) = 0.1
		[ShowWhenHasAnyKeyword(Distortion_Alpha,All_Alpha)]_ForceY  ("Strength Y", range (0,1)) = 0.1
	}
	
	CGINCLUDE
	#pragma multi_compile Dissolve_Alpha Distortion_Alpha  All_Alpha
	
	ENDCG
	
	Category
	{
		Tags { "Queue"="Transparent" "RenderType"="Transparent" }
		Blend SrcAlpha OneMinusSrcAlpha
		//AlphaTest Greater .01
		Cull Off
		Lighting Off
		ZWrite Off
		Fog{ Mode off }

		SubShader
		{
			Pass
			{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#pragma fragmentoption ARB_precision_hint_fastest
				#pragma multi_compile_particles
				#include "UnityCG.cginc"

				struct appdata_t
				{
					float4 vertex : POSITION;
					fixed4 color : COLOR;
					float2 texcoord: TEXCOORD0;
					half3 normal : NORMAL;
				};

				struct v2f
				{
					float4 vertex : POSITION;
					fixed4 color : COLOR;
					float2 uvmain : TEXCOORD1;
					half4 posWorld : TEXCOORD2;
					half3 normalDir : TEXCOORD3;
					float2 uvmain1 : TEXCOORD4;
				};

				fixed4 _TintColor;
				fixed4 _BackColor;
				float _ForceX;
				float _ForceY;
				float _HeatTime;
				float4 _MainTex_ST;
				float4 _NoiseTex_ST;
				sampler2D _NoiseTex;
				sampler2D _MainTex;
				sampler2D _Alpha;
				uniform float _ColorPower01;
				
				sampler2D _DissloveTex;
				float4 _DissloveTex_ST;
				float4 _burnColor;
    			float _burnSize;
    			float _mix;

				fixed _Power;
				fixed _RimPower;

				v2f vert (appdata_t v)
				{
					v2f o;
					o.vertex = UnityObjectToClipPos(v.vertex);
					o.color = v.color;
					o.uvmain = TRANSFORM_TEX( v.texcoord, _MainTex );

					o.uvmain1 = TRANSFORM_TEX(v.texcoord, _DissloveTex);
					o.posWorld = mul(unity_ObjectToWorld, v.vertex);
					o.normalDir = UnityObjectToWorldNormal(v.normal);
					return o;
				}
				
				fixed4 frag( v2f i ) : COLOR
				{	
					float tex_alpha = 1;
					float4 desCol;

					i.normalDir = normalize(i.normalDir);
					float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
					float NdotV = dot(i.normalDir, viewDirection);
					float rim = 1 - saturate(NdotV);
					rim = pow(rim, _RimPower);
					NdotV = max(0, NdotV);
					float4 ss = NdotV ? float4(1, 1, 1, 1)*rim*_Power : rim*_Power*_BackColor;

					#ifdef Dissolve_Alpha
					
					tex_alpha = tex2D ( _Alpha, i.uvmain ).r;
					desCol = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.uvmain);										
					fixed DissoAlpha = Luminance(  (tex2D ( _DissloveTex, i.uvmain1 ).rgb) * i.color.a );
			
					desCol.rgb	= lerp (desCol.rgb, _burnColor, step (DissoAlpha, _mix ) );
					desCol.a 	= step ( _mix -_burnSize, DissoAlpha) * _TintColor.a * i.color.a * tex_alpha;
					#endif
					
					#ifdef Distortion_Alpha
					//noise effect
					float4 offsetColor1 = tex2D(_NoiseTex, i.uvmain + _Time.xz*_HeatTime);
					float4 offsetColor2 = tex2D(_NoiseTex, i.uvmain + _Time.yx*_HeatTime);
					i.uvmain.x += ((offsetColor1.r + offsetColor2.r) - 1) * _ForceX;
					i.uvmain.y += ((offsetColor1.r + offsetColor2.r) - 1) * _ForceY;

					tex_alpha = tex2D ( _Alpha, i.uvmain ).r;
					desCol = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.uvmain);	
					desCol.a = tex_alpha; 									
					#endif
					
					#ifdef All_Alpha

					float4 offsetColor1 = tex2D(_NoiseTex, i.uvmain + _Time.xz*_HeatTime);
					float4 offsetColor2 = tex2D(_NoiseTex, i.uvmain + _Time.yx*_HeatTime);
					i.uvmain.x += ((offsetColor1.r + offsetColor2.r) - 1) * _ForceX;
					i.uvmain.y += ((offsetColor1.r + offsetColor2.r) - 1) * _ForceY;
					
					tex_alpha = tex2D ( _Alpha, i.uvmain ).r;
					desCol = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.uvmain);	
					
					fixed DissoAlpha = Luminance((tex2D(_DissloveTex, i.uvmain1).rgb) * i.color.a);
					desCol.rgb	= lerp (desCol.rgb, _burnColor, step (DissoAlpha, _mix ) );
					desCol.a 	= step ( _mix -_burnSize, DissoAlpha) * _TintColor.a * i.color.a * tex_alpha;
					#endif

					clip(tex_alpha - 0.5);
					return desCol * _ColorPower01*ss;
				}
				ENDCG
			}
		}
		// ------------------------------------------------------------------
		// Fallback for older cards and Unity non-Pro
		
		CustomEditor "EffectAlphaMaterialInspector"
	}
}
