execute unless score #color_resources_unlocked var matches 1 at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute unless score #color_resources_unlocked var matches 1 run tellraw @s {"text":"뭔가 차가운 느낌이다…","color":"gray","bold":false}
execute unless score #color_resources_unlocked var matches 1 run return 0
function resource/material/blue/ui/info
