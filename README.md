## 侠客行

剧情源自 [北大侠客行](http://pkuxkx.com/)。

由 [Inky](https://github.com/inkle/inky) 编写。

插图由灵魂画手319倾心绘制。

## TODO

- [x] G A 统计
- [x] 评论系统
- [x] 主题美化
- [x] 音效
- [x] 自定义样式
- [x] 地图系统
- [x] 装备系统
- [ ] 人物状态
- [ ] 战斗系统

## 基本语法

```
== 节点

= 针脚

-> 跳转

->-> 隧道

+ 选项

* 一次性选项

* -> 后备选项

- 收束

- () 收束贴标签

{} 逻辑判断

{test:
...
- else
...} 
if-else逻辑判断

[] 无声内容

{1|2|3} 可变文本,显示最后一个

{!1|2|3} 可变文本,不显示最后一个

{&1|2|3} 周期循环的可变文本

{~0|1} 随机内容

VAR 全局变量

temp 临时变量

~ 数值运算

function 函数
```

## 高级技巧

#### 线程

线程 `<-` 可以将多个部分连接在一起

```
->kitchen
== kitchen ==
你来到了厨房
<- conversation
<- walking
-> DONE //标志线程的结束

== conversation ==
 * 晚上吃什么
    大厨说道："吃鸡"
 - -> kitchen

== walking ==
 + [离开]
    -> out

== out ==
你离开了厨房
-> END
```

输出

```
你来到了厨房
1.晚上吃什么
2.离开
```

#### 列表

列表关键字 `LIST` 

状态机

```
->begin
=begin
LIST role_emotion = happy, sad, angry

VAR zhangsan_emotion = happy
VAR lisi_emotion = angry

{zhangsan_emotion}
{lisi_emotion}
->END
```

列表循环

```
//第一个值对应序号为1而不是0，可以通过LIST_VALUE获取
LIST volumeLevel = off, quiet, medium, loud, deafening
VAR lecturersVolume = quiet
VAR murmurersVolume = quiet

-(loop)
{ 
    -lecturersVolume < deafening:
        //循环输出值
        {lecturersVolume}
        
        //状态值对应序号
        ~ temp index =  LIST_VALUE(lecturersVolume)
        {index}
        
        //序号对应状态值
        {volumeLevel(index)}
	    ~ lecturersVolume++
    -else:
        ->END
}
+[loop] 
->loop
```

列表多值选中

```
//列表自定义值
LIST primeNumbers = two = 2, three = 3, five = 5

LIST DoctorsInSurgery = (Adams=8), Bernard=10, (Cartwright), (Denver), (Eamonn)
//打印选中的值
{DoctorsInSurgery}

//进行清空
~ DoctorsInSurgery = ()
{DoctorsInSurgery}

//增加选中
~ DoctorsInSurgery += (Adams, Bernard, Cartwright, Denver)
{DoctorsInSurgery}

//删除选中
~ DoctorsInSurgery += (Bernard)
{DoctorsInSurgery}

//函数测试
{LIST_COUNT(DoctorsInSurgery)} //输出选中的值
{LIST_MIN(DoctorsInSurgery)} 	 //输出序号最小的值
{LIST_MAX(DoctorsInSurgery)} 	 //输出序号最大的值
{LIST_RANDOM(DoctorsInSurgery)}//随机输出一个值
{LIST_ALL(element of list)}		 //输出完整的列表（未被选中也会输出）
{LIST_RANGE(list_name, min_value, max_value)} //函数切片
{LIST_INVERT(list_name)}			 //函数倒置

//测试选中列表是否为空
{ DoctorsInSurgery: The surgery is open today. | Everyone has gone home. }

//测试选中列表是否相等
{ DoctorsInSurgery == (Adams, Bernard):
	Dr Adams and Dr Bernard are having a loud argument in one corner.
}

//测试是否在选中列表中
//包含操作： ? 或者 has
//不包含操作： !? 或者 hasnt
{ DoctorsInSurgery ? (Adams, Bernard):
	Dr Adams and Dr Bernard are having a hushed argument in one corner.
}
//相交列表
{desiredValues ^ actualValues: The new president has at least one desirable quality.} 
```

##### 跟踪对象列表

```
LIST Characters = Alfred, Batman, Robin 
LIST Props = champagne_glass, newspaper 

VAR BallroomContents = (Alfred, Batman, newspaper) 
VAR HallwayContents = (Robin, champagne_glass) 
```

##### 跟踪多个状态的列表

```
LIST OnOff = on, off 
LIST HotCold = cold, warm, hot 

VAR kettleState = off, cold 
```

## 多媒体支持

```
# theme: dark 暗色主题
# author: 作者
# CLEAR 清空屏幕
# IMAGE: myImages/imageName.jpg 插入图片
# CLASS: 自定义CSS类
# RESTART 重新开始
# AUDIO: myBgms/bgm.mp3 背景音乐
# LOOP: myBgms/bgm.mp3 背景音乐循环
# STOP 停止播放
```

## 自定义CSS

多个 `class` 写多个用分号分隔,例如: `#CLASS:blod;#CLASS:red`。

目前不支持给选项 `choice` 添加新的 `class`。

具体列表见 `style.css`。

## Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

