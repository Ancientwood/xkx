/* 
*   定义物品key
*/
LIST items = 
//剧情
wp_qian,
wp_yupei,
wp_hulu, 
wp_yeguo,
wp_lxph_piaoju,
//药
wp_shangyao,
wp_jinchuangyao,
wp_jieduyao,
wp_pishuang,
//杂货
wp_shihe,
wp_zhuli,
wp_jitui,
//酒
wp_shaodaozi,
wp_zhuyeqing,
wp_dukangjiu,
wp_nverhong,
//武器
wp_tiechui,
wp_qgcj,
wp_longqj


/* 
*   通过物品key获取名称
*/
== function get_item_name(key)
{key:
//剧情
-wp_qian:银两
-wp_yupei:玉佩
-wp_hulu:葫芦
-wp_yeguo:野果
-wp_lxph_piaoju:柳秀票号的票据
//药
-wp_shangyao:伤药
-wp_jinchuangyao:金创药
-wp_jieduyao:解毒药
-wp_pishuang:砒霜
//杂货
-wp_shihe:食盒
-wp_zhuli:竹笠
-wp_jitui:鸡腿
//酒
-wp_shaodaozi:烧刀子
-wp_zhuyeqing:竹叶青
-wp_dukangjiu:杜康酒
-wp_nverhong:女儿红
//武器
-wp_tiechui:铁锤
-wp_qgcj:青钢长剑
-wp_longqj:龙泉剑
}

/* 通过物品id获取简介
*/
== function get_item_intro(key)
{key:
//剧情
-wp_yupei:一个神秘的玉佩。
-wp_hulu:
这是一个葫芦，有些许老旧，看起来却很干净，平时应该保护地很好。
葫芦底部还刻着 「柳秀山庄」 四个字。
看起来可以用来盛水装水喝。
-wp_yeguo:野外常见的果子，可以充饥。
-wp_lxph_piaoju:一张票据，上面盖着柳秀票号的印章，应该可以换不少钱
//药
-wp_shangyao:常见的药品，行走江湖必备良药，可治一般外伤
-wp_jinchuangyao:金创药，俗称刀尖药，专治跌打损伤，一敷变能止血
-wp_jieduyao:解毒药，江湖中常见的毒药都能缓解
-wp_pishuang:砒霜，具有蚀疮去腐，杀虫，劫痰，截疟之功效，在江湖中也另有妙用
//杂货
-wp_shihe:食盒
-wp_zhuli:竹笠
-wp_jitui:鸡腿
//酒
-wp_shaodaozi:烧刀子
-wp_zhuyeqing:竹叶青
-wp_dukangjiu:杜康酒
-wp_nverhong:女儿红
//武器
-wp_tiechui:铁锤
-wp_qgcj:青钢长剑
-wp_longqj:龙泉剑
}
