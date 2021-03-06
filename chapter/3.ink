== chapter_3
#IMAGE:images/chapter_3.gif
#AUDIO:audio/jiuguan_1.mp3

->jzxd

=jzxd
· 集镇小道
    这里是个并不繁荣，却显得极为安详的小镇，每一个人脸上都挂着没有忧愁的笑容。
    路旁有垂柳，垂柳后有几间民房，风将路人的快乐透过纸窗吹入进来又吹散开去，纸窗和门随着柳条的舞动开开阖阖。
    东南边酒铺的喧闹声时时传来，而东北边的药铺则有药香传来，显得安静多了。
    小道上偶尔有三三两两的江湖豪客经过。
    
    -(action)
    + [往西走 · 杏子林]->xzl
    + [往南走 · 回坡上] ->chapter_2.top
    + [往北走 · 集镇小道北]->jzxdb
    + [往东走 · 赌坊]->cj_df
    + [往东北走 · 药铺] ->cj_yp
    + [往东南走 · 酒铺] ->jp
    + [查看【包裹】]
        ->list_item(->action)
=xzl
· 杏子林
    一阵风来，正是“风过吹斜阳”的景。杏叶已成片泛黄，整个杏子林，像是泼洒上一片橙橙的黄墨。
    你不难想到，如果时逢春风小渡，杏花醉红，成片成片的杏花海，是怎样的景象，夏日又会是怎样绿树成荫的繁茂。
    此时的枯黄，大概正是英雄迟暮的景了。
    若是你细心看去，一些杏树下有一些零散的脚印。
    杏林中有一条因马车常年驶过而留下的车辙痕迹，向西延伸通向扬州。
    而这些车辙印记则来自于杏子林南边的车马行。
    
        +[往南走 · 车马行] -> cmh
        +[回 · 集镇小道] -> jzxd

=cmh
· 车马行
    这里是一家马车行，挂着一个招牌，店里的马车停得满满当当的。

    -(action)
    +[和伙计对话]
        伙计：
        客官，我们这里送货乘车都可以，您是要去哪吗？
        ++我想去扬州
            伙计：好嘞，不过...您这样子，带够钱了吗？
        +++ 。。。
        ++++[再四处逛逛吧]->cmh
    +[查看【包裹】]
        ->list_item(->action)
    +[回 · 杏子林] -> xzl//杏子林

/*
*   场景: 赌坊
*/
=cj_df
· 赌坊
    赌坊里传来阵阵吆喝声，两三张桌子面前挤满了看热闹的人
    有人欢喜有人忧，一夜暴富有，一无所有的也有
    也有些人憋着一口气总想赌个回本，殊不知越陷越深
    赌坊老板盯着你，想着是不是下一个“金元宝”要进场了
    {get_item_num(wp_qian) == 0:
        你现在身无分文，还是先去别处逛逛吧。
        +[回到·集镇小道]
        ->jzxd
    -else:
        ->dh_df
    }
    
    
=dh_df
    -(action)
    +[玩【比大小】]
        ->gn_df
    +[玩【猜拳】]
        今日不开放，小兄弟下次再来吧
        ->dh_df
    +[查看【包裹】]
    ->list_item(->action)
    +[回到·集镇小道]
    ->jzxd

