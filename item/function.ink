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
    <- menu_back(go_back)
    -> DONE
}

//使用返回
=menu_back(->go_back_temp)
    + [返回] -> go_back_temp

//循环所使用的选项
=show_choose(id,->go_back_temp)

    //物品总数量大于0，显示每个物品的选项
    //物品 * 数量 的选项
    +{LIST_COUNT(items)>0}查看【{get_item_name(LIST_VALUE(id))}】* {get_item_num(LIST_VALUE(id))}
    
    //物品详情
    {get_item_intro(LIST_VALUE(id))}
    
    //使用对应物品的二级菜单
    ++ 使用【{get_item_name(LIST_VALUE(id))}】
    
    //使用物品后的回调
    {get_item_use_callback(LIST_VALUE(id))}

    //物品数量大于0，使用
    {get_item_num(LIST_VALUE(id)) > 0 :
        ~use_item(id)
    }
    
    
    -> loop
     
    ++ [返回] -> loop
    
== function add_item(id)
~items+=id
~add_item_num(LIST_VALUE(id))

== function use_item(id)
{get_item_num(LIST_VALUE(id)) == 1 :
    ~items-=id
}
~del_item_num(LIST_VALUE(id))

