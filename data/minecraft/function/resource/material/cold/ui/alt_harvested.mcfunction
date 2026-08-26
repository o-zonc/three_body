execute on target run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute on target run function util/blank
execute on target run tellraw @s ["",{text:"  [ 냉기 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 상태: §8채굴 완료"},{text:"\n"}]
execute if entity @s[tag=view] on target run tellraw @s {text:"  §8§o이 세계에 남은 마지막 문명을 둘러보세요\n"}
