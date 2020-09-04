using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;

public class SkilledEditor : EditorWindow
{

    public static SkilledEditor skillEditor;

    [MenuItem("技能编辑器/SkilledEditor")]
    public static void SkillEditorWindow()
    {
        if (Application.isPlaying)
        {
            GetAllFiles(new DirectoryInfo(filePath));
            skillEditor = GetWindow<SkilledEditor>("SkillEditor");
            skillEditor.Show();
        }
        else {
            Debug.Log("使用技能编辑器需使Unity处于运行中......");
           
        }
    }

    private static PlayerSkillEditor playerSkillEditor;
    private static string[] roleName;// = new string[] { "Null", "Boy", "Bear", "CubeBoss" };
    int roleIndex = 0;
    Player player = null;
    string playerName = "Null";
    private static string filePath = Application.dataPath + "/Resources/Role";
    private static string fullName;

    public static void GetAllFiles(DirectoryInfo directoryInfo)
    {
        DirectoryInfo[] directoryInfos = directoryInfo.GetDirectories();
        FileInfo[] fileInfos = directoryInfo.GetFiles();
        roleName = new string[fileInfos.Length];
        //for (int i = 0; i < directoryInfos.Length; i++)
        //{
        //    Debug.Log("DirectoryInfo:" + directoryInfos[i].FullName);
        //    GetAllFiles(directoryInfos[i]);
        //}
        for (int i = 0; i < fileInfos.Length; i++)
        {
            if (!fileInfos[i].FullName.Contains(".meta"))
            {
                //Debug.Log("fileInfos:" + fileInfos[i].FullName);
                fullName = fileInfos[i].FullName;
                int startIndex = fullName.LastIndexOf('\\') + 1;
                int len = fullName.LastIndexOf('.') - fullName.LastIndexOf('\\') - 1;
                roleName[i] = fullName.Substring(startIndex,len); ;
            }
        }



    }
    private void OnGUI()
    {




        roleIndex = EditorGUILayout.Popup("选择模型", roleIndex, roleName);
        if (GUILayout.Button("创建角色"))
        {

            if (roleName[roleIndex] == "Null")
            {
                Debug.Log("创建角色不能为空");
                return;
            }

            if (playerSkillEditor == null)
            {
                playerSkillEditor = GetWindow<PlayerSkillEditor>("角色控制中心");//, typeof(SkilledEditor)
            }

            //确保只能编辑一个模型  
            if (playerName != roleName[roleIndex])
            {
                // 将已创建的角色删除
                if (player != null)
                {
                    player.Unload();
                    Destroy(player.gameObject);
                    player = null;
                }
                //创建新的角色
                GameObject obj = Instantiate(Resources.Load<GameObject>("Role/" + roleName[roleIndex]));
                player = obj.GetComponent<Player>();
                PlayerSkillEditor.player = player;
                playerName = roleName[roleIndex];
                player.data.roleName = playerName;
            }
            playerSkillEditor.Show();
        }
    }


}
