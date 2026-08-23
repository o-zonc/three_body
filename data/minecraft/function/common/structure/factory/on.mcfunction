execute in overworld run summon firework_rocket -24 -40 24 {LifeTime:10,Motion:[0.0,1.0,0.0],FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;16711680,16755200,16776960],fade_colors:[I;2437522],has_trail:true,has_twinkle:true},{shape:"star",colors:[I;65535,16711935],fade_colors:[I;16777215],has_trail:true,has_twinkle:true},{shape:"creeper",colors:[I;65280],has_twinkle:true},{shape:"burst",colors:[I;11141350,43520],has_trail:true}]}}}}

# 구조물에 저장된 interaction은 재배치할 때 기존 엔티티를 자동으로 대체하지 않습니다.
# 공장 on/off, restart 등을 반복해도 중복 누적되지 않도록 현재 공장 범위의 기존 interaction을 먼저 정리합니다.
execute in overworld run kill @e[type=interaction,tag=factory,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]

# 큰 공장 구조물을 배치할 때 블록/형상 업데이트를 한꺼번에 발생시키지 않도록
# 1.21.5+ structure block의 Strict Placement를 사용합니다.
execute in overworld run data modify block -13 -64 35 name set value "factory"
execute in overworld run data modify block -13 -64 35 strict set value 1b
execute in overworld run setblock -13 -64 34 redstone_block
execute in overworld run setblock -13 -64 34 air

# 출입구 제거도 주변 블록 업데이트가 필요 없으므로 strict로 처리합니다.
execute in overworld run fill -25 -63 4 -23 -61 4 air strict
execute in overworld run fill 4 -63 25 4 -62 23 air strict