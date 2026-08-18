# 상점 업그레이드 트리거
# 1번째 자리: 자리 수 유지용 숫자
# 2번째 자리: 상점 종류 - 자원 상점 1, 결정 상점 2
# 3~4번째 자리: 업그레이드 요소 순서

# 자원 상점 (11XX)
execute as @a[tag=player] if score @s shop_trigger matches 1101 run function resource/shop/upgrade/wood
execute as @a[tag=player] if score @s shop_trigger matches 1102 run function resource/shop/upgrade/stone
execute as @a[tag=player] if score @s shop_trigger matches 1103 run function resource/shop/upgrade/coal
execute as @a[tag=player] if score @s shop_trigger matches 1104 run function resource/shop/upgrade/iron
execute as @a[tag=player] if score @s shop_trigger matches 1105 run function resource/shop/upgrade/xp
execute as @a[tag=player] if score @s shop_trigger matches 1106 run function resource/shop/upgrade/run {id:"copper"}
execute as @a[tag=player] if score @s shop_trigger matches 1107 run function resource/shop/upgrade/run {id:"gold"}
execute as @a[tag=player] if score @s shop_trigger matches 1108 run function resource/shop/upgrade/run {id:"diamond"}
execute as @a[tag=player] if score @s shop_trigger matches 1109 run function resource/shop/upgrade/run {id:"emerald"}
execute as @a[tag=player] if score @s shop_trigger matches 1110 run function resource/shop/upgrade/run {id:"lapis"}

# 결정 상점 (12XX)
execute as @a[tag=player] if score @s shop_trigger matches 1201 run function dimensions/overworld/shop/crystal_shop/trigger/upgrade_obsidian_max_up
execute as @a[tag=player] if score @s shop_trigger matches 1202 run function dimensions/overworld/shop/crystal_shop/trigger/upgrade_dig_speed_up
execute as @a[tag=player] if score @s shop_trigger matches 1203 run function dimensions/overworld/shop/crystal_shop/trigger/upgrade_drill_speed_up
execute as @a[tag=player] if score @s shop_trigger matches 1204 run function dimensions/overworld/shop/crystal_shop/trigger/upgrade_cave_material_regen_speed_up
execute as @a[tag=player] if score @s shop_trigger matches 1205 run function dimensions/overworld/shop/crystal_shop/trigger/upgrade_material_regen_upgrade_cost_down
execute as @a[tag=player] if score @s shop_trigger matches 1206 run function dimensions/overworld/shop/crystal_shop/trigger/upgrade_material_shop_cost_down
execute as @a[tag=player] if score @s shop_trigger matches 1207 run function dimensions/overworld/shop/crystal_shop/trigger/upgrade_compressed_overworld_crystal_multiple
execute as @a[tag=player] if score @s shop_trigger matches 1301 run function dimensions/nether/piglin_head/trigger/upgrade_piglin_shop

# 엘리베이터 제어 단말 (14XX)
execute as @a[tag=player] if score @s shop_trigger matches 1401 run function elevator/purchase_unlock
execute as @a[tag=player] if score @s shop_trigger matches 1402 run function elevator/purchase_upgrade

# 연금술 공방 (15XX)
execute as @a[tag=player] if score @s shop_trigger matches 1501 run function shop/alchemy/purchase

execute as @a[tag=player] if score @s shop_trigger matches 1.. run scoreboard players reset @s shop_trigger
