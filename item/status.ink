/**
*   给物品添加特性
*/

//消耗特性
LIST item_status = 
consumables,        //消耗品
durable,             //持久品
loop_item,
hulu_full

== function get_item_status(id)
{id:
-wp_yupei:~return (durable)
-wp_hulu:~return (loop_item)
-wp_yeguo:~return (consumables)
-wp_lxph_piaoju:~return (durable)
}

== function set_hulu_status(id)
{id:
-0:~item_status-=hulu_full
-1:~item_status+=hulu_full
}