# 관측소의 충전된 리스폰 정박기(era interaction) 곁에서만 시간 제어를 허용한다.
execute unless dimension minecraft:overworld run title @s actionbar {text:"관측소에서만 시간의 흐름을 제어할 수 있습니다.",color:"red",italic:true}
execute unless dimension minecraft:overworld run return 0
execute at @e[type=interaction,tag=era,limit=1] unless entity @s[distance=..5.0] run title @s actionbar {text:"관측소에서만 시간의 흐름을 제어할 수 있습니다.",color:"red",italic:true}
execute at @e[type=interaction,tag=era,limit=1] unless entity @s[distance=..5.0] run return 0


scoreboard players set #GLOBAL era_paused 0
scoreboard players set #GLOBAL era_observed 0

execute at @s run title @a actionbar {"text": "시간이 다시 흘러갑니다.", "color":"green", italic:true}
