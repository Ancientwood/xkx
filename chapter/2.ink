== chapter_2
#IMAGE:images/chapter_2.png
->valley

=valley
#AUDIO:audio/scene_dizi.mp3
· 未明谷
    山谷中绿树成荫，却不见有多么明媚的花开于此，但你仍能闻见了远远飘来的花香。
    耳边听到了溪水叮咚的声音，原来不远处有一条蜿蜒的小溪，岸边似乎散落了一些物什。
    在山谷的北侧有条陡峭的山坡隐隐可以通向外界。

    {
     -role_status?(hungry,thirst):
        你现在又渴又饿，看看在这里能否找到些吃的喝的。

     - role_status?hungry:
        你现在有点饿，看看在这里能否找到些吃的。
        
     - role_status?thirst:
     你现在有点渴，看看在这里能否找到些喝的。
    }

    -(action)

    
    + [往西走 · 乱石阵]
    ->west
    
    + [往南走 · 去树林]
    ->south
    
    + [往前走 · 去小溪]
    ->river
    
    + [往东走 · 青石桥]
    ->east

    + [往北走 · 去山坡]
    ->path
    
    + [查看【包裹】]
        ->list_item(->action)


=river
#AUDIO:audio/bird_1.mp3
· 小溪
    这是一条缓缓流动的小溪，溪水清澈而明亮。
    {items!?(wp_hulu):
    不远处的地上有着一个样式古朴的葫芦。
    也许你可以拿起地上的葫芦，研究下用来盛溪水喝。
    }
    
- (action)
    {
    -items?(wp_hulu):
        + [盛【溪水】]
            {item_status?hulu_full:
                {~葫芦里的水已经快满出来了。|葫芦已经满了。|这个葫芦已经装满了。}
            -else:
                你将葫芦装满清水。
                {set_hulu_status(1)}
            }
            ->action
        
        ++ [返回]->action
        
    -else:
        * [查看【葫芦】]
        {get_item_intro(wp_hulu)}
        
        ** [拾取【葫芦】]
        你捡起了葫芦。
        ~add_item(wp_hulu)
        ->action
    }
    
    + [查看【包裹】]
        ->list_item(->action)

    + [回到 · 未明谷]#STOP
        ->valley


=east
· 青石桥头 
    这是一座断了的石桥。桥下流水缓缓流过，似乎有呜咽之声。
    远处深草间有座坟，想那夜晚周遭必是磷炎抖动，凄凉无比。
    不知道怎么，你一来到这里，似乎就有种英雄垂泪的无奈和悲凉之感。
    前方已然无路可走。
    
    - (action)
    {role_status?thirst:
        {not jq_qsqt:你感到有些渴，不妨去桥下瞧瞧有没有干净的水源。}

        + [下去【寻找】]
         {
            - not jq_qsqt:
                ++ 断桥下石缝中似乎有什么东西
                +++ 走过去看看
                    {
                     - num_yeguo < 5:
                        ->jq_qsqt
                     - else:
                         {&你兜里怀揣着几个野果，双手也环抱着几个，身上的野果太多了，行动太不方便了。|你身上的东西太多了，行动不便。}
                         ->action
                    }
            - else:
             这里似乎什么都没有了。
                ->action
         } 
         
     }
     
    + [查看【包裹】]
        ->list_item(->action)
    
    + [回到 · 未明谷]->valley#STOP

=jq_qsqt
#AUDIO:audio/fight_4.mp3
+ [仔细观察]
你仔细观察
只见断桥的石缝中有着一块神奇的玉佩。

虽然此刻夜幕还未降临，玉佩却在散发着淡淡的光芒，显得奇妙非凡。#CLASS:bold
++ [捡起玉佩]
你捡起一块玉佩
~add_item(wp_yupei)
    ->east.action
    
/*3*/
=west
#AUDIO:audio/fight_1.mp3
· 乱石阵
    你走过来，眼前顿升一片雾霭。迷雾之中，你隐约瞧见了几块林立的灰色乱石。
    你刚想转身离开，却觉得似乎不对头：这些乱石看似杂乱无章，细看下发现似乎是按什么规律排成的。
    有几块石头上有些文字。
    

