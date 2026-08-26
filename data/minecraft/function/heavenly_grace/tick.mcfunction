# 하늘의 은총: 천공의 제단에서 웅크리기 시작(edge) 시 사용
execute as @a[tag=player,tag=shift] at @s if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{heavenly_grace:1b}] run function heavenly_grace/use

# 실수로 버려도 사라지지 않도록 가까운 플레이어에게 즉시 되돌린다.
execute as @e[type=minecraft:item] if items entity @s contents minecraft:paper[minecraft:custom_data~{heavenly_grace:1b}] run tag @s add dropped_heavenly_grace
execute as @e[type=minecraft:item,tag=dropped_heavenly_grace] run data merge entity @s {PickupDelay:0s}
execute as @e[type=minecraft:item,tag=dropped_heavenly_grace] at @s if entity @p[tag=player,gamemode=adventure,distance=..4] run tp @s @p[tag=player,gamemode=adventure,distance=..4,sort=nearest,limit=1]
