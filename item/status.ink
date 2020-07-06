/**
*   给物品添加特性
*/

//消耗特性
LIST item_status = 
consumables,        //消耗品
durable             //持久品


== function get_item_status(id)
{id:
-1:~return (durable)
-2:~return (durable)
-3:~return (consumables)
-4:~return (durable)
}

