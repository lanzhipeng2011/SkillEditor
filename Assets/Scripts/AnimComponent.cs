using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class AnimComponent : ActComponent
{
    string[] animName = new string[] { "Null", "Attack", "Jump", "gather" };
    int animIndex = 0;

    public AnimComponent(Player player) : base(player)
    {
        
    }

    public override void Play()
    {
        player.skillData.animName = animName[animIndex];

        player.animator.SetTrigger(animName[animIndex]);
    }

    public override void ShowOnGUI()
    {
        isDown = EditorGUILayout.Foldout(isDown, "动画组件");
        if (isDown)
        {
            return;
        }
        animIndex = EditorGUILayout.Popup("动画片段", animIndex, animName);
        if (GUILayout.Button("移除"))
        { 
            if(player.actComponet.ContainsKey(ActType.Anim))
                player.actComponet.Remove(ActType.Anim);
        }
    }

    public override void Stop()
    {
        player.animator.SetTrigger("Null");
    }

    public override void Unload()
    {
        base.Unload();
    }
    
}