=gn_df
赌坊的伙计微笑的向你介绍到：
规则很简单，由庄家掷两枚骰子，你可以压大或者压小
一到六点是小，七到十二点是大
压对了庄家赔你的本钱
这位小兄弟要不要试试手气，搏一搏
    -(loop)
    +[试试手气]
        ~temp isYaDa = true
        ~temp df_money = 0
        --(ya_daxiao)
        ++压大
            ~isYaDa = true
        ++压小
            ~isYaDa = false
        ++[返回]
        ->loop
        --(ya_money)
            +++[{print_money(100)}] 你压了{print_money(100)}
            ~df_money=100
            +++[{print_money(500)}]你压了{print_money(500)}
            ~df_money=500
            +++[{print_money(1000)}]你压了{print_money(1000)}
            ~df_money=1000
            +++[{print_money(5000)}]你压了{print_money(5000)}
            ~df_money=5000
            +++[全压]
            {get_item_num(wp_qian)==0:
                {~你身上一文钱也没有。|你现在穷得叮当响。|去去去，穷鬼还来赌。|怎么又是你这个衰星。}
                你被赌坊打手赶了出去。
                ->jzxd
            -else:
                你压上了全部家当！
            }
            
            
            ~df_money=get_item_num(wp_qian)
            +++[返回]
            ->ya_daxiao
            ---
            {
                -get_item_num(wp_qian)<df_money:
                    你没有那么多钱可以压
                    ->ya_money
            }
            +++[开始掷骰子]
            ~temp point = RANDOM(1, 12)
            骰子的点数为 {point}
            {
            -(point<=6 and isYaDa) or (point>6 and !isYaDa):
                ~set_item_num(wp_qian, get_item_num(wp_qian) - df_money)
                你输了，失去了{print_money(df_money)}
             -(point<=6 and !isYaDa) or (point>6 and isYaDa):
                ~set_item_num(wp_qian, get_item_num(wp_qian) + df_money)
                你赢了！得到了{print_money(df_money)}
            }
       ->loop
    +[返回]
    ->dh_df
=jp
· 酒铺
    这家酒铺的老板是一名老汉。
	酒铺使用几根竹竿和一块旧布搭起来的，
	竹竿上还挂着一个牌子，如果下雨，老汉还要将仅有的一块油布搭在顶上。
	若是起风了，老汉还要将那块油布撑起来挡风。
	若是大雨挟着大风，那这酒铺就得暂时收摊了。
	还好这是个平静的集镇，狂风暴雨几乎不曾见。
	所以酒客也就很安稳地在这喝酒了。
	老汉坐在长凳上，一只胳膊倚在桌上，呆愣愣地望向西边的那片杏子林。
    你可以：

    -(action)
    * [看看牌子] 入眼便是一句对联：“开坛千君醉，上桌十里香”，正中间四个大字写着林家酒铺->action
    + [和老汉交谈]
    +[查看【包裹】]
        ->list_item(->action)

    + [走出酒铺] -> jzxd
    
    - 卖酒老汉用脖子上的毛巾抹了抹手，说道：这位小兄弟，
    请进请进，我们这儿的可都是好酒啊。
    - {&哦那我倒要瞧一瞧了|有哪些好酒？}
    你可以向老汉购买下列物品：->jp_jy
=jp_jy
    + [【烧刀子】({print_money(90)})]
    ~buy_item(90,"烧刀子",wp_shaodaozi)
    ->jp_jy

    + [【竹叶青】({print_money(200)})]
    ~buy_item(200,"竹叶青",wp_zhuyeqing)
    ->jp_jy
    
    + [【杜康酒】({print_money(230)})]
    ~buy_item(230,"杜康酒",wp_dukangjiu)
    ->jp_jy
    
    + [【女儿红】({print_money(300)})]
    ~buy_item(300,"女儿红",wp_nverhong)
    老汉{&微笑|热情}的继续问道，少侠还需要点什么吗？
        ++ [不需要了]老汉挥挥手“下次再来，少侠” 
        ->jzxd
        ++ [买点其它的] -> jp_jy
        ** [这儿还有鸡腿卖吗？] ->jitui_event
    ->jp_jy
    

+ [返回] 
->jp

=jitui_event
一般人老汉我不卖他，看你出手阔绰，今个儿就送你一个鸡腿
+[感谢老汉]
"多谢"，你拱了拱手说道
你从老汉那里获得了一个烤鸡腿。
~add_item(wp_jitui)
++ [买点其他的] 
-> jp_jy
++ [回 · 集镇小道]
->jzxd

/**
*   场景：药铺
*/
=cj_yp
· 药铺
    隔着街便又一阵阵清香传来，你的精神也不禁一振。
    药铺的门内坐着一位胡须花白的老者，正低头摆弄着草药。

    -(action)
    + [【买药】]
    ->yp_jy
    +[查看【包裹】]
    ->list_item(->action)
    +[回 · 集镇小道]
    ->jzxd

