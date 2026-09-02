effect clear @s minecraft:mining_fatigue
attribute @s minecraft:movement_speed modifier remove three_body:frozen_chaos
scoreboard players set @s frozen_chaos_freeze 0
scoreboard players set @s frozen_chaos_stage 0
scoreboard players set @s frozen_chaos_damage_timer 0
tag @s remove frozen_chaos_exposed
tag @s remove frozen_chaos_fully_frozen_notified
tag @s remove frozen_chaos_tracking
