/* 通过物品id获取物品使用后的回调信息
*/
== function get_item_use_callback(id)
{id:
-wp_yupei:你将玉佩贴紧眉心，突然一股暖流从玉佩中涌入身体，你感觉自己的精神不禁为之一振。
-wp_hulu:这是一个葫芦，有些许老旧，你晃了晃葫芦，什么也没发生。
-wp_yeguo:{role_status?hungry:
{&你拿起野果咬了几口，感觉肚子好受些了。|你咬了几口野果，味道还可以。|你吃野果吃饱了。{set_role_status(full)}}
}{role_status!?hungry:{&你已经吃饱了。|你已经吃太饱了，再也塞不下任何东西了。}}
-wp_lxph_piaoju:这个票据应该在柳秀票号才能使用
}
