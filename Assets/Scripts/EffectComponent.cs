using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class EffectComponent : ActComponent
{
    public EffectComponent(Player player) : base(player)
    {
    }

    string[] animName = new string[] { "Null", "fx_act_player_girl07_skl01_1", "fx_act_player_girl08_attack06" };
    int animIndex = 0;

    string[] effectPos = new string[] { "FX1", "FX2" };
    int effectPosIndex = 0;
    GameObject _FX = null;//特效

    public override void ShowOnGUI()
    {
        GUILayout.BeginVertical();
        isDown = EditorGUILayout.Foldout(isDown, "特效组件");
        if (isDown)
        {
            return;
        }
        animIndex = EditorGUILayout.Popup("特效类型", animIndex, animName);
        
        effectPosIndex = EditorGUILayout.Popup("特效位置", effectPosIndex, effectPos);
        if (GUILayout.Button("移除"))
        {
            player.actComponet.Remove(ActType.Effect);
        }
        GUILayout.EndVertical();
    }
    public override void Play()
    {
        if (animName[animIndex] == "Null")
        {
            return;
        }
        
        _FX = Resources.Load<GameObject>("FX/" + animName[animIndex]);
        _FX = GameObject.Instantiate(_FX);
        

        _FX.transform.SetParent(player.effectPosition[effectPosIndex]);
        _FX.transform.localPosition = Vector3.zero;

        _FX.transform.GetChild(0).GetComponent<ParticleSystem>().Play();
       
        player.skillData.effectName = animName[animIndex];
        //player.data.effectPos = _FX.transform.position;
    }
    public override void Stop()
    {
        if (_FX != null)
        {
            _FX.transform.GetChild(0).GetComponent<ParticleSystem>().Stop();
        }
    }

    public override void Unload()
    {
        if (_FX != null)
        {
            _FX.SetActive(false);
            GameObject.Destroy(_FX);
        }
    }
    
}
