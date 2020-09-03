// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34263,y:32514,varname:node_9361,prsc:2|custl-1980-OUT;n:type:ShaderForge.SFN_Tex2d,id:2095,x:31605,y:32895,ptovrint:False,ptlb:RJmask,ptin:_RJmask,varname:node_4261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa69865309852df4b93ed19b279cf312,ntxv:0,isnm:False|UVIN-6627-OUT;n:type:ShaderForge.SFN_If,id:572,x:32345,y:32842,varname:node_572,prsc:2|A-8627-A,B-5990-OUT,GT-6875-OUT,EQ-6875-OUT,LT-8819-OUT;n:type:ShaderForge.SFN_If,id:3212,x:32345,y:32991,varname:node_3212,prsc:2|A-8627-A,B-9128-OUT,GT-6875-OUT,EQ-6875-OUT,LT-8819-OUT;n:type:ShaderForge.SFN_Vector1,id:6875,x:32105,y:32925,varname:node_6875,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8819,x:32094,y:32991,varname:node_8819,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:2959,x:32573,y:32468,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:9128,x:32072,y:33074,varname:node_9128,prsc:2|A-5990-OUT,B-9382-OUT;n:type:ShaderForge.SFN_Slider,id:9382,x:31758,y:33150,ptovrint:False,ptlb:RJB,ptin:_RJB,varname:node_3200,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Subtract,id:6172,x:32501,y:32937,varname:node_6172,prsc:2|A-572-OUT,B-3212-OUT;n:type:ShaderForge.SFN_OneMinus,id:123,x:31913,y:32814,varname:node_123,prsc:2|IN-3065-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5990,x:32129,y:32763,ptovrint:False,ptlb:OneMinus,ptin:_OneMinus,varname:node_5481,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3065-OUT,B-123-OUT;n:type:ShaderForge.SFN_Multiply,id:2273,x:32951,y:32935,varname:node_2273,prsc:2|A-6172-OUT,B-6984-RGB,C-1181-OUT;n:type:ShaderForge.SFN_Color,id:6984,x:32631,y:33083,ptovrint:False,ptlb:RJB_color,ptin:_RJB_color,varname:node_7219,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:1181,x:32464,y:33291,ptovrint:False,ptlb:RJB_LD,ptin:_RJB_LD,varname:node_8596,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Add,id:7565,x:32760,y:32806,varname:node_7565,prsc:2|A-572-OUT,B-6172-OUT;n:type:ShaderForge.SFN_Multiply,id:3850,x:33368,y:32456,varname:node_3850,prsc:2|A-6695-OUT,B-7565-OUT;n:type:ShaderForge.SFN_Color,id:9346,x:32573,y:32291,ptovrint:False,ptlb:Diffuse_color_Wai,ptin:_Diffuse_color_Wai,varname:node_6120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6695,x:33043,y:32453,varname:node_6695,prsc:2|A-2444-OUT,B-2959-RGB,C-8627-RGB,D-781-R;n:type:ShaderForge.SFN_VertexColor,id:8627,x:32025,y:32508,varname:node_8627,prsc:2;n:type:ShaderForge.SFN_Fresnel,id:4734,x:32641,y:31943,varname:node_4734,prsc:2|NRM-6343-OUT,EXP-512-OUT;n:type:ShaderForge.SFN_NormalVector,id:6343,x:32301,y:31881,prsc:2,pt:False;n:type:ShaderForge.SFN_Add,id:8117,x:33664,y:32439,varname:node_8117,prsc:2|A-3854-OUT,B-3850-OUT,C-2273-OUT;n:type:ShaderForge.SFN_Slider,id:512,x:32274,y:32083,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:1342,x:33148,y:32094,varname:node_1342,prsc:2|A-790-OUT,B-4734-OUT;n:type:ShaderForge.SFN_Color,id:3765,x:32301,y:31719,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_3765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:790,x:32881,y:31835,varname:node_790,prsc:2|A-3765-RGB,B-4734-OUT;n:type:ShaderForge.SFN_FaceSign,id:3162,x:32769,y:32351,varname:node_3162,prsc:2,fstp:0;n:type:ShaderForge.SFN_Color,id:8150,x:32573,y:32163,ptovrint:False,ptlb:Diffuse_color_Nei,ptin:_Diffuse_color_Nei,varname:node_8150,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:2444,x:33013,y:32279,varname:node_2444,prsc:2|A-8150-RGB,B-9346-RGB,T-3162-VFACE;n:type:ShaderForge.SFN_SwitchProperty,id:3854,x:33399,y:32068,ptovrint:False,ptlb:Fresnel_K,ptin:_Fresnel_K,varname:node_3854,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-967-OUT,B-1342-OUT;n:type:ShaderForge.SFN_Vector1,id:967,x:33148,y:32022,varname:node_967,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6785,x:33491,y:32557,ptovrint:False,ptlb:Liangdu,ptin:_Liangdu,varname:node_6785,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:781,x:32573,y:32645,ptovrint:False,ptlb:Diffuse_Alpha,ptin:_Diffuse_Alpha,varname:node_781,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6627-OUT;n:type:ShaderForge.SFN_Time,id:1134,x:30199,y:32966,varname:node_1134,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1986,x:30490,y:33119,varname:node_1986,prsc:2|A-1134-T,B-9738-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9738,x:30227,y:33192,ptovrint:False,ptlb:01x,ptin:_01x,varname:node_5802,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6123,x:30490,y:33231,varname:node_6123,prsc:2|A-1134-T,B-3527-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3527,x:30227,y:33263,ptovrint:False,ptlb:01y,ptin:_01y,varname:node_3857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:7424,x:30688,y:33143,varname:node_7424,prsc:2|A-1986-OUT,B-6123-OUT;n:type:ShaderForge.SFN_TexCoord,id:5834,x:30508,y:32852,varname:node_5834,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:4195,x:30856,y:32997,varname:node_4195,prsc:2|A-5834-UVOUT,B-7424-OUT;n:type:ShaderForge.SFN_Tex2d,id:1871,x:31059,y:32997,ptovrint:False,ptlb:Raodong01,ptin:_Raodong01,varname:node_5899,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4195-OUT;n:type:ShaderForge.SFN_Add,id:6627,x:31352,y:32847,varname:node_6627,prsc:2|A-5834-UVOUT,B-1434-OUT;n:type:ShaderForge.SFN_Multiply,id:1980,x:33850,y:32528,varname:node_1980,prsc:2|A-8117-OUT,B-6785-OUT;n:type:ShaderForge.SFN_Multiply,id:3065,x:31777,y:32732,varname:node_3065,prsc:2|A-510-OUT,B-2095-R;n:type:ShaderForge.SFN_Slider,id:510,x:31402,y:32673,ptovrint:False,ptlb:灰度,ptin:_,varname:node_510,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.5,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:5594,x:31012,y:33214,ptovrint:False,ptlb:NoseQD,ptin:_NoseQD,varname:node_5594,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1434,x:31305,y:33049,varname:node_1434,prsc:2|A-1871-R,B-5594-OUT;proporder:512-3765-3854-9346-8150-2959-781-2095-5990-9382-6984-1181-9738-3527-1871-6785-510-5594;pass:END;sub:END;*/

