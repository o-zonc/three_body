# Lv.2 자동 세공 ON/OFF
execute unless score #level alchemy_workshop matches 2.. run title @s actionbar {"text":"자동 세공은 연금술 공방 Lv. 2에서 해금됩니다.","color":"red",italic:true}
execute unless score #level alchemy_workshop matches 2.. run return 0

execute unless score #jewel_auto_enabled var = #jewel_auto_enabled var run scoreboard players set #jewel_auto_enabled var 0
scoreboard players operation #jewel_auto_toggle_tmp tmp = #jewel_auto_enabled var
execute if score #jewel_auto_toggle_tmp tmp matches 1 run scoreboard players set #jewel_auto_enabled var 0
execute unless score #jewel_auto_toggle_tmp tmp matches 1 run scoreboard players set #jewel_auto_enabled var 1
scoreboard players reset #jewel_auto_toggle_tmp tmp
scoreboard players set #jewel_auto_timer var 0

execute if score #jewel_auto_enabled var matches 1 run playsound block.iron_door.open weather @s ~ ~ ~ 0.8 1.1
execute unless score #jewel_auto_enabled var matches 1 run playsound block.iron_door.close weather @s ~ ~ ~ 0.8 0.9
execute if score #jewel_auto_enabled var matches 1 run title @s actionbar {"text":"자동 세공을 시작합니다.","color":"green",italic:false}
execute unless score #jewel_auto_enabled var matches 1 run title @s actionbar {"text":"자동 세공을 중지합니다.","color":"gray",italic:false}
function shop/alchemy/jewel/ui
