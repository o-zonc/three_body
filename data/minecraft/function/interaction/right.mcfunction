# 기능별 우클릭 분배

# 기본
execute if entity @s[tag=product] run function resource/product_interaction_manager
execute if entity @s[tag=item] run function item/item_interaction_manager
execute if entity @s[tag=entrance] run function dimensions/entrance_manager

# 특수 구조물
execute if entity @s[tag=po,tag=info] on target run function resource/material/information/ui/info
execute if entity @s[tag=po,tag=time] on target run function resource/material/time/ui/info
execute if entity @s[tag=drill] on target run function dimensions/overworld/drill/interact
execute if entity @s[tag=obsidian_storage] on target run function dimensions/nether/obsidian_storage/interact
execute if entity @s[tag=era] on target run function common/era/interact
execute if entity @s[tag=piglin_shop] on target run function dimensions/nether/piglin_head/ui/piglin_shop
execute if entity @s[tag=piglin_head_speed_up] on target run function dimensions/nether/piglin_head/ui/speed_up
execute if entity @s[tag=piglin_head] run function dimensions/nether/piglin_head/toggle/manager


# 상점류
# 모든 상점 interaction 엔티티는 shop 태그를 공통으로 사용한다.
execute if entity @s[tag=shop,tag=check,tag=first] on target run function resource/shop/check
execute if entity @s[tag=shop,tag=check,tag=second] on target run function resource/shop/check_second
execute if entity @s[tag=shop,tag=factory] on target run function shop/factory/interact
execute if entity @s[tag=shop,tag=elevator] on target run function elevator/shop_interact
execute if entity @s[tag=shop,tag=alchemy] on target run function shop/alchemy/interact
execute if entity @s[tag=shop,tag=observatory] on target run function shop/observatory/interact
execute if entity @s[tag=shop,tag=heat] on target run function shop/second/ui {id:"heat",name:"열기 자연 수급",color:"red",effect:"자연 지급 주기",unit:"틱",trigger:1811}
execute if entity @s[tag=shop,tag=cold] on target run function shop/second/ui {id:"cold",name:"냉기 자연 수급",color:"aqua",effect:"자연 지급 주기",unit:"틱",trigger:1812}
execute if entity @s[tag=shop,tag=gold] on target run function shop/second/ui {id:"gold",name:"금 생산",color:"gold",effect:"기본 생산량 보너스",unit:"개",trigger:1813}
execute if entity @s[tag=shop,tag=diamond] on target run function shop/second/ui {id:"diamond",name:"다이아몬드 생산",color:"aqua",effect:"기본 생산량 보너스",unit:"개",trigger:1814}
execute if entity @s[tag=shop,tag=special] on target run function shop/second/ui {id:"special",name:"극한 환경 수급",color:"light_purple",effect:"열기·냉기 수급량 보너스",unit:"개",trigger:1815}
execute if entity @s[tag=shop,tag=get] on target run function shop/second/ui {id:"get",name:"기초 생산 공정",color:"green",effect:"모든 기본 생산량 보너스",unit:"개",trigger:1816}
execute if entity @s[tag=shop,tag=time] on target run function resource/material/time/ui/interact
execute if entity @s[tag=shop,tag=information] on target run function resource/material/information/ui/interact
execute if entity @s[tag=shop,tag=world_eye] on target run function resource/material/world_eye/ui/interact
execute if entity @s[tag=shop,tag=!check,tag=!factory,tag=!heat,tag=!gold,tag=!cold,tag=!diamond,tag=!special,tag=!get,tag=!time,tag=!information,tag=!world_eye,tag=!era,tag=!alchemy,tag=!elevator,tag=!observatory,tag=!item,tag=!entrance] run function resource/shop/interact
execute if entity @s[tag=factory,tag=!shop] run function factory/interact
execute if entity @s[tag=nether_workshop_1_1] on target run function dimensions/nether/workshop/info/1_1
execute if entity @s[tag=nether_workshop_2_1] on target run function dimensions/nether/workshop/info/2_1
execute if entity @s[tag=nether_workshop_2_2] on target run function dimensions/nether/workshop/info/2_2
execute if entity @s[tag=nether_workshop_3_1] on target run function dimensions/nether/workshop/info/3_1
execute if entity @s[tag=nether_workshop_4_1] on target run function dimensions/nether/workshop/info/4_1
execute if entity @s[tag=nether_workshop_4_2] on target run function dimensions/nether/workshop/info/4_2
execute if entity @s[tag=nether_workshop_5_1] on target run function dimensions/nether/workshop/info/5_1
execute if entity @s[tag=nether_workshop_6_1] on target run function dimensions/nether/workshop/info/6_1
execute if entity @s[tag=nether_workshop_7_1] on target run function dimensions/nether/workshop/info/7_1
execute if entity @s[tag=nether_workshop_8_1] on target run function dimensions/nether/workshop/info/8_1
execute if entity @s[tag=nether_workshop_9_1] on target run function dimensions/nether/workshop/info/9_1
execute if entity @s[tag=nether_workshop_9_2] on target run function dimensions/nether/workshop/info/9_2
execute if entity @s[tag=nether_workshop_10_1] on target run function dimensions/nether/workshop/info/10_1
execute if entity @s[tag=nether_workshop_11_1] on target run function dimensions/nether/workshop/info/11_1
execute if entity @s[tag=nether_workshop_11_2] on target run function dimensions/nether/workshop/info/11_2
execute if entity @s[tag=nether_workshop_12_1] on target run function dimensions/nether/workshop/info/12_1

data remove entity @s interaction