Shader "Shader Forge/MyRJ_add" {
    Properties {
        _Fresnel ("Fresnel", Range(0, 10)) = 0
        _FresnelColor ("FresnelColor", Color) = (1,1,1,1)
        [MaterialToggle] _Fresnel_K ("Fresnel_K", Float ) = 0
        _Diffuse_color_Wai ("Diffuse_color_Wai", Color) = (1,1,1,1)
        _Diffuse_color_Nei ("Diffuse_color_Nei", Color) = (1,1,1,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Diffuse_Alpha ("Diffuse_Alpha", 2D) = "white" {}
        _RJmask ("RJmask", 2D) = "white" {}
        [MaterialToggle] _OneMinus ("OneMinus", Float ) = 0
        _RJB ("RJB", Range(0, 0.1)) = 0
        _RJB_color ("RJB_color", Color) = (1,1,1,1)
        _RJB_LD ("RJB_LD", Range(1, 10)) = 1
        _01x ("01x", Float ) = 0
        _01y ("01y", Float ) = 0
        _Raodong01 ("Raodong01", 2D) = "white" {}
        _Liangdu ("Liangdu", Float ) = 1
        _ ("灰度", Range(0.5, 1)) = 0.5
        _NoseQD ("NoseQD", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            //#pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _RJmask; uniform float4 _RJmask_ST;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _RJB;
            uniform fixed _OneMinus;
            uniform float4 _RJB_color;
            uniform float _RJB_LD;
            uniform float4 _Diffuse_color_Wai;
            uniform float _Fresnel;
            uniform float4 _FresnelColor;
            uniform float4 _Diffuse_color_Nei;
            uniform fixed _Fresnel_K;
            uniform float _Liangdu;
            uniform sampler2D _Diffuse_Alpha; uniform float4 _Diffuse_Alpha_ST;
            uniform float _01x;
            uniform float _01y;
            uniform sampler2D _Raodong01; uniform float4 _Raodong01_ST;
            uniform float _;
            uniform float _NoseQD;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
                float node_4734 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 node_1134 = _Time;
                float2 node_4195 = (i.uv0+float2((node_1134.g*_01x),(node_1134.g*_01y)));
                float4 _Raodong01_var = tex2D(_Raodong01,TRANSFORM_TEX(node_4195, _Raodong01));
                float2 node_6627 = (i.uv0+(_Raodong01_var.r*_NoseQD));
                float4 _Diffuse_Alpha_var = tex2D(_Diffuse_Alpha,TRANSFORM_TEX(node_6627, _Diffuse_Alpha));
                float4 _RJmask_var = tex2D(_RJmask,TRANSFORM_TEX(node_6627, _RJmask));
                float node_3065 = (_*_RJmask_var.r);
                float _OneMinus_var = lerp( node_3065, (1.0 - node_3065), _OneMinus );
                float node_572_if_leA = step(i.vertexColor.a,_OneMinus_var);
                float node_572_if_leB = step(_OneMinus_var,i.vertexColor.a);
                float node_8819 = 0.0;
                float node_6875 = 1.0;
                float node_572 = lerp((node_572_if_leA*node_8819)+(node_572_if_leB*node_6875),node_6875,node_572_if_leA*node_572_if_leB);
                float node_3212_if_leA = step(i.vertexColor.a,(_OneMinus_var+_RJB));
                float node_3212_if_leB = step((_OneMinus_var+_RJB),i.vertexColor.a);
                float node_6172 = (node_572-lerp((node_3212_if_leA*node_8819)+(node_3212_if_leB*node_6875),node_6875,node_3212_if_leA*node_3212_if_leB));
                float3 finalColor = ((lerp( 0.0, ((_FresnelColor.rgb+node_4734)*node_4734), _Fresnel_K )+((lerp(_Diffuse_color_Nei.rgb,_Diffuse_color_Wai.rgb,isFrontFace)*_Diffuse_var.rgb*i.vertexColor.rgb*_Diffuse_Alpha_var.r)*(node_572+node_6172))+(node_6172*_RJB_color.rgb*_RJB_LD))*_Liangdu);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        /*Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }*/
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
