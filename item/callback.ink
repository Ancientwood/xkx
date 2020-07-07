/* 通过物品id获取物品使用后的回调信息
*/
==get_item_use_callback(id)
{id:
-wp_yupei:你将玉佩贴紧眉心，突然一股暖流从玉佩中涌入身体，你感觉自己的精神不禁为之一振。

-wp_hulu:
    {item_status!?hulu_full:
        你举起葫芦摇了摇，里面却是空空如也。
    }
    {role_status!?thirst:
        {&你已经喝饱了|你已经喝太多了，再也灌不下一滴水了。|你再也喝不下了。|。。。}
    }
    {role_status?thirst and item_status?hulu_full:
        {&你拿起葫芦咕噜噜地喝了几大口清水。|你再次拿起喝了几口清水，<b>你把葫芦里的水喝完了。</b>{set_hulu_status(0)}|你终于喝饱了，意满神足得打了个隔。{set_role_status(nothirst)}}
    }


-wp_yeguo:
    {role_status!?hungry:
        {&你已经吃饱了。|你已经吃太饱了，再也塞不下任何东西了。}
    }
    {role_status?hungry:
        {&你拿起野果咬了几口，感觉肚子好受些了。|你咬了几口野果，味道还可以。|你终于吃饱了，意满神足得打了个隔。{set_role_status(full)}}
    }


-wp_lxph_piaoju:这个票据应该在柳秀票号才能使用

-wp_shangyao:
    {
        -role_status?injured:
        你服用了一包伤药
        {&你的伤好了一大半| 你的伤痊愈了~set_role_status(healthy)}
        -role_status?healthy:
        你很健康，不需要伤药
        ~add_item_num(wp_shangyao)
    }
-wp_jinchuangyao:
    {
        -role_status?injured:
        你服用了一包金创药
        {&神奇！你的伤痊愈了~set_role_status(healthy)}
        -role_status?healthy:
        你很健康，不需要服用金创药
    }
-wp_jieduyao:
    {
        -role_status?poisoning:
        你服用了一包解毒药
        你中的毒解了
        ~set_role_status(healthy)
        -role_status?healthy:
        你很健康，不需要解毒药
    }
-wp_pishuang:
    你服用了一包砒霜
    {&你感觉自己四肢无力了|你感觉自己胸口传来阵阵绞痛|你慢慢感觉自己不能呼吸了|你吐了一大口血，意识模糊不醒人事。。。->chapter_3.gn_restart}
    ~set_role_status(poisoning)
}
->->