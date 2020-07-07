/* 
*   通过物品id获取数量
*/
VAR num_qian = 0
VAR num_yupei = 0
VAR num_hulu = 0
VAR num_yeguo = 0
VAR num_lxsz_piaoju = 0
VAR num_shangyao = 0
VAR num_jinchuangyao = 0
VAR num_jieduyao = 0
VAR num_pishuang = 0


== function get_item_num(id)
{id:
-wp_qian:~return num_qian
-wp_yupei:~return num_yupei
-wp_hulu:~return num_hulu
-wp_yeguo:~return num_yeguo
-wp_lxph_piaoju:~return num_lxsz_piaoju
-wp_shangyao:~return num_shangyao
-wp_jinchuangyao:~return num_jinchuangyao
-wp_jieduyao:~return num_jieduyao
-wp_pishuang:~return num_pishuang
}

== function add_item_num(id)
{id:
-wp_qian:~ num_qian++
-wp_yupei:~ num_yupei++
-wp_hulu:~ num_hulu++
-wp_yeguo:~ num_yeguo++
-wp_lxph_piaoju:~ num_lxsz_piaoju++
-wp_shangyao:~ num_shangyao++
-wp_jinchuangyao:~ num_jinchuangyao++
-wp_jieduyao:~ num_jieduyao++
-wp_pishuang:~ num_pishuang++
}

== function del_item_num(id)
{id:
-wp_qian:~ num_qian--
-wp_yupei:~ num_yupei--
-wp_hulu:~ num_hulu--
-wp_yeguo:~ num_yeguo--
-wp_lxph_piaoju:~ num_lxsz_piaoju--
-wp_shangyao:~ num_shangyao--
-wp_jinchuangyao:~ num_jinchuangyao--
-wp_jieduyao:~ num_jieduyao--
-wp_pishuang:~ num_pishuang--
}

== function set_item_num(id, num)
~items+=id
{id:
-wp_qian:~ num_qian=num
}