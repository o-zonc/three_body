# 청동기 시대에 철 해금에 필요한 자원 조건을 달성하면 철기 시대로 진입한다.
# unlock 값과 실제 해금 동작은 읽거나 호출하지 않는다.
execute unless score #overworld civilization_age matches 3 run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.iron.unlock_cost
execute store result score #age_entry_condition tmp run function resource/check_cost
execute unless score #age_entry_condition tmp matches 1 run return 0
execute as @a[tag=player,limit=1] at @s run function story/overworld/age/22_iron_age
return 1
