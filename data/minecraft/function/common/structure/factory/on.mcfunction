summon firework_rocket -24 -40 24 {LifeTime:10,Motion:[0.0,1.0,0.0],FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;16711680,16755200,16776960],fade_colors:[I;2437522],has_trail:true,has_twinkle:true},{shape:"star",colors:[I;65535,16711935],fade_colors:[I;16777215],has_trail:true,has_twinkle:true},{shape:"creeper",colors:[I;65280],has_twinkle:true},{shape:"burst",colors:[I;11141350,43520],has_trail:true}]}}}}

data modify block -13 -64 35 name set value "factory"
setblock -13 -64 34 redstone_block
setblock -13 -64 34 air

fill -25 -63 4 -23 -61 4 air
fill 4 -63 25 4 -62 23 air