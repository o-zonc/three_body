# 직접 설치 요청이 들어온 순간에만 카탈리스트 구매 대기 시간을 초기화한다.
# 구조물 청크가 로드된 뒤 재호출되는 apply 단계와 문명 정산 복원 요청에서는 건드리지 않는다.
execute unless score #structure_apply_context var matches 1 unless score #GLOBAL reckoning_pending matches 1.. run scoreboard players set #catalyst_cooldown var 0

execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2001
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in overworld run summon firework_rocket -24 -51 -24 {LifeTime:10,Motion:[0.0,1.0,0.0],FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;16711680,16755200,16776960],fade_colors:[I;2437522],has_trail:true,has_twinkle:true},{shape:"star",colors:[I;65535,16711935],fade_colors:[I;16777215],has_trail:true,has_twinkle:true},{shape:"creeper",colors:[I;65280],has_twinkle:true},{shape:"burst",colors:[I;11141350,43520],has_trail:true}]}}}}

execute in overworld run data modify block -33 -64 -33 name set value "alchemy_workshop"
execute in overworld run setblock -33 -64 -32 redstone_block
execute in overworld run setblock -33 -64 -32 air

execute in overworld run setblock -24 -63 -36 minecraft:smithing_table
execute in overworld run setblock -36 -63 -24 minecraft:test_block[mode=start]
execute in overworld run setblock -24 -63 -12 minecraft:brewing_stand
execute in overworld run setblock -24 -63 -37 minecraft:light[level=15]
execute in overworld run setblock -37 -63 -24 minecraft:light[level=15]
execute in overworld run setblock -24 -63 -11 minecraft:light[level=15]
execute if score #time_axis_open var matches 1 run execute in overworld run setblock -20 -62 -24 minecraft:cartography_table
execute unless score #time_axis_open var matches 1 run execute in overworld run setblock -20 -62 -24 air

execute in overworld run fill -23 -63 -4 -25 -61 -4 air
execute in overworld run fill -4 -63 -25 -4 -61 -23 air
