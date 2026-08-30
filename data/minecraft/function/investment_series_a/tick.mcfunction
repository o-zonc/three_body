# 시리즈 A 투자금: 천공의 제단에서 웅크리기 시작(edge) 시 사용
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand minecraft:brick[minecraft:custom_data~{investment_series_a:1b}] run function investment_series_a/use

# 실수로 버려도 사라지지 않도록 가까운 플레이어에게 즉시 되돌린다.
execute as @e[type=minecraft:item] if items entity @s contents minecraft:brick[minecraft:custom_data~{investment_series_a:1b}] run tag @s add dropped_investment_series_a
execute as @e[type=minecraft:item,tag=dropped_investment_series_a] run data merge entity @s {PickupDelay:0s}
execute as @e[type=minecraft:item,tag=dropped_investment_series_a] at @s if entity @p[tag=player,gamemode=adventure,distance=..4] run tp @s @p[tag=player,gamemode=adventure,distance=..4,sort=nearest,limit=1]