=yp_jy
    + [【伤药】({print_money(100)})]
    ~buy_item(100,"伤药",wp_shangyao)
    ->yp_jy


    +[【金创药】({print_money(200)})]
    ~buy_item(200,"金创药",wp_jinchuangyao)
    ->yp_jy

    +[【砒霜】({print_money(500)})]
    ~buy_item(500,"砒霜",wp_pishuang)
    ->yp_jy

    +[【解毒药】({print_money(150)})]
    ~buy_item(150,"解毒药",wp_jieduyao)
    ->yp_jy

    +[返回]
        ->cj_yp


=jzxdb
· 集镇小道北
   你到了一行不宽的道路，柳树越来越密。
   你细细嗅去，北边似乎飘来一阵桂花香气。
   你想大概就是那大户人家花园传来的了。
   西边叮叮当当的打铁声在宣告这个集镇并不是一味的慵懒，依然在为这个世外桃源输送兵铁。
   东边杂货铺的货物林林总总，五脏俱全，都堆到这边的路上了。
   
    + [往西走 · 铁匠铺] ->cj_tjp
    + [往南走 · 集镇小道] ->jzxd
    + [往北走 · 山庄大门 ] ->cj_szdm
    + [往东走 · 杂货铺] ->zhp

/**
*   场景：铁匠铺
*/
=cj_tjp
· 铁匠铺
    这是一家简陋的打铁铺，中心摆着一个火炉，炉火把四周照得一片通红，你一走进去就感到浑身火热。
	墙角堆满了已完工和未完工的菜刀、铁锤、铁棍、匕首、盔甲等物。
	一位铁匠满头大汗挥舞着铁锤，专心致志地在打铁。
	老胡说道：「欢迎这位小兄弟光临，请随便参观。」
-(action)

+{get_item_num(wp_qian)<100}[打铁帮工]
    ->gn_dgzq

+[购买【武器】]
->tjp_jy

+[查看【包裹】]
->list_item(->action)

+[回 · 集镇小道北]->jzxdb

=gn_dgzq
你进入了铁匠铺帮忙
忙活了一整天获得了 {print_money(100)}
~set_item_num(wp_qian, get_item_num(wp_qian) + 100)
->cj_tjp

=tjp_jy
+ [【铁锤】({print_money(100)})]
   老胡觉得你眼光不错，哈哈大笑道：“这把铁锤是平时打铁用剩下来的，虽然有些老旧，但挥动起来威力也是不俗，足够对付些小蟊贼了。”
    ~buy_item(100,"铁锤",wp_tiechui)
    ->tjp_jy
+ [【青钢长剑】({print_money(2050)})]
    ~buy_item(2050,"青钢长剑",wp_qgcj)
    ->tjp_jy
+ [【龙泉剑】({print_money(10000)})]
   老胡笑道：“好！宝剑配英雄，好，真好！”
    ~buy_item(10000,"龙泉剑",wp_longqj)
    ->tjp_jy
    
+[返回]
    ->cj_tjp

=zhp
· 杂货铺
    这是一家小小的杂货铺，大箱小箱堆满了一地，都是一些日常用品。
	杨掌柜懒洋洋地躺在一只躺椅上，招呼着过往行人。据说私底下他也卖一些贵重的东西。
	摊上立着一块招牌。

    +[【交易】]->zhp_jy

	+[回 · 集镇小道北]->jzxdb

=zhp_jy
你可以向杨永福购买下列物品：
+ [【食盒】({print_money(50)})]
    ~buy_item(50,"食盒",wp_shihe)
    ->zhp_jy
    
+ [【竹笠】({print_money(1050)})]
    ~buy_item(1050,"竹笠",wp_zhuli)
    ->zhp_jy
+ 返回->zhp
    
