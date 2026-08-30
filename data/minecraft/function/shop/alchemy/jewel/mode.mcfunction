# 수동 세공 모드 전환: 초급(0) → 중급(1) → 고급(2)
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #jewel_mode var = #jewel_mode var run scoreboard players set #jewel_mode var 0
scoreboard players add #jewel_mode var 1
execute if score #jewel_mode var matches 3.. run scoreboard players set #jewel_mode var 0
execute if score #jewel_mode var > #level alchemy_workshop run scoreboard players set #jewel_mode var 0
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.8 1.4
function shop/alchemy/jewel/ui
