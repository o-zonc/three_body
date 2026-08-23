# 오버월드 (11XX)
execute as @a[tag=player] if score @s upgrade_trigger matches 1101 run function resource/upgrade/wood
execute as @a[tag=player] if score @s upgrade_trigger matches 1102 run function resource/upgrade/stone
execute as @a[tag=player] if score @s upgrade_trigger matches 1111 run function resource/upgrade/coal
execute as @a[tag=player] if score @s upgrade_trigger matches 1112 run function resource/upgrade/copper
execute as @a[tag=player] if score @s upgrade_trigger matches 1113 run function resource/upgrade/iron
execute as @a[tag=player] if score @s upgrade_trigger matches 1114 run function resource/upgrade/gold
execute as @a[tag=player] if score @s upgrade_trigger matches 1115 run function resource/upgrade/diamond
execute as @a[tag=player] if score @s upgrade_trigger matches 1116 run function resource/upgrade/emerald
execute as @a[tag=player] if score @s upgrade_trigger matches 1117 run function resource/upgrade/lapis
execute as @a[tag=player] if score @s upgrade_trigger matches 1118 run function resource/upgrade/yellow
execute as @a[tag=player] if score @s upgrade_trigger matches 1119 run function resource/upgrade/blue

execute as @a[tag=player] if score @s upgrade_trigger matches 1.. run scoreboard players reset @s upgrade_trigger
