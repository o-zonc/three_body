# 마법 연구소 연구 진행
execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {"text":"연금술 공방을 먼저 해금해야 합니다.","color":"red"}
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #level alchemy_workshop matches 1.. run title @s actionbar {"text":"연금술 공방 Lv. 1이 필요합니다.","color":"red"}
execute unless score #level alchemy_workshop matches 1.. run return 0

function shop/alchemy/lab/prepare

execute if score #alchemy_lab_level upgrade matches 15.. run title @s actionbar {"text":"모든 연구가 완료되었습니다.","color":"green"}
execute if score #alchemy_lab_level upgrade matches 15.. run return 0

execute unless score #alchemy_lab_available tmp matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
execute unless score #alchemy_lab_available tmp matches 1 run function shop/alchemy/lab/ui
execute unless score #alchemy_lab_available tmp matches 1 run return 0

function meta/sync
execute store result score #alchemy_lab_can_pay tmp run function resource/check_cost
execute unless score #alchemy_lab_can_pay tmp matches 1 run title @s actionbar {"text":"연구에 필요한 자원이 부족합니다.","color":"red"}
execute unless score #alchemy_lab_can_pay tmp matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
execute unless score #alchemy_lab_can_pay tmp matches 1 run function shop/alchemy/lab/ui
execute unless score #alchemy_lab_can_pay tmp matches 1 run return 0

function resource/cost/take
scoreboard players add #alchemy_lab_level upgrade 1
function shop/alchemy/lab/rates

execute at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 0.9 1.2
title @s actionbar [{"text":"마법 연구 완료 — Lv. ","color":"light_purple","bold":true},{"score":{"name":"#alchemy_lab_level","objective":"upgrade"},"color":"white"}]
function shop/alchemy/lab/ui
