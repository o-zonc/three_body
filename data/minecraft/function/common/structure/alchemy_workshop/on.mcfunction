execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2001
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

# 공방을 설치하면 카탈리스트 구매 대기 시간은 새로 시작할 수 있도록 초기화합니다.
scoreboard players set #catalyst_cooldown var 0

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

execute in overworld run fill -23 -63 -4 -25 -61 -4 air
execute in overworld run fill -4 -63 -25 -4 -61 -23 air
