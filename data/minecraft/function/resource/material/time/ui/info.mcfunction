execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
function meta/sync
scoreboard players operation #time_bank_visible tmp = #time_bank meta
execute unless score #time_bank_unlocked meta matches 1.. if score #time_bank_visible tmp matches 1001.. run scoreboard players set #time_bank_visible tmp 1000
data modify storage data tmp.time_bank_limit set value {text:" / 1000조각",color:"gray"}
execute if score #time_bank_unlocked meta matches 1.. run data modify storage data tmp.time_bank_limit set value {text:"조각 (상한 해제)",color:"gray"}
tellraw @s ["",{text:"  [ 시간 ]",color:"dark_aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 아이템: §f메아리 조각"},{text:"\n  §8•§7 소지량: ",extra:[{score:{name:"#time_wallet",objective:"tmp"},color:"white"},{text:"§7 / "},{score:{name:"#time_capacity",objective:"meta"},color:"white"},{text:"§7조각"}]},{text:"\n  §8•§7 보관량: ",extra:[{score:{name:"#time_bank_visible",objective:"tmp"},color:"dark_aqua"},{storage:"data",nbt:"tmp.time_bank_limit",interpret:true}]},{text:"\n"}]
