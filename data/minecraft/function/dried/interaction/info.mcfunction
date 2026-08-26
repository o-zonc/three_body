execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute store result score #dried_heat_amount tmp run function resource/material/heat/amount
function util/blank

execute if score #GLOBAL era_paused matches 1 run tellraw @s ["",{text:"  [ 메마른 세계 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n  메마른 세계에 오신 것을 환영합니다."},{text:"\n\n  뜨거운 모래와 폐허만 남은 세계입니다.\n  일반 자원 §6금§r과 특수 자원 §c열기§r를 획득할 수 있습니다."},{text:"\n\n  §8•§7 열기 수급량: ",bold:false},{score:{name:"#dried_heat_amount",objective:"tmp"},color:"red"},{text:"§7개 / 지급"},{text:" §c(시간 정지로 생산 중단)",italic:true},{text:"\n"}]
execute unless score #GLOBAL era_paused matches 1 run tellraw @s ["",{text:"  [ 메마른 세계 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n  메마른 세계에 오신 것을 환영합니다."},{text:"\n\n  뜨거운 모래와 폐허만 남은 세계입니다.\n  일반 자원 §6금§r과 특수 자원 §c열기§r를 획득할 수 있습니다."},{text:"\n\n  §8•§7 열기 수급량: ",bold:false},{score:{name:"#dried_heat_amount",objective:"tmp"},color:"red"},{text:"§7개 / 지급"},{text:"\n"}]
