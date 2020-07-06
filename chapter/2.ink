== chapter_2
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

    + [往前走 · 去小溪]
    ->river
    
    + [往北走 · 去山坡]
    ->path
    
    + [往西走 · 乱石阵]
    ->west
    
    + [往南走 · 去树林]
    ->south
    
    + [往东走 · 青石桥]
    ->east
    
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
    {items?(wp_hulu):

        + [使用【葫芦】]
        {get_item_intro(wp_hulu)}
        看来可以用来盛溪水和饮用。
            ++ [【盛溪水】]->fill_hulu
            ++ {role_status?thirst}[【饮用】]->drink_hulu
            ->action
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

=fill_hulu
你将葫芦装满清水。
+ {role_status?thirst}[【饮用】]->drink_hulu
+ [回到 · 未明谷]->valley#STOP

=drink_hulu
{not fill_hulu:
你举起葫芦摇了摇，里面却是空空如也。
}
{fill_hulu and role_status?thirst:
{你拿起葫芦咕噜噜地喝了几口清水。|你再次拿起喝了几口清水。|你拿起葫芦润了下嘴。|你已经喝太多了，再也灌不下一滴水了。|你已经喝太多了。|你再也喝不下了。|。。。~set_role_status(nothirst)}
}
+ [【盛溪水】]->fill_hulu
+ {role_status?thirst}[【饮用】]->drink_hulu
+ [回到 · 未明谷]->valley#STOP

=path
这是一段陡峭的山坡，应该可以向上攀爬出去。
+ [攀爬【山坡】]->climb
+ [回到 · 未明谷]->valley#STOP


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
{not drink_hulu:{你聚精会神看向石头上的文字，只觉它似乎有魔法一般吸引注了你的精神，待你回过神来，明明只是一瞬间却好像过了许久。只觉得自己大汗淋漓仿佛脱水，脑海里却是一片空白，什么也没记住。|你感觉身体十分虚弱，这些文字反复蕴含着大恐怖，不是现在的自己能观看的，还是先去补充些水分吧。|你的头脑开始嗡嗡叫，眼冒金星，仿佛快要晕倒。|你感觉身体十分虚弱，已经无法再直视这些文字了。|。。。}}

{
-num_yeguo > 0 and drink_hulu and not wx_ty:
    你聚精会神看向石头上的文字，只觉它似乎有魔法一般吸引注了你的精神，待你回过神来，明明只是一瞬间却好像过了许久。只觉得饥肠辘辘，脑海里却是一片空白，什么也没记住。
    + [吃些【野果】]
        ++查看【{get_item_name(LIST_VALUE(wp_yeguo))}】* {get_item_num(LIST_VALUE(wp_yeguo))}
           
            {get_item_intro(LIST_VALUE(wp_yeguo))}
   
        +++ 使用【{get_item_name(LIST_VALUE(wp_yeguo))}】
            //使用物品后的回调
            {get_item_use_callback(LIST_VALUE(wp_yeguo))}
    
            //物品数量大于0，使用
            {get_item_num(LIST_VALUE(wp_yeguo)) > 0 :
                ~use_item(wp_yeguo)
            }
    
        ++++ [休息片刻]#AUDIO:audio/heart_1.mp3
            这次你做好准备，再次看向文字，终于能坚持看了许久，上面似乎说的是一段不为人知的历史只是时间过于久远,内容却是看不太清。似乎还有着什么武学功法。
            ->judge_yuepei


}

{num_yeguo == 0:
这些文字看着有些玄妙十分耗费精神，还是先备些吃再来吧，有备无患。
}

{wx_ty:
    {斯人已逝，你不禁感慨。|。。。}
}

+ [再次看向【文字】]->look
+ [回到 · 未明谷]
->valley

=judge_yuepei
{
-items?(wp_yupei):
    + 突然你怀中的玉佩发出异动
        ++查看【{get_item_name(LIST_VALUE(wp_yupei))}】* {get_item_num(LIST_VALUE(wp_yupei))}
               
                {get_item_intro(LIST_VALUE(wp_yupei))}
       
            +++使用【{get_item_name(LIST_VALUE(wp_yupei))}】
                //使用物品后的回调
                {get_item_use_callback(LIST_VALUE(wp_yupei))}
        
                //物品数量大于0，使用
                {get_item_num(LIST_VALUE(wp_yupei)) > 0 :
                    ~use_item(wp_yeguo)
                }
                
                这股暖流自行在你体内游走起来。
            ++++ (wx_ty)你领悟了「太乙」。#CLASS:bold
                ->west.action
-else:
    似乎是一门叫做【太乙】的武学，似乎奇妙非凡。
    可惜上面文字模糊不清，你却无法领悟，似乎缺了什么关隘。
    你走近石碑。
    你仿佛看见青石桥那边似乎有什么在闪烁，不妨走过去看看。
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
        {get_item_intro(LIST_VALUE(wp_yeguo))}
        ->action
    + [拾取【野果】]
        {num_yeguo < 10:
            ~add_item(wp_yeguo)
            {&你拾取了一个野果。|你又拾取了一个野果。}
        -else:
            {&你兜里怀揣着几个野果，双手也环抱着几个，再也装不下这些野果了。|你再也装不下野果了。}
        }
        ->action
    
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
    
    {not drink_hulu:
        你现在有些渴，可以去桥下瞧瞧有没有干净的水源。
    }
    
- (action)
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


=climb
{
- num_yeguo == 0 and not wx_ty:
    {这段山路看着有些陡峭难爬，还是多准备些吃的再来吧。|这段山路看着有些陡峭难爬，还是去树林找些果子再来吧。}
    + [回到 · 未明谷]->valley


- not drink_hulu:
    {你感到口干舌燥，或许该找些喝的。|你感到口干舌燥，浑身无力|你感到口干舌燥，或许该去溪边找些水喝。}
    + [回到 · 未明谷]->valley
    
-else:
    #AUDIO:audio/breath_1.mp3
    + 你用尽全力向上攀爬。
    {
    -wx_ty:
        山路崎岖，你提气轻身，太乙心法在你体内游走一圈。
        ++ [【飞纵而上】]
        你飞纵而上，发觉眼前竟又是一片开阔之处！
        ->top
        
    -else:
        你感到饥肠辘辘，没有力气往上爬，该吃些野果补充下体力吧。
        ++ [吃些【野果】]
            +++查看【{get_item_name(LIST_VALUE(wp_yeguo))}】* {get_item_num(LIST_VALUE(wp_yeguo))}
               
                {get_item_intro(LIST_VALUE(wp_yeguo))}
       
            ++++ 使用【{get_item_name(LIST_VALUE(wp_yeguo))}】
                //使用物品后的回调
                {get_item_use_callback(LIST_VALUE(wp_yeguo))}
        
                //物品数量大于0，使用
                {get_item_num(LIST_VALUE(wp_yeguo)) > 0 :
                    ~use_item(wp_yeguo)
                }
            ->wait
    }

}

=wait
+[。。。]
- 休息一下
+[。。。]
- 喘几口气
+[。。。]
发觉眼前竟又是一片开阔之处！
->top

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