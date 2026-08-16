# 기능별 우클릭 분배

# 기본
execute if entity @s[tag=product] run function resource/product_interaction_manager
execute if entity @s[tag=npc] run function npc/npc_interaction_manager
execute if entity @s[tag=entrance] run function dimensions/entrance_manager

# 특수 구조물
execute if entity @s[tag=drill] on target run function dimensions/overworld/drill/interact
execute if entity @s[tag=obsidian_storage] on target run function dimensions/nether/obsidian_storage/interact
execute if entity @s[tag=piglin_shop] on target run function dimensions/nether/piglin_head/ui/piglin_shop
execute if entity @s[tag=piglin_head_speed_up] on target run function dimensions/nether/piglin_head/ui/speed_up
execute if entity @s[tag=piglin_head] run function dimensions/nether/piglin_head/toggle/manager


# 상점류
execute if entity @s[tag=material_shop,tag=!entrance] run function dimensions/overworld/shop/material_shop/shop_interaction_manager
execute if entity @s[tag=crystal_shop,tag=!entrance] run function dimensions/overworld/shop/crystal_shop/shop_interaction_manager
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