- (action)
    + [看向【文字】]
        ->look

    + [查看【包裹】]
        ->list_item(->action)

    + [回到 · 未明谷]#STOP
        ->valley
    
=look
{role_status?thirst:{你聚精会神看向石头上的文字，只觉它似乎有魔法一般吸引注了你的精神，待你回过神来，明明只是一瞬间却好像过了许久。只觉得自己大汗淋漓仿佛脱水，脑海里却是一片空白，什么也没记住。|你感觉身体十分虚弱，这些文字反复蕴含着大恐怖，不是现在的自己能观看的，还是先去补充些水分吧。|你的头脑开始嗡嗡叫，眼冒金星，仿佛快要晕倒。|你感觉身体十分虚弱，已经无法再直视这些文字了。|。。。}}

{
-role_status!?thirst and role_status?hungry and role_wx!?wx_tycp:
    你聚精会神看向石头上的文字，只觉它似乎有魔法一般吸引注了你的精神，待你回过神来，明明只是一瞬间却好像过了许久。只觉得饥肠辘辘，脑海里却是一片空白，什么也没记住。
    还是吃些东西补充补充体力再继续吧。
    ->west.action
}

{
-role_status!?thirst and role_status!?hungry and role_wx!?wx_tycp:
    你聚精会神看向石头上的文字，只觉它似乎有魔法一般吸引注了你的精神，待你回过神来，明明只是一瞬间却好像过了许久。
    脑海里是一片空白，什么也没记住。
    还好你先前吃野果吃饱了，现下休息一会再试试吧。
    
        + [休息片刻]#AUDIO:audio/heart_1.mp3
            这次你做好准备，再次看向文字，终于能坚持看了许久，上面似乎说的是一段不为人知的历史只是时间过于久远,内容却是看不太清。似乎还有着什么武学功法。
            ->judge_yuepei


}

{num_yeguo == 0 and role_status?hungry:
这些文字看着有些玄妙十分耗费精神，还是先备些吃的或者吃饱了再来吧，有备无患。
}

{role_wx?wx_tycp:
    {斯人已逝，你不禁感慨。|。。。}
}

//+ [再次看向【文字】]->look
+ [回到 · 未明谷]
->valley

=judge_yuepei
{
-items?(wp_yupei):
    + 突然你怀中的玉佩发出异动
        ++查看【{get_item_name(wp_yupei)}】
               
                {get_item_intro(wp_yupei)}
       
            +++使用【{get_item_name(wp_yupei)}】
                //使用物品后的回调
                ->get_item_use_callback(wp_yupei)->
                //物品数量大于0，使用
                {get_item_num(wp_yupei) > 0 :
                    ~use_item(wp_yeguo)
                }
                
                这股暖流自行在你体内游走起来。
            ++++ 你领悟了武学「太乙 · 残篇」。#CLASS:bold
                ~role_wx+=wx_tycp
                ->west.action
-else:
    似乎是一门叫做【太乙】的武学，似乎奇妙非凡。
    可惜上面文字模糊不清，你却无法领悟，似乎缺了什么关隘。
    折腾了这许久，你只觉得又渴又饿。
    而当你走靠石碑时 · 青石桥 那边似乎有什么在闪烁，不妨过去看看。

    {set_role_status(thirst)}
    {set_role_status(hungry)}
    
    + [回到 · 未明谷]#STOP
        ->valley
}
=south
#AUDIO:audio/bird_2.mp3
· 树林
    你到了一片鸟鸣清啾的树林。
    林子里树木丛生，绿荫如茂，阳光却还是从树枝树叶的空隙间射下，纵在白昼，地上也如繁星点点。
    一阵风吹来，枝杈里藏着的鸟儿一下子全冒出来，欢叫着争相飞上了天空。
    你向林子深处望去，有些麋鹿和兔子穿梭其间，好不欢快！

