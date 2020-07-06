/* 
*   通过物品id获取数量
*/
VAR num_yupei = 0
VAR num_hulu = 0
VAR num_yeguo = 0
VAR num_lxsz_piaoju = 0

== function get_item_num(id)
{id:
-1:~return num_yupei
-2:~return num_hulu
-3:~return num_yeguo
-4:~return num_lxsz_piaoju
}

== function add_item_num(id)
{id:
-1:~ num_yupei++
-2:~ num_hulu++
-3:~ num_yeguo++
-4:~ num_lxsz_piaoju++
}

== function del_item_num(id)
{id:
-1:~ num_yupei--
-2:~ num_hulu--
-3:~ num_yeguo--
-4:~ num_lxsz_piaoju--
}