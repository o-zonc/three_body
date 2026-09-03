# Macro args are forwarded back to the UI.
$function shop/second/prepare {id:"$(id)"}
execute unless entity @a[tag=accelerator_experiment_running] unless score #second_lvl tmp matches ..3 run title @s actionbar {text:"이미 최대 단계입니다.",color:"red",italic:true}
execute unless score #second_lvl tmp matches ..3 run return 0
execute store result score #second_cost_check tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #second_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #second_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #second_cost_check tmp matches 1 run return 0
function resource/cost/take
$scoreboard players add #$(id)_second_lvl upgrade 1

# 극한 자원 수급 Lv.2 달성 시 얼어붙은 차원의 우는 흑요석을 드러낸다.
execute if score #special_second_lvl upgrade matches 2.. run function crying/frozen_reveal

playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
$function shop/second/ui {id:"$(id)",name:"$(name)",color:"$(color)",effect:"$(effect)",unit:"$(unit)",trigger:$(trigger)}
