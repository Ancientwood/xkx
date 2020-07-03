## 侠客行

剧情源自 [北大侠客行](http://pkuxkx.com/)。

由 [Inky](https://github.com/inkle/inky) 编写。

## TODO

- [x] G A 统计
- [x] 评论系统
- [ ] 主题美化
- [ ] 地图系统
- [ ] 装备系统

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

## Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

