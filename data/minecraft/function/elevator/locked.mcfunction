execute if entity @s[tag=unavailable_feedback_played] run return 0
tag @s add unavailable_feedback_played
execute at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1
title @s actionbar {"text":"사용할 수 없는 기능입니다!","color":"white","bold":false,italic:true}
