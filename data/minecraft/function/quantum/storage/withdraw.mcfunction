execute unless score #broken_quantum_storage var = #broken_quantum_storage var run scoreboard players set #broken_quantum_storage var 0
execute unless score #broken_quantum_storage var matches 1.. run title @s actionbar {text:"저장된 깨진 양자 얽힘 파편이 없습니다.",color:"red",italic:true}
execute unless score #broken_quantum_storage var matches 1.. run return 0
scoreboard players operation #broken_quantum_withdraw tmp = #broken_quantum_storage var
data modify storage data tmp.quantum_withdraw set value {}
execute store result storage data tmp.quantum_withdraw.amount int 1 run scoreboard players get #broken_quantum_storage var
function quantum/give_broken with storage data tmp.quantum_withdraw
scoreboard players set #broken_quantum_storage var 0
playsound entity.item.pickup master @s ~ ~ ~ 0.8 1.2
title @s actionbar [{text:"",italic:false},{score:{name:"#broken_quantum_withdraw",objective:"tmp"},color:"white"},{text:"개의 깨진 양자 얽힘 파편을 인출했습니다.",color:"light_purple"}]
function quantum/storage/ui
