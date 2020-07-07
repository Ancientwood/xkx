/* 通过物品id获取物品使用后的回调信息
*/
== function get_item_use_callback(id)
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
}
