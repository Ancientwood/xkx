/* 
*   通过物品id获取数量
*/
VAR num_yupei = 0
VAR num_hulu = 0
VAR num_yeguo = 0
VAR num_lxsz_piaoju = 0

== function get_item_num(id)
{id:
-wp_yupei:~return num_yupei
-wp_hulu:~return num_hulu
-wp_yeguo:~return num_yeguo
-wp_lxph_piaoju:~return num_lxsz_piaoju
}

== function add_item_num(id)
{id:
-wp_yupei:~ num_yupei++
-wp_hulu:~ num_hulu++
-wp_yeguo:~ num_yeguo++
-wp_lxph_piaoju:~ num_lxsz_piaoju++
}

== function del_item_num(id)
{id:
-wp_yupei:~ num_yupei--
-wp_hulu:~ num_hulu--
-wp_yeguo:~ num_yeguo--
-wp_lxph_piaoju:~ num_lxsz_piaoju--
}