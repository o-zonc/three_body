execute unless score #broken_quantum_storage var = #broken_quantum_storage var run scoreboard players set #broken_quantum_storage var 0
execute store result score #broken_quantum_deposit tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0
execute unless score #broken_quantum_deposit tmp matches 1.. run title @s actionbar {text:"저장할 깨진 양자 얽힘 파편이 없습니다.",color:"red"}
execute unless score #broken_quantum_deposit tmp matches 1.. run return 0
clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}]
scoreboard players operation #broken_quantum_storage var += #broken_quantum_deposit tmp
playsound entity.item.pickup master @s ~ ~ ~ 0.8 0.8
title @s actionbar [{score:{name:"#broken_quantum_deposit",objective:"tmp"},color:"white"},{text:"개의 깨진 양자 얽힘 파편을 저장했습니다.",color:"aqua"}]
