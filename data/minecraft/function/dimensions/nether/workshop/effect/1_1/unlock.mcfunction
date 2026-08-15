# 경험치 비용 해금은 제외하고, 현재 조건과 재료가 맞는 해금만 자동 처리

scoreboard players set #1_1_area_zone_unlocked tmp 0
execute unless score #1_1_done tmp matches 1 unless score #stone unlock matches 1 run function dimensions/nether/workshop/effect/1_1/unlock/stone
execute unless score #1_1_done tmp matches 1 unless score #mob unlock matches 1 run function dimensions/nether/workshop/effect/1_1/unlock/mob
execute unless score #1_1_done tmp matches 1 if score #nether_portal unlock matches 1 unless score #nether_entrance unlock matches 1 run function dimensions/nether/workshop/effect/1_1/unlock/nether_entrance
execute unless score #1_1_done tmp matches 1 if score #obsidian_storage_amount var matches 15.. unless score #area_zone unlock matches 1 run scoreboard players set #1_1_area_zone_unlocked tmp 1
execute if score #1_1_area_zone_unlocked tmp matches 1 run title @a[tag=player] actionbar "§6🍀 §3§l아차원 초월§7: 에리어 존 자동 해금"
execute if score #1_1_area_zone_unlocked tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_area_zone_unlocked tmp matches 1 run scoreboard players set #area_zone unlock 1
execute if score #1_1_area_zone_unlocked tmp matches 1 run scoreboard players set #1_1_done tmp 1
execute unless score #1_1_done tmp matches 1 if score #nether unlock matches 1 unless score #gold unlock matches 1 run function dimensions/nether/workshop/effect/1_1/unlock/gold
execute unless score #1_1_done tmp matches 1 if score #nether unlock matches 1 unless score #blaze unlock matches 1 run function dimensions/nether/workshop/effect/1_1/unlock/blaze