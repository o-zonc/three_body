function tool/get_now_tool_data
execute unless data storage data tmp.tool.now.cost run return 0
data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.tool.now.cost
execute store result score #1_1_cost_check tmp run function dimensions/nether/workshop/effect/1_1/check_cost_no_exp
execute if score #1_1_cost_check tmp matches 1 run function resource/take_upgrade_cost
execute if score #1_1_cost_check tmp matches 1 run scoreboard players add #tool upgrade 1
execute if score #1_1_cost_check tmp matches 1 run title @a[tag=player] actionbar ["", {text:"§6🍀 §3§l아차원 초월§7: 도구 자동 업그레이드 §8(Lv. "}, {score:{name:"#tool",objective:"upgrade"}, color:"aqua"}, {text:"§8)"}]
execute if score #1_1_cost_check tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #1_1_done tmp 1
execute if score #1_1_cost_check tmp matches 1 run clear @a[tag=player] *[custom_data~{tool:{}}]