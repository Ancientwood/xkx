var storyContent = ﻿{"inkVersion":19,"root":[["\n","\n","\n",{"#":"author: Anc"},"ev","str","^第一回","/str","/ev",{"*":"0.c-0","flg":4},"ev","str","^第二回","/str","/ev",{"*":"0.c-1","flg":4},"ev","str","^第三回","/str","/ev",{"*":"0.c-2","flg":4},{"c-0":[{"#":"CLEAR"},{"->":"chapter_1"},"\n",{"->":"0.g-0"},{"#f":5}],"c-1":[{"#":"CLEAR"},{"->":"chapter_2"},"\n",{"->":"0.g-0"},{"#f":5}],"c-2":[{"#":"CLEAR"},{"->":"chapter_3"},"\n",{"->":"0.g-0"},{"#f":5}],"g-0":["done",{"#f":5}]}],"done",{"chapter_1":[["^一只云粉蝶飞来飞去，最终决定落在你脸上。","\n","^你努力睁开眼睛","\n","ev","str","^睁","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^晴天暖云像是一床被掀起来的锦被。","\n","^你站起身来，抖了抖身上的灰尘","\n","ev","str","^环顾四周","/str","/ev",{"*":".^.c-1","flg":4},{"c-1":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^见四处绿草如茵，黄色的野花和蒲公英点缀在这绿草床上。","\n","^不远处一条清澈的小溪缓缓流过。","\n","^耳边是风儿吹着绿草的沙沙声。","\n",["ev",{"^->":"chapter_1.0.g-1.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","str","^?","/str","/ev",{"*":".^.^.c-2","flg":22},{"s":["^走过去",{"->":"$r","var":true},null]}],["ev",{"^->":"chapter_1.0.g-1.7.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","str","^?","/str","/ev",{"*":".^.^.c-3","flg":22},{"s":["^躺一会",{"->":"$r","var":true},null]}],{"c-2":["ev",{"^->":"chapter_1.0.g-1.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"^ ","\n","^溪水清澈而凛冽，你用手捧着水，洗了一下脸庞。","\n","^看着水中的倒影，你不禁想： ",{"->":".^.^.^.^.choice"},"\n",{"#f":5}],"c-3":["ev",{"^->":"chapter_1.0.g-1.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.7.s"},[{"#n":"$r2"}],"^ ","\n","^感受着绿草的清香和四周的幽静，你的内心十分平静，但是渐渐地一些疑问也涌上了心头","\n",{"->":".^.^.^.^.choice"},{"#f":5}],"#f":5}]}],{"choice":[[["ev",{"^->":"chapter_1.choice.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^我是谁?",{"->":"$r","var":true},null]}],["ev",{"^->":"chapter_1.choice.0.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^我在哪?",{"->":"$r","var":true},null]}],{"*":".^.c-2","flg":24},{"c-0":["ev",{"^->":"chapter_1.choice.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],{"->":".^.^.^"},"\n",{"#f":5}],"c-1":["ev",{"^->":"chapter_1.choice.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],{"->":".^.^.^"},"\n",{"#f":5}],"c-2":[{"->":".^.^.^.^.think_out"},"\n",{"#f":5}]}],{"#f":1}],"think_out":[[["ev",{"^->":"chapter_1.think_out.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^算了，想不明白",{"->":"$r","var":true},null]}],"ev","str","^。。。","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["ev",{"^->":"chapter_1.think_out.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.g-0"},{"#f":5}],"c-1":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^蝴蝶缓缓飞过来，看着那只蝴蝶，你一时分不清楚是蝴蝶进入了你的梦里，亦或是你进入了蝴蝶的梦中。","\n","ev","str","^。。。","/str","/ev",{"*":".^.c-2","flg":4},{"c-2":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^视线跟随着蝴蝶移动，你的眼前仿佛出现了一本书，","\n","ev","str","^定睛一看","/str","/ev",{"*":".^.c-3","flg":4},{"c-3":["\n",{"->":".^.^.^.g-2"},{"#f":5}],"#f":5}],"g-2":["^金钩银画笔画苍劲有力，却是那《侠客行》：","\n",["ev",{"^->":"chapter_1.think_out.0.g-2.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-4","flg":2},{"s":["^赵客缦胡缨，吴钩霜雪明。",{"->":"$r","var":true},null]}],{"c-4":["ev",{"^->":"chapter_1.think_out.0.g-2.c-4.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-3"},{"#f":5}],"#f":5}],"g-3":[["ev",{"^->":"chapter_1.think_out.0.g-3.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-5","flg":2},{"s":["^银鞍照白马，飒沓如流星。",{"->":"$r","var":true},null]}],{"c-5":["ev",{"^->":"chapter_1.think_out.0.g-3.c-5.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-4"},{"#f":5}],"#f":5}],"g-4":[["ev",{"^->":"chapter_1.think_out.0.g-4.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-6","flg":2},{"s":["^十步杀一人，千里不留行。",{"->":"$r","var":true},null]}],{"c-6":["ev",{"^->":"chapter_1.think_out.0.g-4.c-6.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-5"},{"#f":5}],"#f":5}],"g-5":[["ev",{"^->":"chapter_1.think_out.0.g-5.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-7","flg":2},{"s":["^事了拂衣去，深藏身与名。",{"->":"$r","var":true},null]}],{"c-7":["ev",{"^->":"chapter_1.think_out.0.g-5.c-7.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-6"},{"#f":5}],"#f":5}],"g-6":["ev","str","^。。。","/str","/ev",{"*":".^.c-8","flg":4},{"c-8":["\n","^闲过信陵饮，脱剑膝前横。","\n","^将炙啖朱亥，持觞劝侯嬴。","\n","^三杯吐然诺，五岳倒为轻。","\n","^眼花耳热后，意气素霓生。","\n","^救赵挥金槌，邯郸先震惊。","\n","^千秋二壮士，烜赫大梁城。","\n",{"->":".^.^.^.g-7"},{"#f":5}],"#f":5}],"g-7":[["ev",{"^->":"chapter_1.think_out.0.g-7.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-9","flg":2},{"s":["^纵死侠骨香，不惭世上英。",{"->":"$r","var":true},null]}],{"c-9":["ev",{"^->":"chapter_1.think_out.0.g-7.c-9.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-8"},{"#f":5}],"#f":5}],"g-8":[["ev",{"^->":"chapter_1.think_out.0.g-8.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-10","flg":2},{"s":["^谁能书阁下，白首太玄经。",{"->":"$r","var":true},null]}],{"c-10":["ev",{"^->":"chapter_1.think_out.0.g-8.c-10.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-9"},{"#f":5}],"#f":5}],"g-9":["ev","str","^第二回","/str","/ev",{"*":".^.c-11","flg":4},{"c-11":[{"#":"CLEAR"},{"->":"chapter_2"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"#f":1}],"chapter_2":[{"->":".^.valley"},{"valley":[["^· 未明谷","\n","^山谷中绿树成荫，却不见有多么明媚的花开于此，但你仍能闻见了远远飘来的花香。","\n","^耳边听到了溪水叮咚的声音，原来不远处有一条蜿蜒的小溪，岸边似乎散落了一些物什。","\n","^在山谷的北侧有条陡峭的山坡隐隐可以通向外界。","\n","^「隆冬」: 夜幕低垂，星星眨着眼。","\n","^你现在又渴又饿，看看在这里能否找到些吃的喝的。","\n","^你可以:","\n","ev","str","^去小溪","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^去山坡","/str","/ev",{"*":".^.c-1","flg":4},["ev",{"^->":"chapter_2.valley.0.26.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^往西走 ",{"->":"$r","var":true},null]}],["ev",{"^->":"chapter_2.valley.0.27.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-3","flg":2},{"s":["^往南走 ",{"->":"$r","var":true},null]}],["ev",{"^->":"chapter_2.valley.0.28.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-4","flg":2},{"s":["^往东走 ",{"->":"$r","var":true},null]}],{"c-0":[{"->":".^.^.^.^.river"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.path"},"\n",{"#f":5}],"c-2":["ev",{"^->":"chapter_2.valley.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.26.s"},[{"#n":"$r2"}],{"->":".^.^.^.^.west"},"\n",{"#f":5}],"c-3":["ev",{"^->":"chapter_2.valley.0.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.27.s"},[{"#n":"$r2"}],{"->":".^.^.^.^.south"},"\n",{"#f":5}],"c-4":["ev",{"^->":"chapter_2.valley.0.c-4.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.28.s"},[{"#n":"$r2"}],{"->":".^.^.^.^.east"},"\n",{"#f":5}]}],{"#f":1}],"west":[["^· 乱石阵","\n","^你走过来，眼前顿升一片雾霭。迷雾之中，你隐约瞧见了几块林立的灰色乱石。","\n","^你刚想转身离开，却觉得似乎不对头：这些乱石看似杂乱无章，细看下发现似乎是按什么规律排成的。","\n","^有几块石头上有些文字。","\n","ev","str","^看向文字","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回到未明谷","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":[{"->":".^.^.^.^.look"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"look":[[["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^你聚精会神看向石头上的文字，只觉它似乎有魔法一般吸引注了你的精神，待你回过神来，明明只是一瞬间却好像过了许久。只觉得饥肠辘辘，脑海里却是一片空白，什么也没记住。",{"->":".^.^.23"},null],"s1":["pop","^你感觉身体十分虚弱，这些文字反复蕴含着大恐怖，不是现在的自己能观看的。",{"->":".^.^.23"},null],"s2":["pop","^你的头脑开始嗡嗡叫，眼冒金星，仿佛快要晕倒。",{"->":".^.^.23"},null],"#f":5}],"\n","ev","str","^再次看向文字","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回到未明谷","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":[{"->":".^.^.^"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"south":[["^· 树林","\n","^你到了一片鸟鸣清啾的树林。","\n","^林子里树木丛生，绿荫如茂，阳光却还是从树枝树叶的空隙间射下，纵在白昼，地上也如繁星点点。","\n","^一阵风吹来，枝杈里藏着的鸟儿一下子全冒出来，欢叫着争相飞上了天空。","\n","^你向林子深处望去，有些麋鹿和兔子穿梭其间，好不欢快！","\n","ev","str","^拾取野果","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回到未明谷","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":[{"->":".^.^.^.^.yeguo"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"yeguo":[[["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^你拿起野果咬了几口。",{"->":".^.^.23"},null],"s1":["pop","^你拿起野果咬了几口。",{"->":".^.^.23"},null],"s2":["pop","^你拿起野果咬了几口。你已经吃太饱了，再也塞不下任何东西了。",{"->":".^.^.23"},null],"#f":5}],"\n","ev","str","^再吃些野果","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回到未明谷","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":[{"->":".^.^.^"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"east":[["^· 青石桥头","\n","^这是一座断了的石桥。桥下流水缓缓流过，似乎有呜咽之声。","\n","^远处深草间有座坟，想那夜晚周遭必是磷炎抖动，凄凉无比。","\n","^不知道怎么，你一来到这里，似乎就有种英雄垂泪的无奈和悲凉之感。","\n","^前方已然无路可走。","\n","ev","str","^回到未明谷","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"river":[["^这是一条清澈的小溪，也许你可以拿起地上的葫芦，研究下用来盛溪水喝。","\n",["ev",{"^->":"chapter_2.river.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^拿起葫芦",{"->":"$r","var":true},null]}],"ev","str","^回到未明谷","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["ev",{"^->":"chapter_2.river.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],{"->":".^.^.^.^.get_hulu"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"get_hulu":[["^这是一个葫芦，看来可以用来盛溪水和饮用。","\n","^你仔细一看，葫芦底部还刻着 「柳秀山庄」 四个字。","\n","ev","str","^盛溪水","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^饮用","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":[{"->":".^.^.^.^.fill_hulu"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.drink_hulu"},"\n",{"#f":5}]}],{"#f":1}],"fill_hulu":[["^你将葫芦装满清水。","\n","ev","str","^饮用","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":".^.^.^.^.drink_hulu"},"\n",{"#f":5}]}],{"#f":1}],"drink_hulu":[["ev",{"CNT?":".^.^.^.fill_hulu"},"!","/ev",[{"->":".^.b","c":true},{"b":["\n","^你举起葫芦摇了摇，里面却是空空如也。","\n",{"->":".^.^.^.5"},null]}],"nop","\n","ev",{"CNT?":".^.^.^.fill_hulu"},"/ev",[{"->":".^.b","c":true},{"b":["\n",["ev","visit",3,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"nop",{"s0":["pop","^你拿起葫芦咕噜噜地喝了几口清水",{"->":".^.^.29"},null],"s1":["pop","^你拿起葫芦咕噜噜地喝了几口清水",{"->":".^.^.29"},null],"s2":["pop","^你拿起葫芦咕噜噜地喝了几口清水",{"->":".^.^.29"},null],"s3":["pop","^你已经喝太多了，再也灌不下一滴水了",{"->":".^.^.29"},null],"#f":5}],"\n",{"->":".^.^.^.11"},null]}],"nop","\n","ev","str","^盛溪水","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^饮用","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^回到未明谷","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":[{"->":".^.^.^.^.fill_hulu"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^"},"\n",{"#f":5}],"c-2":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"path":[["^这是一段陡峭的山坡，应该可以向上攀爬出去。","\n","ev","str","^攀爬","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回到未明谷","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":[{"->":".^.^.^.^.climb"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"climb":["ev",{"CNT?":".^.^.yeguo"},"!",{"CNT?":".^.^.drink_hulu"},"!","&&","/ev",[{"->":".^.b","c":true},{"b":[{"->":".^.^.^.^.hungry_and_thirsty"},{"->":".^.^.^.8"},null]}],"nop","\n","ev",{"CNT?":".^.^.yeguo"},"!","/ev",[{"->":".^.b","c":true},{"b":[{"->":".^.^.^.^.hungry"},{"->":".^.^.^.15"},null]}],"nop","\n","ev",{"CNT?":".^.^.drink_hulu"},"!","/ev",[{"->":".^.b","c":true},{"b":[{"->":".^.^.^.^.thirsty"},{"->":".^.^.^.22"},null]}],"nop","\n",["ev","visit",3,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"nop",{"s0":["pop","^你用尽全力向上攀爬。 ",{"->":".^.^.^.^.path"},{"->":".^.^.29"},null],"s1":["pop","^你用尽全力向上攀爬。 ",{"->":".^.^.^.^.path"},{"->":".^.^.29"},null],"s2":["pop","^你用尽全力向上攀爬。 ",{"->":".^.^.^.^.path"},{"->":".^.^.29"},null],"s3":["pop","^你费了九牛二虎之力，终于爬了上来。发觉眼前竟又是一片开阔之处！ ",{"->":".^.^.^.^.top"},{"->":".^.^.29"},null],"#f":5}],"\n",{"#f":1}],"hungry_and_thirsty":[[["ev","visit",1,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^你现在又渴又饿，看看回谷里能否找到些吃的喝的再来攀爬。",{"->":".^.^.17"},null],"s1":["pop","^你现在又渴又饿,实在没有力气爬过这个山坡。",{"->":".^.^.17"},null],"#f":5}],"\n","ev","str","^回到未明谷","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"hungry":[[["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^你感到饥肠辘辘，没有力气往上爬，或许该找些吃的。",{"->":".^.^.23"},null],"s1":["pop","^你感到饥肠辘辘，实在没有力气往上爬了，或许该去树林找些吃的。",{"->":".^.^.23"},null],"s2":["pop","^树林里或许有些野果可以吃。",{"->":".^.^.23"},null],"#f":5}],"\n","ev","str","^回到未明谷","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"thirsty":[[["ev","visit",1,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^你感到口干舌燥，或许该找些喝的。",{"->":".^.^.17"},null],"s1":["pop","^你感到口干舌燥，浑身无力，或许该去溪边喝些水。",{"->":".^.^.17"},null],"#f":5}],"\n","ev","str","^回到未明谷","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":".^.^.^.^.valley"},"\n",{"#f":5}]}],{"#f":1}],"top":[["^这是一段较为平缓的山路，你往山路下一望，吓得缩了回来，下面明显较为陡峭。","\n","^往北走，像是有个集镇，人头攒动。","\n","^使劲往北望去，云山雾罩之下，似乎有户大户人家。","\n","^这里唯一的出口是北边。","\n",["ev",{"^->":"chapter_2.top.0.8.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^往北走",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"chapter_2.top.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.8.s"},[{"#n":"$r2"}],{"->":".^.^.^.^.north"},"\n",{"#f":5}]}],{"#f":1}],"north":["^你看着怀里的葫芦，心想 「柳秀山庄」 会不会就在前面附近的地方。","\n","^怀揣着这些心思，你慢慢走下了小道。","\n",{"->":".^.^.go_chapter_3"},{"#f":1}],"go_chapter_3":[["ev","str","^第三回","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"#":"CLEAR"},{"->":"chapter_3"},"\n",{"#f":5}]}],{"#f":1}],"#f":1}],"chapter_3":[{"->":"jzxd"},{"#f":1}],"jzxd":[["^· 集镇小道","\n","^这里是个并不繁荣，却显得极为安详的小镇，每一个人脸上都挂着没有忧愁的笑容。","\n","^路旁有垂柳，垂柳后有几间民房，风将路人的快乐透过纸窗吹入进来又吹散开去，纸窗和门随着柳条的舞动开开阖阖。","\n","^东南边酒铺的喧闹声时时传来，而东北边的药铺则有药香传来，显得安静多了。","\n","^小道上偶尔有三三两两的江湖豪客经过。","\n","^你可以:","\n","ev","str","^往西走","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回坡上","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^往北走","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^往东北走","/str","/ev",{"*":".^.c-3","flg":4},"ev","str","^往东南走","/str","/ev",{"*":".^.c-4","flg":4},{"c-0":[{"->":"jzxd.xzl"},"\n",{"#f":5}],"c-1":["^ ",{"->":"chapter_2.top"},"\n",{"#f":5}],"c-2":[{"->":"jzxd.jzxdb"},"\n",{"#f":5}],"c-3":["^ ",{"->":"jzxd.jp"},"\n",{"#f":5}],"c-4":["^ ",{"->":"jzxd.yp"},"\n",{"#f":5}]}],{"xzl":[["^· 杏子林","\n","^一阵风来，正是“风过吹斜阳”的景。杏叶已成片泛黄，整个杏子林，像是泼洒上一片橙橙的黄墨。","\n","^你不难想到，如果时逢春风小渡，杏花醉红，成片成片的杏花海，是怎样的景象，夏日又会是怎样绿树成荫的繁茂。","\n","^此时的枯黄，大概正是英雄迟暮的景了。","\n","^若是你细心看去，一些杏树下有一些零散的脚印。","\n","^杏林中有一条因马车常年驶过而留下的车辙痕迹，向西延伸通向扬州。","\n","^而这些车辙印记则来自于杏子林南边的车马行。","\n","^你可以:","\n","ev","str","^往南走","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回集镇小道","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ ",{"->":"jzxd.cmh"},"\n",{"#f":5}],"c-1":["^ ",{"->":"jzxd"},"\n",{"#f":5}]}],{"#f":1}],"cmh":[["^· 车马行","\n","^这里是一家马车行，挂着一个招牌，店里的马车停得满满当当的。","\n","^你可以：","\n","ev","str","^和伙计对话","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^回杏子林","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["\n","^伙计：","\n","^客官，我们这里送货乘车都可以，您是要去哪吗？","\n",[["ev",{"^->":"jzxd.cmh.0.c-0.5.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^我想去扬州",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"jzxd.cmh.0.c-0.5.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^伙计：好嘞，不过...您这样子，带够钱了吗？","\n",[["ev",{"^->":"jzxd.cmh.0.c-0.5.c-0.9.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^。。。",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"jzxd.cmh.0.c-0.5.c-0.9.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",["ev","str","^再四处逛逛吧","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":"jzxd.cmh"},"\n",{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":5}],"c-1":["^ ",{"->":"jzxd.xzl"},"\n",{"#f":5}]}],{"#f":1}],"jp":["^· 酒铺","\n","^这家酒铺的老板是一名老汉。","\n","^酒铺使用几根竹竿和一块旧布搭起来的，","\n","^竹竿上还挂着一个牌子，如果下雨，老汉还要将仅有的一块油布搭在顶上。","\n","^若是起风了，老汉还要将那块油布撑起来挡风。","\n","^若是大雨挟着大风，那这酒铺就得暂时收摊了。","\n","^还好这是个平静的集镇，狂风暴雨几乎不曾见。","\n","^所以酒客也就很安稳地在这喝酒了。","\n","^老汉坐在长凳上，一只胳膊倚在桌上，呆愣愣地望向西边的那片杏子林。","\n","^你可以：","\n",{"->":"jzxd.jp_choise"},{"#f":1}],"jp_choise":[["ev","str","^看看牌子","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^和老汉交谈","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^走出酒铺","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":["^ 入眼便是一句对联：“开坛千君醉，上桌十里香”，正中间四个大字写着林家酒铺",{"->":".^.^.^"},"\n",{"->":".^.^.g-0"},{"#f":5}],"c-1":["\n",{"->":".^.^.g-0"},{"#f":5}],"c-2":["^ ",{"->":"jzxd"},"\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^卖酒老汉用脖子上的毛巾抹了抹手，说道：这位小兄弟，","\n","^请进请进，我们这儿的可都是好酒啊。","\n",[["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^哦那我倒要瞧一瞧了",{"->":".^.^.17"},null],"s1":["pop","^有哪些好酒？",{"->":".^.^.17"},null],"#f":5}],"\n","^你可以向老汉购买下列物品： ",{"->":"jzxd.jp_list"},"\n",{"#f":5,"#n":"g-1"}],{"#f":5}]}],{"#f":1}],"jp_list":[["ev","str","^烧刀子(九十文钱)","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^竹叶青(两百文钱)","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^杜康酒(两百三十文钱)","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^女儿红(三百文钱)","/str","/ev",{"*":".^.c-3","flg":4},"ev","str","^算了，还是下次再来吧","/str","/ev",{"*":".^.c-4","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"c-1":["\n",{"->":".^.^.g-0"},{"#f":5}],"c-2":["\n",{"->":".^.^.g-0"},{"#f":5}],"c-3":["\n",{"->":".^.^.g-0"},{"#f":5}],"c-4":["^ ",{"->":"jzxd.jp_out"},"\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["ev","str","^你现在身无分文，还是先去别处逛逛吧。","/str","/ev",{"*":".^.c-5","flg":4},{"c-5":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["ev","str","^回集镇小道","/str","/ev",{"*":".^.c-6","flg":4},{"c-6":[{"->":"jzxd"},"\n",{"->":".^.^.^.g-2"},{"#f":5}],"#f":5}],"g-2":["^你买了下了","ev",{"CNT?":".^.^.c-0"},"/ev",[{"->":".^.b","c":true},{"b":["^烧刀子",{"->":".^.^.^.5"},null]}],"nop","ev",{"CNT?":".^.^.c-1"},"/ev",[{"->":".^.b","c":true},{"b":["^竹叶青",{"->":".^.^.^.10"},null]}],"nop","ev",{"CNT?":".^.^.c-2"},"/ev",[{"->":".^.b","c":true},{"b":["^杜康酒",{"->":".^.^.^.15"},null]}],"nop","ev",{"CNT?":".^.^.c-3"},"/ev",[{"->":".^.b","c":true},{"b":["^女儿红",{"->":".^.^.^.20"},null]}],"nop","\n","^老汉",["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^微笑",{"->":".^.^.17"},null],"s1":["pop","^热情",{"->":".^.^.17"},null],"#f":5}],"^的继续问道，少侠还需要点什么吗？","\n","ev","str","^不需要","/str","/ev",{"*":".^.c-7","flg":4},"ev","str","^买点其它的","/str","/ev",{"*":".^.c-8","flg":4},"ev","str","^这儿还有鸡腿卖吗？","/str","/ev",{"*":".^.c-9","flg":20},{"c-7":["^ ",{"->":"jzxd.jp_out"},"\n",{"#f":5}],"c-8":["^ ",{"->":".^.^.^.^"},"\n",{"#f":5}],"c-9":["^ ",{"->":"jzxd.jitui_event"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"jitui_event":["^一般人老汉我不卖他，看你出手阔绰，今个儿就送你一个鸡腿","\n","^\"多谢\"，你拱了拱手说道","\n","^你从老汉那里获得了一个烤鸡腿。","\n",{"->":"jzxd.jp_out"},{"#f":1}],"jp_out":[[["^老汉挥挥手“下次再来，少侠”","\n","ev","str","^回集镇小道","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":"jzxd"},"\n",{"#f":5}],"#f":5,"#n":"g-0"}],null],{"#f":1}],"yp":[["^· 药铺","\n","^隔着街便又一阵阵清香传来，你的精神也不禁一振。","\n","^药铺的门内坐着一位胡须花白的老者，正低头摆弄着草药。","\n","ev","str","^你现在身无分文，还是先去别处逛逛吧。","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["ev","str","^回集镇小道","/str","/ev",{"*":".^.c-1","flg":4},{"c-1":["\n",{"->":"jzxd"},{"#f":5}],"#f":5}]}],{"#f":1}],"jzxdb":[["^· 集镇小道北","\n","^你到了一行不宽的道路，柳树越来越密。","\n","^你细细嗅去，北边似乎飘来一阵桂花香气。","\n","^你想大概就是那大户人家花园传来的了。","\n","^西边叮叮当当的打铁声在宣告这个集镇并不是一味的慵懒，依然在为这个世外桃源输送兵铁。","\n","^东边杂货铺的货物林林总总，五脏俱全，都堆到这边的路上了。","\n","ev","str","^往西走","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^往南走","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^往北走","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^往东走","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ",{"->":"jzxd.tjp"},"\n",{"#f":5}],"c-1":["^ ",{"->":"jzxd"},"\n",{"#f":5}],"c-2":["^ ",{"->":"jzxd.szdm"},"\n",{"#f":5}],"c-3":["^ ",{"->":"jzxd.zhp"},"\n",{"#f":5}]}],{"#f":1}],"tjp":[["^· 铁匠铺","\n","^这是一家简陋的打铁铺，中心摆着一个火炉，炉火把四周照得一片通红，你一走进去就感到浑身火热。","\n","^墙角堆满了已完工和未完工的菜刀、铁锤、铁棍、匕首、盔甲等物。","\n","^一位铁匠满头大汗挥舞着铁锤，专心致志地在打铁。","\n","^这里唯一的出口是东边。","\n","^铁匠 老胡","\n","^老胡说道：「欢迎这位小兄弟光临，请随便参观。」","\n","ev","str","^你现在身无分文，还是先去别处逛逛吧。","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["ev","str","^回集镇小道北","/str","/ev",{"*":".^.c-1","flg":4},{"c-1":[{"->":"jzxd.jzxdb"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"zhp":[["^· 杂货铺","\n","^这是一家小小的杂货铺，大箱小箱堆满了一地，都是一些日常用品。","\n","^杨掌柜懒洋洋地躺在一只躺椅上，招呼着过往行人。据说私底下他也卖一些贵重的东西。","\n","^摊上立着一块招牌。","\n","ev","str","^你现在身无分文，还是先去别处逛逛吧。","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["ev","str","^回集镇小道北","/str","/ev",{"*":".^.c-1","flg":4},{"c-1":[{"->":"jzxd.jzxdb"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"szdm":[["^· 山庄大门","\n","^走进云雾，终见面目。","\n","^你走到了远远便能望见，却望不真切的大宅子前。","\n","^这大门不同于别处，没有玉砌精雕的大狮子，也没有执刀握枪的卫兵。","\n","^门口只有两株巨大的岩桂花传来阵阵香气，和一个靓丽的丫鬟站在台阶上探头探脑，似乎是在等什么人。","\n","^大门虽然看上去古朴，却不显呆板，仍能看出打磨得颇为雅致。","\n","^你可以看看","\n","ev","str","^大门","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":"jzxd.door"},"\n",{"#f":5}]}],{"#f":1}],"door":[["^只见上方古朴素雅用毛笔写了几个字","\n","^※==※==※==※==※==※","\n","^※=柳=※秀=※山=※庄=※","\n","^※==※==※==※==※==※","\n","^你怔怔地站在那里不知所措，不如去敲敲门，找里面的人问问。","\n","ev","str","^敲门","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":[{"->":"jzxd.knock_gate"},"\n",{"#f":5}]}],{"#f":1}],"knock_gate":["^你轻轻地敲了敲门，只听吱地一声，丫鬟应声打开大门，她将门打开了一道缝，露出脑袋，转着乌黑的大眼睛，笑嘻嘻打量着你。","\n","^丫鬟身穿白纱挑线镶边裙走了过来。","\n","ev",{"CNT?":"jzxd.ask_yahuan_about"},"!","/ev",[{"->":".^.b","c":true},{"b":["\n","^你可以向丫鬟询问有关『葫芦』的事情：","\n",["ev",{"^->":"jzxd.knock_gate.8.b.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^葫芦",{"->":"$r","var":true},null]}],{"->":".^.^.^.10"},{"c-0":["ev",{"^->":"jzxd.knock_gate.8.b.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],{"->":"jzxd.ask_yahuan_about"},"\n",{"#f":5}]}]}],[{"->":".^.b"},{"b":["\n","ev","str","^敲门","/str","/ev",{"*":".^.c-0","flg":4},{"->":".^.^.^.10"},{"c-0":["\n","^门开了，你走了进去。","\n",{"->":"jzxd.gallery"},{"#f":5}]}]}],"nop","\n",{"#f":1}],"ask_yahuan_about":[["^你向丫鬟打听有关『葫芦』的消息。","\n","^丫鬟见你手中的葫芦，惊诧地「咦？」了一声。","\n","^她转而眉开眼笑，两手举起来，高兴地「呀！」地跳了起来！显得大为惊喜。","\n","^一转身跑到里面去了。","\n","^丫鬟往北离开。","\n","^丫鬟回到里面，乒地一声，把大门关上了。","\n","^你怔怔地站在那里不知所措，不如再去敲敲门，向她问个究竟","\n","ev","str","^敲门","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^你轻轻地敲了敲门，只听吱地一声，丫鬟应声打开大门，","\n","^她将门打开了一道缝，露出脑袋，转着乌黑的大眼睛，笑嘻嘻打量着你。","\n","^丫鬟说道：「嘻嘻，我们山庄的……葫芦让你找了回来，刚刚太高兴，忘了引你进门，快进来吧。」","\n","^丫鬟身穿白纱挑线镶边裙走了过来。","\n","ev","str","^跟随","/str","/ev",{"*":".^.c-1","flg":4},{"c-1":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^那丫鬟看你乖乖地跟着她，她轻移莲步，笑盈盈地向庄内跑去。","\n","^丫鬟往北离开。","\n","ev","str","^跟随","/str","/ev",{"*":".^.c-2","flg":4},{"c-2":[{"->":"jzxd.gallery"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"gallery":[["^· 长廊","\n","^你到了柳秀山庄的长廊。","\n","^长廊南头是大门,大门的对面是一面『龙凤呈祥』的青石影壁，绕过影壁便是长长的回廊。","\n","^回廊两侧柳树和竹子交映，廊檐雕着儒释道三家的古老故事，画风是粗线条的大写意。","\n","^长廊的北头似乎有淡淡的岩桂花香飘了过来。","\n","^面对着那气势恢宏的大门，你不禁想仔细的看看。","\n","^丫鬟往北离开。","\n","ev","str","^跟随着丫鬟","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^向北走","/str",{"CNT?":".^.c-0"},"/ev",{"*":".^.c-1","flg":5},{"c-0":[{"->":"jzxd.lxszzt"},"\n","^你可以：","\n",{"#f":5}],"c-1":["^ ","\n",{"->":"jzxd.lxszzt"},{"#f":5}]}],{"#f":1}],"lxszzt":[["^· 柳秀山庄正厅","\n","^你走进此屋，并没有被风雅绰约的大厅所吸引。","\n","^而是被端坐在大厅正中央的那位英雄投去了敬佩的目光。","\n","^他没有锦衣玉袍，喝的茶也只是普通的碧螺春。","\n","^样貌也不是鹤发童颜的世外高人模样。","\n","^但他坐在那里垂目朝你望来你就觉得这个人和这个山庄已经融为一体了，他有它的故事，它有他的心事，能坐拥如此山庄的人，必然是胸怀抱负的英雄。","\n","^曾经叱咤江湖的辉煌不用多说，就在他的眼里，也在山庄里。","\n","ev",{"CNT?":"jzxd.dtxx"},"/ev",[{"->":".^.b","c":true},{"b":["\n",{"->":"jzxd.lxszzt_road"},{"->":".^.^.^.18"},null]}],"nop","\n",["ev",{"^->":"jzxd.lxszzt.0.20.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^你不自觉地走上前去",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"jzxd.lxszzt.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.20.s"},[{"#n":"$r2"}],"\n","^“庄主，这个人把那个葫芦找了回来……”","\n","^丫鬟敛起了脸上的笑容，恭敬地对端坐在厅中的中年人道","\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":[["ev",{"^->":"jzxd.lxszzt.0.g-0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^你朝着庄主，微微躬了下身子",{"->":"$r","var":true},null]}],{"c-1":["ev",{"^->":"jzxd.lxszzt.0.g-0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^那庄主抬头微笑地望向你，盯着你看了半天，起立躬身做了个揖，说道：","\n","^“这葫芦是一个庄丁去采药时遗失的，多谢小兄弟劳心找回。”","\n","^丫鬟转过头来瞧着你，示意你赶紧把葫芦给这位庄主。","\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["ev","str","^把葫芦交给游鲲翼","/str","/ev",{"*":".^.c-2","flg":20},{"c-2":["\n","^游鲲翼起身恭敬接过葫芦，低头看了看，喃喃道：“剧饮千杯男儿事，杏子林中，商略平生义……“","\n",{"->":".^.^.^.g-2"},{"#f":5}],"#f":5}],"g-2":["ev","str","^。。。","/str","/ev",{"*":".^.c-3","flg":20},{"c-3":["\n",{"->":"jzxd.dtxx"},{"#f":5}],"#f":5}]}],{"#f":1}],"dtxx":[["^游鲲翼似乎对你言而不尽，看看能不能问个明白。","\n",["ev","str","^这是哪","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^庄主姓名","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^葫芦","/str","/ev",{"*":".^.c-2","flg":20},"ev","str","^闯荡江湖","/str","/ev",{"*":".^.c-3","flg":20},{"c-0":["^ ","\n","^这位壮士，在下初到贵宝地，不知这里有些什麽风土人情？","\n","^游鲲翼说道：“这里……现在是柳秀山庄。”","\n",{"->":".^.^"},{"->":".^.^.^.g-0"},{"#f":5}],"c-1":["\n","^你向游鲲翼问道：敢问庄主尊姓大名？","\n","^游鲲翼说道：“在下不才，正是柳秀山庄庄主游鲲翼，山庄附近百里皆由在下打点。”","\n",{"->":".^.^"},{"->":".^.^.^.g-0"},{"#f":5}],"c-2":["\n","^你向游鲲翼打听有关“葫芦”的消息。","\n","^游鲲翼说道：“让小兄弟劳心了，这葫芦只是庄内仆人的用具。”","\n",{"->":".^.^"},{"->":".^.^.^.g-0"},{"#f":5}],"c-3":["\n","^你向游鲲翼打听有关“闯荡江湖”的消息。","\n","^游鲲翼说道：“小兄弟年纪轻轻不知这江湖险恶，可不要轻易踏入其中”","\n","^“不过小兄弟能有这份勇气，实属不易。既是有缘人那请多盘桓几日，容在下招呼小兄弟几天。”","\n","^“阿姝，带这位小兄弟好好休息休息，先在庄里做些事吧。”","\n",{"->":".^.^.^.g-0"},{"#f":5}],"#f":5,"#n":"dtxx_request_loop"}],{"g-0":["ev","str","^那多谢庄主盛情了","/str","/ev",{"*":".^.c-4","flg":20},{"c-4":["\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^你见他如此盛情，便也不好推辞，跟着丫鬟阿姝，让她带你熟悉一下山庄吧。","\n","ev","str","^跟随阿姝","/str","/ev",{"*":".^.c-5","flg":20},{"c-5":["\n","^阿姝说道：“小兄弟，那我们现在就开始参观吧，我先带你去正厅的北面看下。”","\n","^阿姝往北离开","\n",{"->":"jzxd.swt"},{"#f":5}],"#f":5}]}],{"#f":1}],"lxszzt_road":[["ev","str","^往北走","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"jzxd.end"},{"#f":5}]}],{"#f":1}],"swt":["^· 尚武堂","\n","^你走进了一间开阔的武堂。纵横开阔几十丈，仿佛进入了一个开阔的广场。","\n","^武馆内的兵器架上的武器应有尽有，木人几十具成矩形排开，梅花桩、八卦阵也有数处。","\n","^几名劲装的武师在里面或练习、或印证功夫，呵呵有声。","\n","^※==※==※==※==※","\n","^※  尚  武  堂  ※","\n","^※==※==※==※==※","\n","^“尚武堂”三个遒劲的大字悬于高粱。","\n","^这里明显比一般的武馆都要宏大，更有气势。","\n","ev",{"CNT?":"jzxd.swt_jq"},"/ev",[{"->":".^.b","c":true},{"b":["\n",{"->":"jzxd.swt_road"},{"->":".^.^.^.22"},null]}],"nop","\n","ev",{"CNT?":"jzxd.swt_jq"},"!","/ev",[{"->":".^.b","c":true},{"b":["\n",{"->":"jzxd.swt_jq"},{"->":".^.^.^.29"},null]}],"nop","\n",{"#f":1}],"swt_jq":[["ev","str","^四处看看","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^阿姝说道：“这里是尚武堂，用于习武和切磋的地方，你以后有机会的话可以找这里的武师求教。","\n","^再北面是山庄的藏书阁，藏书阁要有庄主的许可才可以进去，这次就不带你进去了。”","\n","^阿姝往南离开。","\n",{"->":"jzxd.swt_road"},{"#f":5}]}],{"#f":1}],"swt_road":[["ev","str","^往南走","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"jzxd.lxszzt"},{"#f":5}]}],{"#f":1}],"end":[{"#":"CLASS: end"},"^TOBE CONTINUED...","\n","end",{"#f":1}],"#f":1}],"#f":1}],"listDefs":{}};