=cj_szdm
· 山庄大门 
    走进云雾，终见面目。
    你走到了远远便能望见，却望不真切的大宅子前。
    这大门不同于别处，没有玉砌精雕的大狮子，也没有执刀握枪的卫兵。
    门口只有两株巨大的岩桂花传来阵阵香气，和一个靓丽的丫鬟站在台阶上探头探脑，似乎是在等什么人。
    大门虽然看上去古朴，却不显呆板，仍能看出打磨得颇为雅致。
    只见上方古朴素雅用毛笔写了几个字

※==※==※==※==※==※

※&nbsp&nbsp柳&nbsp&nbsp秀&nbsp&nbsp山&nbsp&nbsp庄&nbsp&nbsp※

※==※==※==※==※==※
{
-not jq_knock_gate:
    ->jq_knock_gate
}    
->dh_szdm
=jq_knock_gate
你怔怔地站在那里不知所措，不如去敲敲门，找里面的人问问。
+ [敲门]
你轻轻地敲了敲门，只听吱地一声，丫鬟应声打开大门，她将门打开了一道缝，露出脑袋，转着乌黑的大眼睛，笑嘻嘻打量着你。
丫鬟身穿白纱挑线镶边裙走了过来。

{not jq_ask_yahuan_about:
你可以向丫鬟询问有关『葫芦』的事情：
+ 葫芦->jq_ask_yahuan_about
- else:
+ [敲门]
门开了，你走了进去。
->cj_gallery
}
=jq_ask_yahuan_about
你向丫鬟打听有关『葫芦』的消息。
丫鬟见你手中的葫芦，惊诧地「咦？」了一声。
她转而眉开眼笑，两手举起来，高兴地「呀！」地跳了起来！显得大为惊喜。
一转身跑到里面去了。

丫鬟往北离开。

丫鬟回到里面，乒地一声，把大门关上了。

你怔怔地站在那里不知所措，不如再去敲敲门，向她问个究竟

+ [敲门]
- 你轻轻地敲了敲门，只听吱地一声，丫鬟应声打开大门，
她将门打开了一道缝，露出脑袋，转着乌黑的大眼睛，笑嘻嘻打量着你。
丫鬟说道：「嘻嘻，我们山庄的……葫芦让你找了回来，刚刚太高兴，忘了引你进门，快进来吧。」
丫鬟身穿白纱挑线镶边裙走了过来。

+ [跟随]

-那丫鬟看你乖乖地跟着她，她轻移莲步，笑盈盈地向庄内跑去。

丫鬟往北离开。

+ [跟随]
->cj_gallery

=dh_szdm
    +[往北走·长廊]
    ->cj_gallery
    +[往南走·集镇小道北]
    ->jzxdb
    +[往西走·当铺]
    ->cj_dp
    +[往东走·票号]
    ->cj_ph

/**
*   场景：当铺
*/
=cj_dp
· 当铺
    你来到了当铺
    ->dh_dp
=dh_dp
    +[返回山庄大门]
    ->cj_szdm
    
/**
*   场景：票号
*/
=cj_ph
· 票号
    这是柳秀山庄下的一处资产，票号虽是老字号，但规模并不大，发行的银票也只能是柳秀山庄内通行。
    这会儿钱庄老板在盯着伙计查账。
    在对面的墙上挂了块牌子。
    如果你不懂这里的规矩，你可以看看牌子。
    ->dh_ph
=dh_ph
    -(action)
    {items?wp_lxph_piaoju:
        *[兑换银票]
        你获得了 10 两
        ~del_item(wp_lxph_piaoju)
        ~temp temp_money = get_item_num(wp_qian) + 10000
        ~set_item_num(wp_qian, temp_money)
        取了钱，赶紧去药铺买药疗伤吧。#CLASS:bold
        ->action
    }
    +[查看牌子]
    规矩一：一次存钱需10两以上
    规矩二：钱票两清，离店自负
    {print_money(100)}
    ->dh_ph
    +[返回山庄大门]
    ->cj_szdm
    +[查看【包裹】]
    ->list_item(->action)