- (action)
    * [查看【野果】]
        {get_item_intro(wp_yeguo)}
        ->action
    + [拾取【野果】]
        {num_yeguo < 10:
            ~add_item(wp_yeguo)
            {&你拾取了一个野果。|你又拾取了一个野果。}
        -else:
            {&你兜里怀揣着几个野果，双手也环抱着几个，再也装不下这些野果了。|你再也装不下野果了。|你再也拿不下野果了。}
        }
        ->action
    
    + [查看【包裹】]
        ->list_item(->action)
    
    + [回到 · 未明谷]#STOP
        ->valley

=path
这是一段陡峭的山坡，应该可以向上攀爬出去。

- (action)
+ [攀爬【山坡】]->climb
+ [查看【包裹】]
    ->list_item(->action)
+ [回到 · 未明谷]->valley#STOP

=climb
#AUDIO:audio/breath_1.mp3
{
-role_status?hungry and role_status?thirst:
    {~山路陡峭难行，你现在又饿又渴，实在无力前行。|山路险峻，还是休整一下再来吧。|这段山路看着有些难爬，还是去树林找些果子填饱肚子再来吧。}
    + [返回]->path.action
    
-role_status?hungry:
    {~这段山路看着有些陡峭难爬，还是填饱肚子再来吧。|山路险峻，还是休整一下再来吧。|这段山路看着有些难爬，还是去树林找些果子填饱肚子再来吧。}
    +[。。。]
    你饿着肚子又出了一身汗，不禁觉得又饿又渴了。#CLASS:bold
    {set_role_status(thirst)}
    
        ++ [返回]->path.action


- role_status?thirst:
    {~这段山路有些陡峭难爬，不一会你便感到口干舌燥，或许该找些喝的。|山路险峻，你感到口干舌燥，浑身无力|山路难行，你感到口干舌燥，或许该去溪边找些水喝。}
    +[。。。]
        
    你的水分补充得不足，不得已只能停下攀爬的脚步，又白白浪费了体力。
    你现在觉得又饿又渴。#CLASS:bold
    {set_role_status(hungry)}
    
        ++ [返回]->path.action
    
-role_status!?hungry and role_wx!?wx_tycp:
    你用尽全力往上爬去，全身大汗淋漓。
    你心里想，万幸是吃饱喝足了过来。
    否则爬到一半没力了岂不是一命呜呼？
    爬坡消耗了你大量的体力。
    
    {set_role_status(hungry)}
    {set_role_status(thirst)}
    
    + [继续攀爬]
        ++[。。。]
        休息一下
        +++[。。。]
            喘几口气
        ++++[。。。]
            发觉眼前竟又是一片开阔之处！
            ->top
            
    + [返回]->path.action
    
 -role_wx?wx_tycp:
    
    + 你用尽全力向上攀爬。
    山路崎岖，似乎有一道暖流在你体内游走了一圈，你提气轻身，竟不禁忍不住想要长啸。
    
        ++ [【飞纵而上】]
        你飞纵而上，发觉眼前竟又是一片开阔之处！
            ->top
            
    + [返回]->path.action

}

=top
#STOP
#AUDIO:audio/intro_1.mp3
{not chapter_3:
这是一段较为平缓的山路，你往山路下一望，吓得缩了回来，下面明显较为陡峭。
往北走，像是有个集镇，人头攒动。
使劲往北望去，云山雾罩之下，似乎有户大户人家。

这里唯一的出口是北边。

+ [往北走]->north

-else:
这是一段较为平缓的山路，走到山顶，你往山路下一望，吓得缩了回来，下面明显较为陡峭，还是先回集镇小道吧。
+[回集镇小道] ->chapter_3.jzxd//集镇小道
}

=north
你看着怀里的葫芦，心想 「柳秀山庄」 会不会就在前面附近的地方。

怀揣着这些心思，你慢慢走下了小道。
-> go_chapter_3
=go_chapter_3
+ [第三回 · 柳秀山庄]->chapter_3# CLEAR