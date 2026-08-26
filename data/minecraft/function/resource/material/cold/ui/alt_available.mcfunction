scoreboard players operation #cold_alt_gain tmp = #cold material
execute if score #cold_alt_gain tmp matches ..0 run scoreboard players set #cold_alt_gain tmp 1
execute on target run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute on target run function util/blank
execute on target run tellraw @s ["",{text:"  [ 냉기 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 상태: §b채굴 가능"},{text:"\n  §8•§7 보유 냉기: ",extra:[{score:{name:"#cold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 획득 예정: ",extra:[{score:{name:"#cold_alt_gain",objective:"tmp"},color:"aqua"},{text:"§7개"},{text:"\n\n  §8§o이 냉기 자원은 다시 생성되지 않습니다."}]},{text:"\n"}]
