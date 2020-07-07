/* 显示包裹
*/

==list_item(->go_back)//回调1返回，回调2使用

//获取头尾指针
VAR head = () 
~head = LIST_MIN(items)
VAR end = ()
~end = LIST_MAX(items)

//循环标签
-(loop)

//每个物品循环出来选项的线程
<-show_choose(head,go_back)

{
- head < end:
    ~ head++
    ->loop
-else:
    {LIST_COUNT(items) > 0:
         <- menu_back(go_back)
    }
    -> DONE
}

//使用返回
=menu_back(->go_back_temp)
    + [返回] -> go_back_temp

//循环所使用的选项
=show_choose(id,->go_back_temp)

    {LIST_COUNT(items) == 0:
        包裹里空空如也了。->go_back_temp
    }

    //物品总数量大于0，显示每个物品的选项
    //如果物品是消耗，显示对应数量
    {id==wp_qian:
        你拥有 {print_money(get_item_num(wp_qian))} #CLASS:bold
    }
    +{items?id and get_item_status(id)!?money and LIST_COUNT(items) > 0}查看【{get_item_name(id)}】{get_item_status(id)?consumables: * 【{print_num(get_item_num(id))}】}
    
    //物品详情
    {get_item_intro(id)}
    
    -(use_loop)
    //使用对应物品的二级菜单
    ++ 使用【{get_item_name(id)}】
    
    //使用物品后的回调
    // {get_item_use_callback(id)}
    ->get_item_use_callback(id)->
    //物品数量大于0，使用并且跳转到继续使用
    //如果物品使用到最后一个，跳转到列表
    {
    -get_item_num(id) > 1 or get_item_status(id)?loop_item:
        ~use_item(id)
        ->use_loop
    -get_item_num(id) == 1 :
        ~use_item(id)
        -> loop
    }
    
     
    ++ [返回] -> loop
    
== function add_item(id)
~items+=id
~add_item_num(id)

== function use_item(id)
    //判断数量为1时且时消耗品的时候可以从包裹中移除
    {get_item_num(id) == 1 && get_item_status(id)?consumables:
        ~items-=id
    }
    //判断是消耗品的时候才可以减少数量
    {get_item_status(id)?consumables:
        ~del_item_num(id)
    }

== function del_item(id)
    {get_item_num(id) == 1:
        ~items-=id
    }
     ~del_item_num(id)

