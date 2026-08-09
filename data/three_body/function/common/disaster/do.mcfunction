effect give @a blindness 6 1 true
effect give @a darkness 6 1 true

title @a times 20 60 20
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run function three_body:common/disaster/overworld/random
execute if entity @a[nbt={Dimension:"three_body:frozen"}] run function three_body:common/disaster/frozen/random
execute if entity @a[nbt={Dimension:"three_body:dried"}] run function three_body:common/disaster/dried/random
execute if entity @a[nbt={Dimension:"three_body:polarnight"}] run function three_body:common/disaster/polar

scoreboard players add #GLOBAL n_civil 1

execute if entity @a[nbt={Dimension:"minecraft:overworld"}, advancements={three_body:0_overworld/10_disaster=false}] run advancement grant @a only three_body:0_overworld/10_disaster
execute if entity @a[nbt={Dimension:"three_body:frozen"}, advancements={three_body:1_frozen/03_disaster=false}] run advancement grant @a only three_body:1_frozen/03_disaster
execute if entity @a[nbt={Dimension:"three_body:dried"}, advancements={three_body:2_dried/01_disaster=false}] run advancement grant @a only three_body:2_dried/01_disaster

schedule function three_body:common/next 100t

# 멸망 이벤트가 반복 실행되지 않도록, 해당 차원의 상태를 '항성기'(0)로 초기화합니다.
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set #GLOBAL state_overworld 0
execute if entity @a[nbt={Dimension:"three_body:frozen"}] run scoreboard players set #GLOBAL state_frozen 0
execute if entity @a[nbt={Dimension:"three_body:dried"}] run scoreboard players set #GLOBAL state_dried 0

