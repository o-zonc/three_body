scoreboard players set #m_overworld var 0
scoreboard players set #m_dried var 0
scoreboard players set #m_frozen var 0
scoreboard players set #m_polarnight var 0
scoreboard players set #m_dawn var 0
scoreboard players enable @s dimension_trigger

execute if entity @s[tag=ending_seen] run function util/blank

execute if entity @s[tag=ending_seen] run tellraw @a ["",{text:"  [ 차원 선택 ]", bold:true,color:"green"}]
execute if entity @s[tag=ending_seen] run tellraw @a ["",{text:"\n  목적지 차원을 선택하세요.",color:gray}]
execute if entity @s[tag=ending_seen] run tellraw @a ["",{text:"\n  [ 오버월드 ]",bold:true,color:green,click_event:{action:"run_command",command:"/trigger dimension_trigger set 1"}}]
execute if entity @s[tag=ending_seen] run tellraw @a ["",{text:"  [ 메마른 세계 ]",bold:true,color:gold,click_event:{action:"run_command",command:"/trigger dimension_trigger set 2"}}]
execute if entity @s[tag=ending_seen] run tellraw @a ["",{text:"  [ 얼어붙은 세계 ]",bold:true,color:aqua,click_event:{action:"run_command",command:"/trigger dimension_trigger set 3"}}]
execute if entity @s[tag=ending_seen] run tellraw @a ["",{text:"  [ 극야 ]",bold:true,color:light_purple,click_event:{action:"run_command",command:"/trigger dimension_trigger set 4"}}]
execute if entity @s[tag=ending_seen] run tellraw @a ["",{text:"  [ 여명 ]",bold:true,color:"#9EF971",click_event:{action:"run_command",command:"/trigger dimension_trigger set 5"}}]
execute if entity @s[tag=ending_seen] run tellraw @a ""


execute if entity @s[tag=ending_seen] run return run function mover/dimension_2

# 기본 차원 이동기
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run function mover/restricted/dawn
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dawn"}] run scoreboard players set #GLOBAL user_disaster 1
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dawn"}] run function common/disaster/do
