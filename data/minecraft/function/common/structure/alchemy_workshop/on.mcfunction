execute in overworld store success score #alchemy_forceload_added tmp run forceload add -37 -37 -4 -4

execute in overworld run summon firework_rocket -24 -51 -24 {LifeTime:10,Motion:[0.0,1.0,0.0],FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;16711680,16755200,16776960],fade_colors:[I;2437522],has_trail:true,has_twinkle:true},{shape:"star",colors:[I;65535,16711935],fade_colors:[I;16777215],has_trail:true,has_twinkle:true},{shape:"creeper",colors:[I;65280],has_twinkle:true},{shape:"burst",colors:[I;11141350,43520],has_trail:true}]}}}}

execute in overworld run data modify block -33 -64 -33 name set value "alchemy_workshop"
execute in overworld run setblock -33 -64 -32 redstone_block
execute in overworld run setblock -33 -64 -32 air

execute in overworld run setblock -24 -63 -36 minecraft:smithing_table
execute in overworld run setblock -36 -63 -24 minecraft:test_block[mode=start]
execute in overworld run setblock -24 -63 -37 minecraft:light[level=15]
execute in overworld run setblock -37 -63 -24 minecraft:light[level=15]

execute in overworld run fill -23 -63 -4 -25 -61 -4 air
execute in overworld run fill -4 -63 -25 -4 -61 -23 air

execute if score #alchemy_forceload_added tmp matches 1 in overworld run forceload remove -37 -37 -4 -4
