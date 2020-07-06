/**
*   给物品添加特性
*/

//消耗特性
LIST item_status = 
consumables,        //消耗品
durable,            //持久品
money               //货币


== function get_item_status(id)
{id:
-wp_qian:~return (money, consumables)
-wp_yupei:~return (durable)
-wp_hulu:~return (durable)
-wp_yeguo:~return (consumables)
-wp_lxph_piaoju:~return (durable)
}

