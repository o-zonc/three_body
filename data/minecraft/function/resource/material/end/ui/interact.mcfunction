execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2

execute unless entity @s[tag=ending_seen] run tellraw @s "§7..."

execute if entity @s[tag=ending_seen] run function util/blank
execute if entity @s[tag=ending_seen] run tellraw @s ["",{text:"  [ §kQWERTY§r ]",color:"dark_purple",bold:true,shadow_color:-16777216},{text:"\n\n  무엇에 사용되는지 알 수 없다...",color:"gray",bold:false},{text:"\n"}]
execute if entity @s[tag=ending_seen] run return 0