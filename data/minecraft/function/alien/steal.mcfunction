scoreboard players set #alien_divisor tmp 100
scoreboard players operation #alien_iron tmp = #iron material
scoreboard players operation #alien_lapis tmp = #lapis material
scoreboard players operation #alien_gold tmp = #gold material
scoreboard players operation #alien_diamond tmp = #diamond material
scoreboard players operation #alien_iron tmp /= #alien_divisor tmp
scoreboard players operation #alien_lapis tmp /= #alien_divisor tmp
scoreboard players operation #alien_gold tmp /= #alien_divisor tmp
scoreboard players operation #alien_diamond tmp /= #alien_divisor tmp
scoreboard players operation #iron material -= #alien_iron tmp
scoreboard players operation #lapis material -= #alien_lapis tmp
scoreboard players operation #gold material -= #alien_gold tmp
scoreboard players operation #diamond material -= #alien_diamond tmp
scoreboard players set #GLOBAL alien_timer 1200
playsound block.respawn_anchor.deplete weather @a ~ ~ ~ 0.7 0.7
tellraw @a ["",{text:"[외계 간섭] ",color:"dark_red"},{text:"보호되지 않은 자원이 탈취되었습니다: ",color:"red"},{text:"철 ",color:"white"},{score:{name:"#alien_iron",objective:"tmp"}},{text:", 청금석 ",color:"blue"},{score:{name:"#alien_lapis",objective:"tmp"}},{text:", 금 ",color:"gold"},{score:{name:"#alien_gold",objective:"tmp"}},{text:", 다이아몬드 ",color:"aqua"},{score:{name:"#alien_diamond",objective:"tmp"}}]
