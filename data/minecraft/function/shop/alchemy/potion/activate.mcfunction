# 카탈리스트 활성화
# Macro args: level, multiplier, duration, roman, break_speed
$scoreboard players set #catalyst_level var $(level)
$scoreboard players set #catalyst_multiplier var $(multiplier)
$scoreboard players set #catalyst_timer var $(duration)
tag @s add catalyst_effect_active
$attribute @s minecraft:block_break_speed base set $(break_speed)
effect give @s minecraft:haste infinite 2 true
$bossbar set catalyst_fever name {"text":"카탈리스트 $(roman)","color":"gold"}
$bossbar set catalyst_fever max $(duration)
$bossbar set catalyst_fever value $(duration)
bossbar set catalyst_fever color yellow
bossbar set catalyst_fever style progress
bossbar set catalyst_fever players @a[tag=player]
bossbar set catalyst_fever visible true
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.35
$title @s actionbar [{text:"",italic:false},{text:"카탈리스트 $(roman) 활성화",color:"gold",bold:true},{text:"  채굴 자원 ×$(multiplier)",color:"yellow",bold:false},{text:"  채굴 속도 ×$(break_speed)",color:"aqua",bold:false},{text:"  신속 III",color:"green",bold:false}]
return 1
