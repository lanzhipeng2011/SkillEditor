using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using Newtonsoft.Json;
using System.IO;

public class PlayerSkillEditor : EditorWindow
{
    public static Player player;
    string[] componentName = new string[] { "Null", "Ainm", "Audio", "Effect" };
    int componentIndex = 0;
    string text = "";

    private void OnGUI()
    {
        GUILayout.BeginHorizontal();
        if (GUILayout.Button("播放"))
        {
            player.Play();
        }
        if (GUILayout.Button("暂停"))
        {
            player.Stop();
        }
        if (GUILayout.Button("保存"))
        {
            string json = JsonConvert.SerializeObject(player.data);
            File.WriteAllText(Application.dataPath+ "/Skill.json", json);
        }
        GUILayout.EndHorizontal();

        text = EditorGUILayout.TextField("技能名称", text);



        if (GUILayout.Button("添加技能") )
        {
            if (text != "")
            {
                SkillData skill = new SkillData();
                skill.skillName = text;
                skill.animName = player.skillData.animName;
                skill.audioName = player.skillData.audioName;
                skill.effectName = player.skillData.effectName;
                player.AddSkill(skill);
            }
            else
            {
                Debug.Log("请输入技能名称");
            }
        }
        

        GUILayout.BeginHorizontal();

        componentIndex = EditorGUILayout.Popup("添加组件", componentIndex, componentName);
       
        if (GUILayout.Button("添加") && componentName[componentIndex] != null)
        {
            player.Add((ActType)componentIndex);
        }
        GUILayout.EndHorizontal();
        foreach (var item in player.actComponet.Values)
        {
            item.ShowOnGUI();
        }
    }
}
