using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class SkilledEditor : EditorWindow
{

    public static SkilledEditor skillEditor;

    [MenuItem("技能编辑器/SkilledEditor")]
    public static void SkillEditorWindow()
    {
        skillEditor = GetWindow<SkilledEditor>("SkillEditor");
        skillEditor.Show();
    }

    private static PlayerSkillEditor playerSkillEditor;
    string[] roleName = new string[] { "Null", "Boy", "Bear", "CubeBoss" };
    int roleIndex = 0;
    Player player = null;
    string playerName = "Null";


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
