using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class Player : MonoBehaviour
{
    
    public Dictionary<ActType, ActComponent> actComponet = new Dictionary<ActType, ActComponent>();
    public Animator animator;
    public AudioSource audioSource;
    public Transform[] effectPosition;
    public Data data = new Data();

    public SkillData skillData;

    // Start is called before the first frame update
    void Start()
    {
        skillData = new SkillData();
        animator = GetComponent<Animator>();
        audioSource = gameObject.AddComponent<AudioSource>();
        effectPosition = new Transform[] { transform.Find("FX1"), transform.Find("FX2") };
    }

    public void Add(ActType actType)
    {
        if (actComponet.ContainsKey(actType))
        {
            return;
        }
        ActComponent act = null;
        switch (actType)
        {
            case ActType.Null:
                break;
            case ActType.Anim:
                act = new AnimComponent(this);
                break;
            case ActType.Audio:
                act = new AudioComponent(this);
                break;
            case ActType.Effect:
                act = new EffectComponent(this);
                break;
            default:
                break;
        }

        if (act != null)
        {
            actComponet.Add(actType, act);
        }

    }

    public void AddSkill(SkillData skillData)
    {
        foreach (var item in data.skillDatas)
        {
            if (item.skillName == skillData.skillName)
            {
                Debug.Log("技能已经有了");
                return;
            }
        }
        data.skillDatas.Add(skillData);
    }

    /// <summary>
    /// 播放
    /// </summary>
    public void Play()
    {
        foreach (var item in actComponet.Values)
        {
            item.Play();
        }
    }
    /// <summary>
    /// 停止
    /// </summary>
    public void Stop()
    {
        foreach (var item in actComponet.Values)
        {
            item.Stop();
        }
    }

    public void Unload()
    {
        foreach (var item in actComponet.Values)
        {
            item.Unload();
        }
        actComponet.Clear();
        System.GC.Collect();
    }

}
public class Data
{
    public string roleName = "";
    public List<SkillData> skillDatas = new List<SkillData>();
    
    //public Vector3 effectPos = Vector3.zero;
}
public class SkillData
{
    public string skillName = "";
    public string animName = "";
    public string audioName = "";
    public string effectName = "";
}
