/* 
*   通过物品id获取数量
*/
VAR num_yupei = 0
VAR num_hulu = 0
VAR num_yeguo = 0

== function get_item_num(id)
{id:
-1:~return num_yupei
-2:~return num_hulu
-3:~return num_yeguo
}

== function add_item_num(id)
{id:
-1:~ num_yupei++
-2:~ num_hulu++
-3:~ num_yeguo++
}

== function del_item_num(id)
{id:
-1:~ num_yupei--
-2:~ num_hulu--
-3:~ num_yeguo--
}