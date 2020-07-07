/* 
*   定义人物状态
*/
LIST role_status = 
(hungry),
full,
injured,
poisoning,
dying,
(healthy),
(thirst),
nothirst

==function get_role_status(id)
{id:
-hungry:饥饿
-full:饱腹
-injured:受伤
-poisoning:中毒
-dying:濒死
-healthy:健康
-thirst:口渴

}

==function set_role_status(id)
{id:
-hungry:
~role_status+=hungry
~role_status-=full

-full:
~role_status+=full
~role_status-=hungry

-injured:
~role_status+=injured
~role_status-=healthy

-poisoning:
~role_status+=poisoning
~role_status-=healthy

-dying:
~role_status+=dying
~role_status-=healthy

-healthy:
~role_status+=healthy
~role_status-=injured
~role_status-=dying
~role_status-=poisoning

-thirst:
~role_status+=thirst

-nothirst:
~role_status-=thirst
}

==get_role_all_status(->go_back)
VAR role_head = () 
~head = LIST_MIN(role_status)
VAR role_end = ()
~end = LIST_MAX(role_status)

-(loop)

{role_status?head:{get_role_status(role_head)}} <> 

{
- role_head < role_end:
    ~ head++
    ->loop
-else:
    ->go_back
}
->loop
