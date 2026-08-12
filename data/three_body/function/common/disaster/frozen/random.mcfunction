playsound entity.generic.explode master @s ~ ~ ~ 1.0 0.1

title @a title {"text": "문명 멸망", "color": "red", "bold": true}

execute store result score #ROLL_ST roll_chance run random value 0..99

execute if score #ROLL_ST roll_chance matches 0..29 run function three_body:common/disaster/frozen/1
execute if score #ROLL_ST roll_chance matches 30..59 run function three_body:common/disaster/frozen/2
execute if score #ROLL_ST roll_chance matches 60..89 run function three_body:common/disaster/frozen/3
execute if score #ROLL_ST roll_chance matches 90..99 run function three_body:common/disaster/frozen/9
