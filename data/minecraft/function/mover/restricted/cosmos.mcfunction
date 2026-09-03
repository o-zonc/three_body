execute as @s at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 0.5
execute unless entity @a[tag=accelerator_experiment_running] run title @a actionbar {"text":"이미 우주에 있습니다!","color":"white","bold":false,italic:true}
