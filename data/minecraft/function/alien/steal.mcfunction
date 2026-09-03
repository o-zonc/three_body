scoreboard players set #alien_divisor tmp 100
execute store result score #alien_percent_roll tmp run random value 0..99
scoreboard players set #alien_percent tmp 1
execute if score #alien_percent_roll tmp matches 60..89 run scoreboard players set #alien_percent tmp 2
execute if score #alien_percent_roll tmp matches 90..99 run scoreboard players set #alien_percent tmp 3
scoreboard players operation #alien_iron tmp = #iron material
scoreboard players operation #alien_lapis tmp = #lapis material
scoreboard players operation #alien_gold tmp = #gold material
scoreboard players operation #alien_diamond tmp = #diamond material

# 보유량을 100으로 나눈 몹과 나머지를 각각 계산해 오버플로 없이 floor(보유량 * 탈취율 / 100)을 구한다.
scoreboard players operation #alien_iron_remainder tmp = #alien_iron tmp
scoreboard players operation #alien_lapis_remainder tmp = #alien_lapis tmp
scoreboard players operation #alien_gold_remainder tmp = #alien_gold tmp
scoreboard players operation #alien_diamond_remainder tmp = #alien_diamond tmp
scoreboard players operation #alien_iron tmp /= #alien_divisor tmp
scoreboard players operation #alien_lapis tmp /= #alien_divisor tmp
scoreboard players operation #alien_gold tmp /= #alien_divisor tmp
scoreboard players operation #alien_diamond tmp /= #alien_divisor tmp
scoreboard players operation #alien_iron tmp *= #alien_percent tmp
scoreboard players operation #alien_lapis tmp *= #alien_percent tmp
scoreboard players operation #alien_gold tmp *= #alien_percent tmp
scoreboard players operation #alien_diamond tmp *= #alien_percent tmp
scoreboard players operation #alien_iron_remainder tmp %= #alien_divisor tmp
scoreboard players operation #alien_lapis_remainder tmp %= #alien_divisor tmp
scoreboard players operation #alien_gold_remainder tmp %= #alien_divisor tmp
scoreboard players operation #alien_diamond_remainder tmp %= #alien_divisor tmp
scoreboard players operation #alien_iron_remainder tmp *= #alien_percent tmp
scoreboard players operation #alien_lapis_remainder tmp *= #alien_percent tmp
scoreboard players operation #alien_gold_remainder tmp *= #alien_percent tmp
scoreboard players operation #alien_diamond_remainder tmp *= #alien_percent tmp
scoreboard players operation #alien_iron_remainder tmp /= #alien_divisor tmp
scoreboard players operation #alien_lapis_remainder tmp /= #alien_divisor tmp
scoreboard players operation #alien_gold_remainder tmp /= #alien_divisor tmp
scoreboard players operation #alien_diamond_remainder tmp /= #alien_divisor tmp
scoreboard players operation #alien_iron tmp += #alien_iron_remainder tmp
scoreboard players operation #alien_lapis tmp += #alien_lapis_remainder tmp
scoreboard players operation #alien_gold tmp += #alien_gold_remainder tmp
scoreboard players operation #alien_diamond tmp += #alien_diamond_remainder tmp
execute if score #alien_iron tmp matches ..-1 run scoreboard players set #alien_iron tmp 0
execute if score #alien_lapis tmp matches ..-1 run scoreboard players set #alien_lapis tmp 0
execute if score #alien_gold tmp matches ..-1 run scoreboard players set #alien_gold tmp 0
execute if score #alien_diamond tmp matches ..-1 run scoreboard players set #alien_diamond tmp 0
scoreboard players operation #iron material -= #alien_iron tmp
scoreboard players operation #lapis material -= #alien_lapis tmp
scoreboard players operation #gold material -= #alien_gold tmp
scoreboard players operation #diamond material -= #alien_diamond tmp
scoreboard players set #GLOBAL alien_timer 1200
playsound block.respawn_anchor.deplete weather @a ~ ~ ~ 0.7 0.7
tellraw @a ["",{text:"[외계 간섭] ",color:"dark_red"},{text:"보호되지 않은 자원이 탈취되었습니다: ",color:"red"},{text:"철 ",color:"white"},{score:{name:"#alien_iron",objective:"tmp"}},{text:", 청금석 ",color:"blue"},{score:{name:"#alien_lapis",objective:"tmp"}},{text:", 금 ",color:"gold"},{score:{name:"#alien_gold",objective:"tmp"}},{text:", 다이아몬드 ",color:"aqua"},{score:{name:"#alien_diamond",objective:"tmp"}}]
