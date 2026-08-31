execute if score @s dimension_trigger matches 1 run scoreboard players set #m_overworld var 1
execute if score @s dimension_trigger matches 2 run scoreboard players set #m_dried var 1
execute if score @s dimension_trigger matches 3 run scoreboard players set #m_frozen var 1
execute if score @s dimension_trigger matches 4 run scoreboard players set #m_polarnight var 1
execute if score @s dimension_trigger matches 5 run scoreboard players set #m_dawn var 1
scoreboard players set @s dimension_trigger 0
scoreboard players enable @s dimension_trigger

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2

execute if score #m_overworld var matches 1 if entity @s[nbt={Dimension:"minecraft:overworld"}] run return run function mover/restricted/common
execute if score #m_overworld var matches 1 run return run function common/move

execute if score #m_dried var matches 1 if entity @s[nbt={Dimension:"minecraft:dried"}] run return run function mover/restricted/common
execute if score #m_dried var matches 1 run return run function dried/move

execute if score #m_frozen var matches 1 if entity @s[nbt={Dimension:"minecraft:frozen"}] run return run function mover/restricted/common
execute if score #m_frozen var matches 1 run return run function frozen/move

execute if score #m_polarnight var matches 1 if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return run function mover/restricted/common
execute if score #m_polarnight var matches 1 run return run function polarnight/move

execute if score #m_dawn var matches 1 if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/common
execute if score #m_dawn var matches 1 run return run function dawn/move

