/**
*   给物品添加特性
*/

//消耗特性
LIST item_status = 
consumables,            //消耗品
durable,                //持久品
money,                  //货币
loop_item,
hulu_full

== function get_item_status(key)
{key:
-wp_qian:~return (consumables, money)
-wp_yupei:~return (durable)
-wp_hulu:~return (loop_item)
-wp_yeguo:~return (consumables)
-wp_lxph_piaoju:~return (durable)
-wp_shangyao:~return (consumables)
-wp_jinchuangyao:~return (consumables)
-wp_jieduyao:~return (consumables)
-wp_pishuang:~return (consumables)
}

== function set_hulu_status(key)
{key:
-0:~item_status-=hulu_full
-1:~item_status+=hulu_full
}