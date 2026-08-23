scoreboard players set @s tool_trigger 0

execute unless dimension minecraft:overworld run title @s actionbar {text:"천공의 제단 곁에서만 하늘의 힘을 받을 수 있습니다.",color:"red",italic:true}
execute unless dimension minecraft:overworld run return 0
execute positioned 0 -59 0 unless entity @s[distance=..3.0] run title @s actionbar {text:"천공의 제단 곁에서만 하늘의 힘을 받을 수 있습니다.",color:"red",italic:true}
execute positioned 0 -59 0 unless entity @s[distance=..3.0] run return 0

execute store result score #tool_upgrade_result tmp run function tool/altar/upgrade
execute if score #tool_upgrade_result tmp matches 1 run function tool/altar/show