/**
*   场景：长廊
*/
=cj_gallery
· 长廊
    你到了柳秀山庄的长廊。
    长廊南头是大门,大门的对面是一面『龙凤呈祥』的青石影壁，绕过影壁便是长长的回廊。
    回廊两侧柳树和竹子交映，廊檐雕着儒释道三家的古老故事，画风是粗线条的大写意。
    长廊的北头似乎有淡淡的岩桂花香飘了过来。
    面对着那气势恢宏的大门，你不禁想仔细的看看。
//逻辑判断
{
- jq_fllow_yh:
    ->dh_cl
}
->jq_fllow_yh

//丫鬟带路剧情
=jq_fllow_yh
    丫鬟说道：“小兄弟快些跟我走吧。”
    丫鬟往北离开。
    *(tag_gallery_fllow)[跟随着丫鬟]->cj_yghy
    
=dh_cl
    + [向北走· 岩桂花园] 
    -> cj_yghy
    + [向南走· 山庄大门] 
    -> cj_szdm
    
/*
*   岩桂花园
*/
=cj_yghy
· 岩桂花园
    柳秀山庄的岩桂花园可谓一处胜景。园内主要种植了岩桂花。
    海棠和茶花也点缀其间，海棠和茶花的味道均淡雅不馥的品类，所以四周全是岩桂花的香气。
    各类花开得并不十分繁盛，甚至在春日也不繁茂。
    但那一段段断断续续，若有若无的花香却是四时飘散弥漫在整个山庄。
//逻辑判断
{
- jq_yghy_fllow_yh:
    ->dh_yghy
}
->jq_yghy_fllow_yh

//丫鬟带路剧情
=jq_yghy_fllow_yh
    丫鬟说道：“过了这个花园，你就能见到我们庄主了。”
    丫鬟往北离开。
    *[跟随着丫鬟]->cj_lxszzt
    
//导航
=dh_yghy
    +[往北走·柳秀山庄正厅] 
    ->cj_lxszzt
    +[往南走·长廊]
    ->cj_gallery
/*
*   柳秀山庄正厅
*/
=cj_lxszzt
· 柳秀山庄正厅
    你走进此屋，并没有被风雅绰约的大厅所吸引。
    而是被端坐在大厅正中央的那位英雄投去了敬佩的目光。
    他没有锦衣玉袍，喝的茶也只是普通的碧螺春。
    样貌也不是鹤发童颜的世外高人模样。
    但他坐在那里垂目朝你望来你就觉得这个人和这个山庄已经融为一体了，他有它的故事，它有他的心事，能坐拥如此山庄的人，必然是胸怀抱负的英雄。
曾经叱咤江湖的辉煌不用多说，就在他的眼里，也在山庄里。

{
//跟随游览剧情
- jq_lxszzt_dtxx && not jq_lxszzt_fllow_ashu:
    ->jq_lxszzt_fllow_ashu
//比武完询问剧情
- jq_lxszzt_dtxx && jq_lxszzt_fllow_ashu:
    ->dh_lxszzt
}
//上交葫芦剧情
    *你不自觉地走上前去
    “庄主，这个人把那个葫芦找了回来……”
    丫鬟敛起了脸上的笑容，恭敬地对端坐在厅中的中年人道
    -
    
    *你朝着庄主，微微拱了拱手
    那庄主抬头微笑地望向你，盯着你看了半天，起立躬身做了个揖，说道：
    “这葫芦是一个庄丁去采药时遗失的，多谢小兄弟劳心找回。”
    丫鬟转过头来瞧着你，示意你赶紧把葫芦给这位庄主。
    -
    
    *[把【葫芦】交给游鲲翼]
    ~del_item(wp_hulu)
    游鲲翼起身恭敬接过葫芦，低头看了看，喃喃道：“剧饮千杯男儿事，杏子林中，商略平生义……“
    -
    *[。。。]
    ->jq_lxszzt_dtxx
    //询问剧情
    =jq_lxszzt_dtxx
    游鲲翼似乎对你言而不尽，看看能不能问个明白。
        -(dtxx_request_loop)
        *[这是哪] 
    这位壮士，在下初到贵宝地，不知这里有些什麽风土人情？
    游鲲翼说道：“这里……现在是柳秀山庄。”
        ->dtxx_request_loop
        *[庄主姓名]
    你向游鲲翼问道：敢问庄主尊姓大名？
    游鲲翼说道：“在下不才，正是柳秀山庄庄主游鲲翼，山庄附近百里皆由在下打点。”
        ->dtxx_request_loop
        *[葫芦]
    你向游鲲翼打听有关“葫芦”的消息。
    游鲲翼说道：“让小兄弟劳心了，这葫芦只是庄内仆人的用具。”
        ->dtxx_request_loop
        *[闯荡江湖]
    你向游鲲翼打听有关【闯荡江湖】的消息。
    游鲲翼说道：“小兄弟年纪轻轻不知这江湖险恶，可不要轻易踏入其中”
    “不过小兄弟能有这份勇气，实属不易。"
    "既是有缘人那请多盘桓几日，容在下招呼小兄弟几天”
    “阿姝，带这位小兄弟好好休息休息，先在庄里做些事吧。”
    -
        *[那多谢庄主盛情了]
    - 你见他如此盛情，便也不好推辞。
        *[跟着丫鬟阿姝，让她带你熟悉一下山庄吧]
    阿姝说道：“小兄弟，那我们现在就开始参观吧，我先带你去正厅的北面看下。”
    阿姝往北离开
    -
        *[跟随阿姝]
    ->cj_swt

