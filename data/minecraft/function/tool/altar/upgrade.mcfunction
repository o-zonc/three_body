function tool/get_now_tool_data

# cost 값이 없다면 더 이상 업그레이드가 불가능하다는 뜻
execute unless data storage data tmp.tool.now.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.tool.now.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.tool.now.cost run return 0

# 업그레이드 재료 소지 여부 확인
data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.tool.now.cost
execute store result score #tool_upgrade_cost_check tmp run function resource/check_cost

# 소지 시 업그레이드
execute if score #tool_upgrade_cost_check tmp matches 1 run function resource/take_upgrade_cost
execute if score #tool_upgrade_cost_check tmp matches 1 run scoreboard players add #tool upgrade 1
execute if score #tool_upgrade_cost_check tmp matches 1 run function story/overworld/age/check_medieval_age
execute if score #tool_upgrade_cost_check tmp matches 1 run function tool/refresh_all
execute if score #tool_upgrade_cost_check tmp matches 1 as @a[tag=player] at @s run playsound block.anvil.use weather @s ~ ~ ~ 1 2
execute if score #tool_upgrade_cost_check tmp matches 1 as @a[tag=player] at @s run playsound block.beacon.power_select weather @s ~ ~ ~ 0.7 2
execute if score #tool_upgrade_cost_check tmp matches 1 run title @s actionbar ["",{text:"하늘의 힘이 깃들었습니다  ",color:"aqua"},{storage:"data",nbt:"tmp.tool.now.components.custom_name"}]
execute if score #tool_upgrade_cost_check tmp matches 1 as @a[tag=player] at @s run particle trial_spawner_detection ~ ~0.5 ~ 0.3 0.3 0.3 0 30 force @a[tag=player]
execute if score #tool_upgrade_cost_check tmp matches 1 run return 1

# 미소지 시
execute unless score #tool_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #tool_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #tool_upgrade_cost_check tmp matches 1 run return 0
