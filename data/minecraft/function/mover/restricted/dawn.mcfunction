execute as @s at @s run playsound block.note_block.bit master @a ~ ~ ~ 1 1
execute unless entity @a[tag=accelerator_experiment_running] run title @a actionbar {"text":"올바르지 않은 방식!","color":"white","bold":false,italic:false}