//跟随阿姝(shū)剧情
=jq_lxszzt_fllow_ashu
阿姝往西离去
    *[跟随阿姝] -> cj_xxf

//比武完询问剧情
=dh_lxszzt
    -(action)
    +[询问]
        --(role_talk)
        ++[游鲲翼]
            +++[问候庄主]
                你向庄主问候道：“{~庄主近日可好|游庄主可有事吩咐}”
                游鲲翼说道：“{~多谢小兄弟关心，若是不嫌弃，可在庄内多住几天|近来倒是没什么事，小兄弟可在庄再逛逛}”
                ->role_talk
            //第一次比武
            ***(tag_dtxx)[打听消息]
                你向游鲲翼打听有关【闯荡江湖】的消息
                游鲲翼说道: “小兄弟，闯荡江湖得需一技傍身，我看你也有些功夫在身，敝庄尚武堂有几名武师，懂点三脚猫功夫，要不去跟他们切磋一下试试。”
                你跃跃欲试，已经迫不及待了！
                <>快去尚武堂找武师试试身手吧。#CLASS:bold
                -> role_talk
            //第一次比武完毕后再次来询问
            ***{jq_after_shoushang}[再次打听【闯荡江湖】的消息]
                你向游鲲翼打听有关【闯荡江湖】的消息。
                游鲲翼说道：“小兄弟切莫心急，庄里的武师甚是野蛮，你把伤养好再说吧。”
                “我在柳秀票号为小兄弟存了些银两，我这里有事脱不开身，麻烦小兄弟自行取了。”
                “再去药铺买些药服下吧。”#CLASS:bold
                
                你获得了 柳秀票号的票据
                ~add_item(wp_lxph_piaoju)
                快去柳秀票号看看游庄主给你存了多少钱，都取出来吧。#CLASS:bold
                ->role_talk
                
            //TODO 取钱，治疗后，武师学武剧情
            
            
            +++[返回]
                ->role_talk
            
        ++[阿姝]
            {阿姝对你吐了吐舌头|“有什么好看的”，阿姝朝你挺胸喊道|阿姝和你没什么好说的了}
            -> role_talk
        ++[返回]
            ->dh_lxszzt
    +[往北走 · 尚武堂] 
    -> cj_swt
    +[往南走· 岩桂花园] 
    -> cj_yghy
    +[往西走 · 西厢房] 
    -> cj_xxf
    +[往东走 · 东厢房] 
    -> cj_dxf
    +[查看【包裹】]
    ->list_item(->action)

