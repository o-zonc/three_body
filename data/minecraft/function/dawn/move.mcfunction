# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear
function mover/local/recover

execute in dawn run tp @a 0 64 0
execute in dawn run weather clear
function mover/items/arrive_other

execute in dawn run time set 23000
gamerule advance_time false

# 깨달음을 소비해 여명에 진입하면 추가 상점과 리액터를 해금한다.
execute as @a[tag=player,limit=1] if items entity @s weapon.mainhand minecraft:white_dye[minecraft:custom_data~{epiphany:1b}] run scoreboard players set #GLOBAL dawn_bonus_shop 1

scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL current_dim 4
execute unless score #world_eye unlock matches 1 as @a at @s run function resource/effect/unlock_success
scoreboard players set #world_eye unlock 1
execute if score #GLOBAL dawn_bonus_shop matches 1.. as @a[tag=player,limit=1] run function dawn/bonus_shop/unlock
