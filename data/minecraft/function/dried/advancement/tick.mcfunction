# 열기를 10,000개 이상 보유하면 [뜨거워!] 발전과제를 달성합니다.
execute if score #heat material matches 10000.. as @a[tag=player] unless entity @s[advancements={2_dried/03_hot=true}] run function dried/advancement/hot_unlock
