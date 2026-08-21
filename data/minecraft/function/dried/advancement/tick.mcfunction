# 열기를 10,000개 이상 보유하면 [뜨거워!] 발전과제를 달성합니다.
execute if score #heat material matches 10000.. as @a[tag=player] unless entity @s[advancements={2_dried/03_hot=true}] run function dried/advancement/hot_unlock

# 발전과제 보유자가 없으면 보상 타이머를 초기화합니다.
execute unless entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players set #dried_hot_haste_timer advancement 0

# [뜨거워!] 보상: 10초마다 성급함 I을 12초간 갱신합니다.
execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players add #dried_hot_haste_timer advancement 1
execute if score #dried_hot_haste_timer advancement matches 200.. as @a[tag=player,advancements={2_dried/03_hot=true}] run function dried/advancement/hot_haste
execute if score #dried_hot_haste_timer advancement matches 200.. run scoreboard players set #dried_hot_haste_timer advancement 0
