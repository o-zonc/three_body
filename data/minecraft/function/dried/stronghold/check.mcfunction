execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function dried/stronghold/complete
function util/blank
tellraw @s ["",{text:"  [ 차원 유적지 복구 현황 ]",color:"gold",bold:true},{text:"\n"}]
execute if score #stronghold_overworld upgrade matches 1.. run tellraw @s {text:"  ✔ 오버월드 유적지 복구 완료",color:"green"}
execute if score #stronghold_frozen upgrade matches 1.. run tellraw @s {text:"  ✔ 얼어붙은 세계 유적지 복구 완료",color:"aqua"}
execute if score #stronghold_dried upgrade matches 1.. run tellraw @s {text:"  ✔ 메마른 세계 유적지 복구 완료",color:"gold"}
execute unless score #stronghold_overworld upgrade matches 1.. run tellraw @s {text:"  ✘ 오버월드 유적지 미복구",color:"dark_gray"}
execute unless score #stronghold_frozen upgrade matches 1.. run tellraw @s {text:"  ✘ 얼어붙은 세계 유적지 미복구",color:"dark_gray"}
execute unless score #stronghold_dried upgrade matches 1.. run tellraw @s {text:"  ✘ 메마른 세계 유적지 미복구",color:"dark_gray"}
execute if score #stronghold_overworld upgrade matches 1.. if score #stronghold_frozen upgrade matches 1.. if score #stronghold_dried upgrade matches 1.. run tellraw @s {text:"\n  모든 차원 유적지가 복구되었습니다.",color:"green",bold:true}

tellraw @s [""]