/*
*  尚武堂地点
*/
=cj_swt
· 尚武堂
    你走进了一间开阔的武堂。纵横开阔几十丈，仿佛进入了一个开阔的广场。
    武馆内的兵器架上的武器应有尽有，木人几十具成矩形排开，梅花桩、八卦阵也有数处。
    几名劲装的武师在里面或练习、或印证功夫，呵呵有声。
    “尚武堂”三个遒劲的大字悬于高粱。
    这里明显比一般的武馆都要宏大，更有气势。

※==※==※==※==※==※
※&nbsp&nbsp&nbsp尚&nbsp&nbsp&nbsp武&nbsp&nbsp&nbsp堂&nbsp&nbsp&nbsp※
※==※==※==※==※==※

//逻辑判断
{not jq_intro_swt:
    //->swt_road
    ->jq_intro_swt
}
{not jq_biwu and tag_dtxx:
    ->jq_biwu
}
->dh_swt
//阿姝介绍尚武堂剧情
=jq_intro_swt
    *[四处看看]
    阿姝说道：“这里是尚武堂，用于习武和切磋的地方，你以后有机会的话可以找这里的武师求。
    再北面是山庄的藏书阁，藏书阁要有庄主的许可才可以进去，这次就不带你进去了。”
    阿姝往南离开。
    -
    *[跟随阿姝]
    ->cj_lxszzt

//尚武堂比武
=jq_biwu
    *[远处有几位武师]
    你来到几位武师面前双手抱拳说道：“听庄主说各位都是庄内的好手，特来此请教请教。”
    一位武师也抱拳说道:“好说，既是庄主招待的贵客，那必然是要认识认识，刀剑无眼，咱就比比拳脚功夫便是，点到为止即可。”
    -
    *[来吧]
    -
    “小兄弟，小心了”，说罢武师便摆起架势
    武师贴地窜出，身子离地仅一尺，头前脚后，一招「太乙无虚」，双掌向你的左臂击去！
    眼看来不及作出反应，你此时
        *[双手交叉抵挡]
            你慌忙架起双手抵挡这一招「太乙无虚」
        *[侧身躲避]
            你急忙侧身，发现为时已晚
        - 
        {
            -role_wx?wx_tycp:
            不得已你提气运气，「太乙 · 残篇」的暖流自发流转，护住周身要害。
            武师咦了一声，急忙收手道：“小兄弟你这功夫是从何处习得？”
            
            
            你回答道：
            ** 偶然习得
                你冷酷地回答道。
                武师愣了愣，“罢了，各人有各人的机缘...”
                天色已晚，这场比试消耗了你不少的体力，你觉得十分劳累，回厢房去休息一下吧。 
                ->dh_swt
            
            ** 从玉佩中领悟
            武师惊奇地问道：“怎样的玉佩，可否让我一瞧？”
            *** 拿出玉佩
            武师接过玉佩，翻来覆去得看了又看，手指不经意间在上面摩挲着。
            **** 这玉佩？
            你小心翼翼地问道。
            武师这才反应过来，“这玉佩...和庄内有关，哎具体的我也不能多说，你想知道的话还是去问庄主吧。”
            顿了顿又自言自语，“罢了，庄主他...”
            
            武师不舍地将玉佩还给你。
            *****接回玉佩
            天色已晚，你打算之后再去找庄主问问清楚。
            这场比试消耗了你不少的体力，你觉得十分劳累，先回厢房去休息一下吧。 
                ->dh_swt
            
            *** 不可以
            顿了顿又自言自语，“罢了，各人有各人的机缘...”
            天色已晚，这场比试消耗了你不少的体力，你觉得十分劳累，回厢房去休息一下吧。 
                ->dh_swt
                
            -else:
            结果「砰」地一声，你退了两步！
            你摇头晃脑、歪歪斜斜地站都站不稳，眼看就要倒在地上。
            **[认输]
                你向后退了几步，说道：“这场比试是我输了，佩服，佩服！”
                武师有些歉意开口说道：“这招一下子收不住手，让小兄弟你受伤，我这有些伤药，晚上你敷一下，第二天就能好”
                ~set_role_status(injured)
            ***[多谢壮士]
                你获得一包伤药
                ~add_item(wp_shangyao)
                天色已晚，这场比试消耗了你不少的体力，你觉得十分劳累，回厢房去休息一下吧。 
                    ->dh_swt
        }
        
        
