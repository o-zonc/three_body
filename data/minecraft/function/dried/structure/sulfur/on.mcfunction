execute in dried run summon firework_rocket -20 68 0 {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"burst",colors:[16711680,16753920,16766720],fade_colors:[16776960]},{shape:"star",colors:[16711680,16753920,16766720],fade_colors:[16776960]},{shape:"large_ball",colors:[16753920,16766720,16776960]},{shape:"burst",colors:[16711680,16753920,16776960],fade_colors:[16766720]}]}}}}

execute as @a[tag=player] unless entity @s[advancements={2_dried/05_endless_heat=true}] run advancement grant @s only 2_dried/05_endless_heat

# 구조물 블록이 로드 과정에서 덮여도 해금 상태는 별도로 유지합니다.
scoreboard players set #dried_sulfur unlock 1
execute in dried run data modify block -8 62 -10 name set value "sulfur"
execute in dried run setblock -8 61 -10 redstone_block
execute in dried run setblock -8 61 -10 air

execute in dried run summon minecraft:item_display -20 65.5 0 {item: {count: 1, id: "minecraft:glass_bottle"}, item_display: "fixed", transformation: {left_rotation: [0.0f, -0.70090926f, 0.0f, 0.71325046f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
