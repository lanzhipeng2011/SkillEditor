using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Anim : MonoBehaviour
{
    public RuntimeAnimatorController RunTime;
    private AnimatorOverrideController overr;
    private Animator My_Anima;
    // Start is called before the first frame update
    void Start()
    {
        RunTime = Instantiate(Resources.Load<RuntimeAnimatorController>("player"));
    }

    // Update is called once per frame
    void Update()
    {
        My_Anima.GetCurrentAnimatorStateInfo(0);
    }
}
