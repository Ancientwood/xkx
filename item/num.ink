/* 
*   通过物品key获取数量
*/
VAR num_qian = 10000
VAR num_yupei = 0
VAR num_hulu = 0
VAR num_yeguo = 0
VAR num_lxsz_piaoju = 0
VAR num_shangyao = 0
VAR num_jinchuangyao = 0
VAR num_jieduyao = 0
VAR num_pishuang = 0
//杂货
VAR num_shihe = 0
VAR num_zhuli = 0
VAR num_jitui = 0
//酒
VAR num_shaodaozi = 0
VAR num_zhuyeqing = 0
VAR num_dukangjiu = 0
VAR num_nverhong = 0
//武器
VAR num_tiechui = 0
VAR num_qgcj = 0
VAR num_longq = 0


== function get_item_num(key)
{key:
-wp_qian:~return num_qian
-wp_yupei:~return num_yupei
-wp_hulu:~return num_hulu
-wp_yeguo:~return num_yeguo
-wp_lxph_piaoju:~return num_lxsz_piaoju
-wp_shangyao:~return num_shangyao
-wp_jinchuangyao:~return num_jinchuangyao
-wp_jieduyao:~return num_jieduyao
-wp_pishuang:~return num_pishuang
//杂货
-wp_shihe:~return num_shihe
-wp_zhuli:~return num_zhuli
-wp_jitui:~return num_jitui
//酒
-wp_shaodaozi:~return num_shaodaozi
-wp_zhuyeqing:~return num_zhuyeqing
-wp_dukangjiu:~return num_dukangjiu
-wp_nverhong:~return num_nverhong
//武器
-wp_tiechui:~return num_tiechui
-wp_qgcj:~return num_qgcj
-wp_longqj:~return num_longq
}

== function add_item_num(key)
{key:
-wp_qian:~ num_qian++
-wp_yupei:~ num_yupei++
-wp_hulu:~ num_hulu++
-wp_yeguo:~ num_yeguo++
-wp_lxph_piaoju:~ num_lxsz_piaoju++
-wp_shangyao:~ num_shangyao++
-wp_jinchuangyao:~ num_jinchuangyao++
-wp_jieduyao:~ num_jieduyao++
-wp_pishuang:~ num_pishuang++
//杂货
-wp_shihe:~ num_shihe++
-wp_zhuli:~ num_zhuli++
-wp_jitui:~ num_jitui++
//酒
-wp_shaodaozi:~ num_shaodaozi++
-wp_zhuyeqing:~ num_zhuyeqing++
-wp_dukangjiu:~ num_dukangjiu++
-wp_nverhong:~ num_nverhong++
//武器
-wp_tiechui:~ num_tiechui++
-wp_qgcj:~ num_qgcj++
-wp_longqj:~ num_longq++
}

== function del_item_num(key)
{key:
-wp_qian:~ num_qian--
-wp_yupei:~ num_yupei--
-wp_hulu:~ num_hulu--
-wp_yeguo:~ num_yeguo--
-wp_lxph_piaoju:~ num_lxsz_piaoju--
-wp_shangyao:~ num_shangyao--
-wp_jinchuangyao:~ num_jinchuangyao--
-wp_jieduyao:~ num_jieduyao--
-wp_pishuang:~ num_pishuang--
//杂货
-wp_shihe:~ num_shihe--
-wp_zhuli:~ num_zhuli--
-wp_jitui:~ num_jitui--
//酒
-wp_shaodaozi:~ num_shaodaozi--
-wp_zhuyeqing:~ num_zhuyeqing--
-wp_dukangjiu:~ num_dukangjiu--
-wp_nverhong:~ num_nverhong--
//武器
-wp_tiechui:~ num_tiechui--
-wp_qgcj:~ num_qgcj--
-wp_longqj:~ num_longq--
}

== function set_item_num(key, num)
~items+=key
{key:
-wp_qian:~ num_qian=num
}