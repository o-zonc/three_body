execute if entity @s[tag=unavailable_feedback_played] run return 0
tag @s add unavailable_feedback_played
execute at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1
title @s actionbar {"text":"오버월드에서는 천공의 제단 위에서만 사용할 수 있습니다!","color":"aqua","bold":false,"italic":true}
