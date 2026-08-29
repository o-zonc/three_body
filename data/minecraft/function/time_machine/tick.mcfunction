# time_machine_level 자체가 건설/세대 상태의 authoritative 값이므로 advancement 검색을 매 tick 반복하지 않습니다.
execute unless score #GLOBAL time_machine_level matches 1.. run return 0
execute unless entity @a[tag=player] run return 0
execute if score #GLOBAL era_paused matches 1 run return 0

# 생산량/주기는 연구·세대 변경 시 계산된 캐시를 사용합니다.
execute unless score #time_machine_timer generate matches 1.. run scoreboard players operation #time_machine_timer generate = #time_machine_interval_cached var
scoreboard players remove #time_machine_timer generate 1
execute if score #time_machine_timer generate matches ..0 as @a[tag=player,limit=1] run function time_machine/produce
