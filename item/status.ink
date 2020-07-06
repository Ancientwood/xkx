/**
*   给物品添加特性
*/

//消耗特性
LIST item_status = 
consumables,        //消耗品
durable             //持久品


== function get_item_status(id)
{id:
-wp_yupei:~return (durable)
-wp_hulu:~return (durable)
-wp_yeguo:~return (consumables)
-wp_lxph_piaoju:~return (durable)
}

