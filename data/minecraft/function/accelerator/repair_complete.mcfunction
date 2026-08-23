scoreboard players set #GLOBAL accelerator_disabled 0
scoreboard players set #GLOBAL accelerator_repair_timer 0
scoreboard players set #GLOBAL accelerator_timer 1
execute store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."4".experiment_cooldown
execute as @a[tag=player,limit=1] at @s run playsound block.beacon.activate master @s ~ ~ ~ 0.8 0.8
execute as @a[tag=player,limit=1] run title @s actionbar {text:"입자가속기의 자동 수리가 완료되었습니다.",color:"green"}
