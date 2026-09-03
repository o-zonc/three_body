scoreboard players set @s tool_trigger 0
# /trigger 사용 직후 비활성화된 objective를 현재 플레이어에게만 다시 허용한다.
# 아래에서 조기 return될 수 있으므로 검사 전에 재활성화한다.
scoreboard players enable @s tool_trigger

execute unless entity @a[tag=accelerator_experiment_running] unless dimension minecraft:overworld run title @s actionbar {text:"천공의 제단 곁에서만 하늘의 힘을 받을 수 있습니다.",color:"red",italic:true}
execute unless dimension minecraft:overworld run return 0
execute unless entity @a[tag=accelerator_experiment_running] positioned 0 -59 0 unless entity @s[distance=..3.0] run title @s actionbar {text:"천공의 제단 곁에서만 하늘의 힘을 받을 수 있습니다.",color:"red",italic:true}
execute positioned 0 -59 0 unless entity @s[distance=..3.0] run return 0

execute store result score #tool_upgrade_result tmp run function tool/altar/upgrade
execute if score #tool_upgrade_result tmp matches 1 run function tool/altar/show
