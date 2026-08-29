# 새로 생성된 item 엔티티만 한 번 검사합니다.
# 보호 대상은 protected_drop 태그를 받아 주울 때까지 플레이어 쪽으로 되돌립니다.
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{disaster:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{dried_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{frozen_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{overworld_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{overworld_escape:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{cosmos_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{dev_polarnight_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{dev_dawn_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{altar_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{shop_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{alchemy_move:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{epiphany:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{reactor:1b}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{three_body:{meta:"information"}}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{three_body:{meta:"time"}}] run tag @s add protected_drop
execute as @e[type=minecraft:item,tag=!drop_checked] if items entity @s contents *[minecraft:custom_data~{tool:{}}] run tag @s add protected_drop

# 일반 드롭도 다시 같은 custom_data 검사를 하지 않도록 검사 완료를 기록합니다.
tag @e[type=minecraft:item,tag=!drop_checked] add drop_checked

execute as @e[type=minecraft:item,tag=protected_drop] run data merge entity @s {PickupDelay:0s}
execute as @e[type=minecraft:item,tag=protected_drop] at @s if entity @p[tag=player,gamemode=adventure,distance=..4] run tp @s @p[tag=player,gamemode=adventure,distance=..4,sort=nearest,limit=1]
