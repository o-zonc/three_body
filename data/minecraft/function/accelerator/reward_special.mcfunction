execute if score #GLOBAL accelerator_level matches 1..3 run function quantum/give_special {amount:1}
execute if score #GLOBAL accelerator_level matches 4 run function quantum/give_special {amount:2}
title @s actionbar {text:"특별한 양자 얽힘 파편을 획득했습니다!",color:"#F971BE"}
