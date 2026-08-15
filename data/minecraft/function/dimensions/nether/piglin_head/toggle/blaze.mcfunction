execute unless score #piglin_shop_lvl piglin_head matches 7.. run return 0
scoreboard players set #piglin_head_toggle_was_stopped tmp 0
execute if score #stop_blaze piglin_head matches 1 run scoreboard players set #piglin_head_toggle_was_stopped tmp 1
execute if score #piglin_head_toggle_was_stopped tmp matches 1 run scoreboard players set #stop_blaze piglin_head 0
execute unless score #piglin_head_toggle_was_stopped tmp matches 1 run scoreboard players set #stop_blaze piglin_head 1
execute if score #piglin_head_toggle_was_stopped tmp matches 1 run title @s actionbar "블레이즈 피글린 머리 작동을 재개했습니다."
execute unless score #piglin_head_toggle_was_stopped tmp matches 1 run title @s actionbar "블레이즈 피글린 머리 작동을 중지했습니다."
playsound ui.button.click weather @a[tag=player] -77 2 13 1 2