//地图导航
=dh_swt
    +[往南走 · 柳秀山庄正厅]
    ->cj_lxszzt
    
/*
*  东厢房
*/
=cj_dxf
    {&前边可是姑娘家住的地方，可不好冒犯|还是别自找没趣了|还是去别的地方逛逛吧}
    ->dh_lxszzt

/**
*   场景：西厢房
*/
=cj_xxf
    · 西厢房
    这是柳秀山庄招待男客的厢房。
    房中有一张小床，锦被玉枕都是崭新的。
    床旁边是一红木的五斗橱，橱里放了一些生活用具。
    五斗橱旁是面铜镜，可以让你正衣冠。
    铜镜前方的方桌上有个翡翠的沉香炉，里面檀香冉冉，飘向窗外。
    窗台放了文竹的盆景。厢房的风格和别处一样，并不奢华，却处处透着风雅。
    
//逻辑判断是否已经介绍过
//TODO 重写
{
- jq_xxf_intro:
    ->dh_xxf
}

->jq_xxf_intro
//阿姝介绍西厢房剧情
=jq_xxf_intro
    阿姝说道："这里是招待男客休息的地方，你需要恢复体力的时候可以在这里睡觉."
    阿姝往北离开。
    *[继续跟随阿姝]
    
    阿姝说道：“那是男浴室，你先在洗个澡，然后来见我们庄主吧，我就先回去了。”
    说完阿姝就小跑着离去，好似生怕被玷污了眼睛。
    跑到一半，阿姝突然想到什么，转过头来说道：“记得不要再跟着我了！”
    
    ->cj_nys

//被武师打伤后休息完，准备再去找庄主的剧情提示
=jq_after_shoushang
    你气色恢复，虽然被武师打败了，仍有闯荡江湖，行侠仗义的雄心。
    去正厅找庄主，再问问他有关【闯荡江湖】的事.#CLASS:bold
    ->dh_xxf
//地图导航
=dh_xxf
    -(action)
    ->dh_xxf
    +[休息]
    ->gn_xiuxi
    +[往北走 · 男浴室] 
    ->cj_nys
    +[往东走 · 柳秀山庄正厅]
    ->cj_lxszzt
    +[查看【包裹】]
    ->list_item(->action)
    
//功能
=gn_xiuxi
    你往床上一躺，开始睡觉。
    不一会儿，你就进入了梦乡。
    +。。。
    -
    +。。。
    -
    +。。。
    -你一觉醒来，精神抖擞地活动了几下手脚。
    +[起床]
    {
    - not jq_after_shoushang:
        ->jq_after_shoushang
    }
    ->dh_xxf


/*
*  场景：男浴室
*/
=cj_nys
    · 男浴室
    这里是男子浴室，浴室很开阔，浴桶一字排开，摆了十余具，底下还有可以加热生火的小灶。
    看来山庄的男仆都在此处洗浴。
    
    +[洗澡] 
    你走向一桶烧好热水的浴桶，脱掉身上有些发臭的衣服
    跳进木桶中，水溅了一地。
    使劲搓着身上的灰，水一会就黑了。
    吩咐侍童打开木桶下的排水门，并再加一些热水。
    水温刚刚好，你全身放松了下来。
    你洗完了澡，感到精神百倍！

    ** 再去问问庄主关于闯荡江湖的事情吧。#CLASS:bold 
        ->cj_lxszzt

    ->cj_xxf
    
    +[返回 · 西厢房]
        ->cj_xxf

=gn_restart
-
+[...]
-
+[...]
-你渐渐睁开了眼睛,发现自己躺在西厢房的床上
感到全身无力，记不起发生了什么
你揉了揉脑袋，感觉自己好了一些  
+[你慢慢支撑着自己起了床]
->chapter_3.cj_xxf
# CLASS: end
TOBE CONTINUED...
-> END
