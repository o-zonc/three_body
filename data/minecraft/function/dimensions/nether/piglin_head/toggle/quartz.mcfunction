execute unless score #piglin_shop_lvl piglin_head matches 8.. run return 0
scoreboard players set #piglin_head_toggle_was_stopped tmp 0
execute if score #stop_quartz piglin_head matches 1 run scoreboard players set #piglin_head_toggle_was_stopped tmp 1
execute if score #piglin_head_toggle_was_stopped tmp matches 1 run scoreboard players set #stop_quartz piglin_head 0
execute unless score #piglin_head_toggle_was_stopped tmp matches 1 run scoreboard players set #stop_quartz piglin_head 1
execute if score #piglin_head_toggle_was_stopped tmp matches 1 run title @s actionbar "석영 피글린 머리 작동을 재개했습니다."
execute unless score #piglin_head_toggle_was_stopped tmp matches 1 run title @s actionbar "석영 피글린 머리 작동을 중지했습니다."
playsound ui.button.click weather @a[tag=player] -47 2 4 1 2
