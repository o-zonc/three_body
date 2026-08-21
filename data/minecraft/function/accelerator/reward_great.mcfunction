execute if score #GLOBAL accelerator_level matches 1..2 run function quantum/give_great {amount:1}
execute if score #GLOBAL accelerator_level matches 3 run function quantum/give_great {amount:2}
execute if score #GLOBAL accelerator_level matches 4 run function quantum/give_great {amount:3}
title @s actionbar {text:"굉장한 양자 얽힘 파편을 획득했습니다!",color:"light_purple"}
