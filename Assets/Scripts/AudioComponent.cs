using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class AudioComponent : ActComponent
{
    public AudioComponent(Player player) : base(player)
    {
    }

    string[] animName = new string[] { "Null", "Before the Dawn", "Downfall", "Invitation", "汽车爆炸", "玻璃撞击", "金属落地" };
    int animIndex = 0;
    public override void ShowOnGUI()
    {
        isDown = EditorGUILayout.Foldout(isDown, "声音组件");
        if (isDown)
        {
            return;
        }
        animIndex = EditorGUILayout.Popup("音乐片段", animIndex, animName);
        if (GUILayout.Button("移除"))
        {
            player.actComponet.Remove(ActType.Audio);
        }
    }
    public override void Play()
    {
        base.Play();
        player.audioSource.clip = Resources.Load<AudioClip>("Audios/" + animName[animIndex]);
        if (player.audioSource.clip)
        {
            player.audioSource.Play();
            player.skillData.audioName = animName[animIndex];
        }
    }
    public override void Stop()
    {
        if (player.audioSource.clip)
        {
            player.audioSource.Stop();
        }
    }

    public override void Unload()
    {
        base.Unload();
    }
}
