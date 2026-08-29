execute in overworld store success score #factory_forceload_added tmp run forceload add -36 4 4 36

execute in overworld run summon firework_rocket -24 -40 24 {LifeTime:10,Motion:[0.0,1.0,0.0],FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;16711680,16755200,16776960],fade_colors:[I;2437522],has_trail:true,has_twinkle:true},{shape:"star",colors:[I;65535,16711935],fade_colors:[I;16777215],has_trail:true,has_twinkle:true},{shape:"creeper",colors:[I;65280],has_twinkle:true},{shape:"burst",colors:[I;11141350,43520],has_trail:true}]}}}}

execute in overworld run data modify block -13 -64 35 name set value "factory"
execute in overworld run setblock -13 -64 34 redstone_block
execute in overworld run setblock -13 -64 34 air

execute in overworld run setblock -36 -63 24 daylight_detector
execute in overworld run setblock -24 -63 36 creaking_heart

execute in overworld run fill -25 -63 4 -23 -61 4 air
execute in overworld run fill 4 -63 25 4 -62 23 air

execute if score #factory_forceload_added tmp matches 1 in overworld run forceload remove -36 4 4 36
