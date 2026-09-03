playsound block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar {"text":"이 이동기는 오버월드에서만 사용할 수 있습니다.","color":"red",italic:true}
