# 자원 상호작용 전체 관리
# dim_comp의 product_interaction_manager에 대응하는 진입점.
#
# interaction/right.mcfunction에서 @s = 자원 interaction 엔티티로 호출된다.
# 태그로 어떤 Material인지 판별한 뒤, `on target`으로 실행 대상을
# 마지막으로 상호작용한 플레이어로 전환하여 해당 Material의 ui/interact를 실행한다.

execute if entity @s[tag=resource,tag=wood] on target run function three_body:resource/wood/ui/interact
execute if entity @s[tag=resource,tag=stone] on target run function three_body:resource/stone/ui/interact
execute if entity @s[tag=resource,tag=coal] on target run function three_body:resource/coal/ui/interact
execute if entity @s[tag=resource,tag=copper] on target run function three_body:resource/copper/ui/interact
execute if entity @s[tag=resource,tag=iron] on target run function three_body:resource/iron/ui/interact
execute if entity @s[tag=resource,tag=gold] on target run function three_body:resource/gold/ui/interact
execute if entity @s[tag=resource,tag=diamond] on target run function three_body:resource/diamond/ui/interact
execute if entity @s[tag=resource,tag=emerald] on target run function three_body:resource/emerald/ui/interact
execute if entity @s[tag=resource,tag=lapis] on target run function three_body:resource/lapis/ui/interact
execute if entity @s[tag=resource,tag=heat] on target run function three_body:resource/heat/ui/interact
execute if entity @s[tag=resource,tag=cold] on target run function three_body:resource/cold/ui/interact
execute if entity @s[tag=resource,tag=information] on target run function three_body:resource/information/ui/interact
execute if entity @s[tag=resource,tag=time] on target run function three_body:resource/time/ui/interact
execute if entity @s[tag=resource,tag=world_eye] on target run function three_body:resource/world_eye/ui/interact
