function shop/third/world_eye/prepare
execute unless score #third_eye_lvl tmp matches ..2 run title @s actionbar "§c이미 최대 단계입니다."
execute unless score #third_eye_lvl tmp matches ..2 run return 0
execute store result score #third_eye_cost_check tmp run function resource/check_cost
execute unless score #third_eye_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #third_eye_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #third_eye_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players add #world_eye_shop_lvl upgrade 1
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function shop/third/world_eye/ui
