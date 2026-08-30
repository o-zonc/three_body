execute if entity @s[tag=unavailable_feedback_played] run return 0
tag @s add unavailable_feedback_played
execute at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1
title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,italic:true}
