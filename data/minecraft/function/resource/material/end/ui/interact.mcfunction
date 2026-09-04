execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2

execute unless entity @s[advancements={3_polarnight/01_ending=true}] run tellraw @s "§7..."

execute if entity @s[advancements={3_polarnight/01_ending=true}] run function util/blank
execute if entity @s[advancements={0_overworld/26_all_general=true}] run tellraw @s ["",{text:"  [ 세계의 끝 ]",color:"#9EF971",bold:true,shadow_color:-16777216},{text:"\n\n  모든 발전과제를 완료했다.",color:"gray",bold:false},{text:"\n  이 석영 블록은 뭘까? 한번 캐 보자.",color:"dark_gray",italic:true},{text:"\n"}]
execute if entity @s[advancements={0_overworld/26_all_general=true}] run return 0
execute if score #time_axis_open var matches 1 run tellraw @s ["",{text:"  [ 세계의 끝 ]",color:"#9EF971",bold:true,shadow_color:-16777216},{text:"\n\n  모든 발전과제를 완료해 보자",color:"gray",bold:false},{text:"\n"}]
execute if score #time_axis_open var matches 1 run return 0
execute if entity @s[advancements={3_polarnight/01_ending=true}] run tellraw @s ["",{text:"  [ §kQWERTY§r ]",color:"dark_purple",bold:true,shadow_color:-16777216},{text:"\n\n  무엇에 사용되는지 알 수 없다...",color:"gray",bold:false},{text:"\n"}]
