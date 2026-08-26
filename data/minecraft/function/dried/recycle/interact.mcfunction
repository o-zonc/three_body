# 소지한 유리병을 모두 회수합니다.
execute store result score #recycle_bottles tmp run clear @s minecraft:glass_bottle 0
execute unless score #recycle_bottles tmp matches 1.. run title @s actionbar {text:"재활용할 유리병이 없습니다.",color:"red"}
execute unless score #recycle_bottles tmp matches 1.. at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #recycle_bottles tmp matches 1.. run return 0
clear @s minecraft:glass_bottle

# 일반 보상량: 병 수 ~ 병 수 × (발굴 장치 레벨 + 1)
scoreboard players operation #recycle_level tmp = #dried_relic_level upgrade
execute if score #recycle_level tmp matches ..0 run scoreboard players set #recycle_level tmp 0
execute if score #recycle_level tmp matches 6.. run scoreboard players set #recycle_level tmp 5
scoreboard players operation #recycle_min tmp = #recycle_bottles tmp
scoreboard players operation #recycle_max tmp = #recycle_bottles tmp
scoreboard players operation #recycle_multiplier tmp = #recycle_level tmp
scoreboard players add #recycle_multiplier tmp 1
scoreboard players operation #recycle_max tmp *= #recycle_multiplier tmp
execute store result storage data tmp.recycle.min int 1 run scoreboard players get #recycle_min tmp
execute store result storage data tmp.recycle.max int 1 run scoreboard players get #recycle_max tmp
function dried/recycle/random_amount with storage data tmp.recycle

# 0.1% 흑요석, 1% 정보, 0.5% 시간, 나머지는 세 차원군에 균등 배분합니다.
execute store result score #recycle_rare_roll tmp run random value 0..999
execute if score #recycle_rare_roll tmp matches 0 run function dried/recycle/reward_obsidian
execute if score #recycle_rare_roll tmp matches 1..10 run function dried/recycle/reward_information
execute if score #recycle_rare_roll tmp matches 11..15 run function dried/recycle/reward_time
execute if score #recycle_rare_roll tmp matches 16..999 run function dried/recycle/reward_normal

playsound block.composter.ready weather @s ~ ~ ~ 0.8 1.1
return 1
