execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
function meta/sync
scoreboard players operation #information_bank_visible tmp = #information_bank meta
execute if score #information_bank_visible tmp matches 2001.. run scoreboard players set #information_bank_visible tmp 2000
data modify storage data tmp.information_bank_limit set value {text:" / 2000조각",color:"gray"}
tellraw @s ["",{text:"  [ 정보 ]",color:"light_purple",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 아이템: §f자수정 조각"},{text:"\n  §8•§7 소지량: ",extra:[{score:{name:"#information_wallet",objective:"tmp"},color:"white"},{text:"§7 / "},{score:{name:"#information_capacity",objective:"meta"},color:"white"},{text:"§7조각"}]},{text:"\n  §8•§7 보관량: ",extra:[{score:{name:"#information_bank_visible",objective:"tmp"},color:"light_purple"},{storage:"data",nbt:"tmp.information_bank_limit",interpret:true}]},{text:"\n"}]
