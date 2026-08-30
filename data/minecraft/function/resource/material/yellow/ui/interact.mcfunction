execute unless entity @s[advancements={0_overworld/22_heavy_ion_experiment=true}] at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute unless entity @s[advancements={0_overworld/22_heavy_ion_experiment=true}] run tellraw @s {"text":"뭔가 뜨거운 느낌이다…","color":"gray","bold":false}
execute unless entity @s[advancements={0_overworld/22_heavy_ion_experiment=true}] run return 0
function resource/material/yellow/ui/info
