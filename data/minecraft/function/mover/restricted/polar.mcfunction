execute as @s at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 2
execute unless entity @a[tag=accelerator_experiment_running] run title @a actionbar {"text":"머리 위의 별들을 바라보세요.","color":"white",bold:false,italic:false}
