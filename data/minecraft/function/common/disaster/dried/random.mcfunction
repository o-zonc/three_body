playsound entity.generic.explode master @s ~ ~ ~ 1.0 0.1

title @a title {"text": "문명 멸망", "color": "red", "bold": true}

execute store result score #ROLL_ST roll_chance run random value 0..99

execute if score #ROLL_ST roll_chance matches 0..17 run function common/disaster/dried/1
execute if score #ROLL_ST roll_chance matches 18..35 run function common/disaster/dried/2
execute if score #ROLL_ST roll_chance matches 36..53 run function common/disaster/dried/3
execute if score #ROLL_ST roll_chance matches 54..71 run function common/disaster/dried/4
execute if score #ROLL_ST roll_chance matches 72..89 run function common/disaster/dried/5
execute if score #ROLL_ST roll_chance matches 90..99 run function common/disaster/dried/9
