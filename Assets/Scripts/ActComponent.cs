using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum ActType
{
    Null, Anim, Audio, Effect
}

public class ActComponent 
{

    public Player player;
    public ActComponent(Player player)
    {
        this.player = player;
    }
    /// <summary>
    /// 播放
    /// </summary>
    public virtual void Play()
    {

    }
    /// <summary>
    /// 停止
    /// </summary>
    public virtual void Stop()
    {

    }
    /// <summary>
    /// 卸载
    /// </summary>
    public virtual void Unload()
    {

    }
    /// <summary>
    /// OnGUI刷新
    /// </summary>
    public bool isDown;
    public virtual bool ShowOnGUI()
    {
        return false;
    }

}
