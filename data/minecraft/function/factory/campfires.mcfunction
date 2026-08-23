# 해금한 공장의 자원 블록 바로 위에 가동 상태를 표시하는 모닥불을 둡니다.
execute in overworld unless score #wood factory_unlocked matches 1 if block 0 -58 35 #campfires run setblock 0 -58 35 air
execute in overworld unless score #stone factory_unlocked matches 1 if block -3 -58 35 #campfires run setblock -3 -58 35 air
execute in overworld unless score #coal factory_unlocked matches 1 if block 3 -58 35 #campfires run setblock 3 -58 35 air
execute in overworld unless score #copper factory_unlocked matches 1 if block 3 -61 -35 #campfires run setblock 3 -61 -35 air
execute in overworld unless score #iron factory_unlocked matches 1 if block 1 -61 -35 #campfires run setblock 1 -61 -35 air
execute in minecraft:dried unless score #gold factory_unlocked matches 1 if block 6 66 0 #campfires run setblock 6 66 0 air
execute in minecraft:frozen unless score #diamond factory_unlocked matches 1 if block 0 69 -12 #campfires run setblock 0 69 -12 air
execute in minecraft:frozen unless score #cold factory_unlocked matches 1 if block 0 69 48 #campfires run setblock 0 69 48 air
execute in overworld unless score #emerald factory_unlocked matches 1 if block -1 -61 -35 #campfires run setblock -1 -61 -35 air
execute in overworld unless score #lapis factory_unlocked matches 1 if block -3 -61 -35 #campfires run setblock -3 -61 -35 air
execute in minecraft:dried unless score #heat factory_unlocked matches 1 if block -6 66 0 #campfires run setblock -6 66 0 air
execute in overworld if score #wood factory_unlocked matches 1 if score #wood factory_enabled matches 1 run setblock 0 -58 35 campfire[lit=true]
execute in overworld if score #wood factory_unlocked matches 1 unless score #wood factory_enabled matches 1 run setblock 0 -58 35 campfire[lit=false]
execute in overworld if score #stone factory_unlocked matches 1 if score #stone factory_enabled matches 1 run setblock -3 -58 35 campfire[lit=true]
execute in overworld if score #stone factory_unlocked matches 1 unless score #stone factory_enabled matches 1 run setblock -3 -58 35 campfire[lit=false]
execute in overworld if score #coal factory_unlocked matches 1 if score #coal factory_enabled matches 1 run setblock 3 -58 35 campfire[lit=true]
execute in overworld if score #coal factory_unlocked matches 1 unless score #coal factory_enabled matches 1 run setblock 3 -58 35 campfire[lit=false]
execute in overworld if score #copper factory_unlocked matches 1 if score #copper factory_enabled matches 1 run setblock 3 -61 -35 campfire[lit=true]
execute in overworld if score #copper factory_unlocked matches 1 unless score #copper factory_enabled matches 1 run setblock 3 -61 -35 campfire[lit=false]
execute in overworld if score #iron factory_unlocked matches 1 if score #iron factory_enabled matches 1 run setblock 1 -61 -35 campfire[lit=true]
execute in overworld if score #iron factory_unlocked matches 1 unless score #iron factory_enabled matches 1 run setblock 1 -61 -35 campfire[lit=false]
execute in minecraft:dried if score #gold factory_unlocked matches 1 if score #gold factory_enabled matches 1 run setblock 6 66 0 campfire[lit=true]
execute in minecraft:dried if score #gold factory_unlocked matches 1 unless score #gold factory_enabled matches 1 run setblock 6 66 0 campfire[lit=false]
execute in minecraft:frozen if score #diamond factory_unlocked matches 1 if score #diamond factory_enabled matches 1 run setblock 0 69 -12 campfire[lit=true]
execute in minecraft:frozen if score #diamond factory_unlocked matches 1 unless score #diamond factory_enabled matches 1 run setblock 0 69 -12 campfire[lit=false]
execute in minecraft:frozen if score #cold factory_unlocked matches 1 if score #cold factory_enabled matches 1 run setblock 0 69 48 campfire[lit=true]
execute in minecraft:frozen if score #cold factory_unlocked matches 1 unless score #cold factory_enabled matches 1 run setblock 0 69 48 campfire[lit=false]
execute in overworld if score #emerald factory_unlocked matches 1 if score #emerald factory_enabled matches 1 run setblock -1 -61 -35 campfire[lit=true]
execute in overworld if score #emerald factory_unlocked matches 1 unless score #emerald factory_enabled matches 1 run setblock -1 -61 -35 campfire[lit=false]
execute in overworld if score #lapis factory_unlocked matches 1 if score #lapis factory_enabled matches 1 run setblock -3 -61 -35 campfire[lit=true]
execute in overworld if score #lapis factory_unlocked matches 1 unless score #lapis factory_enabled matches 1 run setblock -3 -61 -35 campfire[lit=false]
execute in minecraft:dried if score #heat factory_unlocked matches 1 if score #heat factory_enabled matches 1 run setblock -6 66 0 campfire[lit=true]
execute in minecraft:dried if score #heat factory_unlocked matches 1 unless score #heat factory_enabled matches 1 run setblock -6 66 0 campfire[lit=false]

# 공장 interaction이 로드되어 있으면 즉시 갱신하고, 아니면 첫 오버월드 tick까지 미룹니다.
execute if entity @e[type=interaction,tag=factory] run function factory/refresh_lights
execute if entity @e[type=interaction,tag=factory] run scoreboard players set #factory_light_dirty var 0
execute unless entity @e[type=interaction,tag=factory] run scoreboard players set #factory_light_dirty var 1
