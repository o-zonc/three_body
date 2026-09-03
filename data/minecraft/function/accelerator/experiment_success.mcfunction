# 성공 보상
# 실제 획득량을 결과 액션바에 표시하기 위해 지급 전 소지량을 기록한다.
execute store result score #experiment_common_before tmp run clear @s minecraft:cyan_dye[minecraft:custom_data~{three_body:{quantum:"common"}}] 0
execute store result score #experiment_great_before tmp run clear @s minecraft:purple_dye[minecraft:custom_data~{three_body:{quantum:"great"}}] 0
execute store result score #experiment_special_before tmp run clear @s minecraft:pink_dye[minecraft:custom_data~{three_body:{quantum:"special"}}] 0

# 양자 충돌 실험: 한 등급만 획득하며, 레벨이 높을수록 고급 결과 확률이 증가한다.
execute if score @s experiment_type matches 10 store result score #experiment_reward_roll tmp run random value 0..99
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 1 if score #experiment_reward_roll tmp matches 0..69 run function accelerator/reward_common
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 1 if score #experiment_reward_roll tmp matches 70..89 run function accelerator/reward_great
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 1 if score #experiment_reward_roll tmp matches 90..99 run function accelerator/reward_special
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 2 if score #experiment_reward_roll tmp matches 0..64 run function accelerator/reward_common
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 2 if score #experiment_reward_roll tmp matches 65..87 run function accelerator/reward_great
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 2 if score #experiment_reward_roll tmp matches 88..99 run function accelerator/reward_special
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 3 if score #experiment_reward_roll tmp matches 0..59 run function accelerator/reward_common
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 3 if score #experiment_reward_roll tmp matches 60..84 run function accelerator/reward_great
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 3 if score #experiment_reward_roll tmp matches 85..99 run function accelerator/reward_special
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 4 if score #experiment_reward_roll tmp matches 0..54 run function accelerator/reward_common
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 4 if score #experiment_reward_roll tmp matches 55..81 run function accelerator/reward_great
execute if score @s experiment_type matches 10 if score #GLOBAL accelerator_level matches 4 if score #experiment_reward_roll tmp matches 82..99 run function accelerator/reward_special

# 중입자 충돌 실험: 일반/굉장한/특별한 파편을 각각 독립 추첨한다.
execute if score @s experiment_type matches 11 run scoreboard players set #experiment_mode tmp 2
execute if score @s experiment_type matches 11 run function accelerator/reward_common
execute if score @s experiment_type matches 11 run function accelerator/reward_great
execute if score @s experiment_type matches 11 run function accelerator/reward_special
# 성공 여부가 아니라 중입자 충돌 실험을 끝까지 수행한 것이 발견 조건이다.
execute if score @s experiment_type matches 11 unless entity @s[advancements={0_overworld/22_heavy_ion_experiment=true}] run advancement grant @s only 0_overworld/22_heavy_ion_experiment

# 시공간 붕괴 실험: 세 등급 독립 추첨 + 커스텀 흑요석 1개
execute if score @s experiment_type matches 12 run scoreboard players set #spacetime_experiment_done var 1
execute if score @s experiment_type matches 12 run scoreboard players set #experiment_mode tmp 3
execute if score @s experiment_type matches 12 run function accelerator/reward_common
execute if score @s experiment_type matches 12 run function accelerator/reward_great
execute if score @s experiment_type matches 12 run function accelerator/reward_special
execute if score @s experiment_type matches 12 run function meta/obsidian/give_item {amount:1}
execute if score @s experiment_type matches 12 run function meta/sync

# 지급 후 수량 차이로 이번 실험에서 실제 획득한 파편을 계산한다.
execute store result score #experiment_common_gained tmp run clear @s minecraft:cyan_dye[minecraft:custom_data~{three_body:{quantum:"common"}}] 0
scoreboard players operation #experiment_common_gained tmp -= #experiment_common_before tmp
execute store result score #experiment_great_gained tmp run clear @s minecraft:purple_dye[minecraft:custom_data~{three_body:{quantum:"great"}}] 0
scoreboard players operation #experiment_great_gained tmp -= #experiment_great_before tmp
execute store result score #experiment_special_gained tmp run clear @s minecraft:pink_dye[minecraft:custom_data~{three_body:{quantum:"special"}}] 0
scoreboard players operation #experiment_special_gained tmp -= #experiment_special_before tmp

# 정상 재정비 시간
execute if score #GLOBAL accelerator_level matches 1 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."1".experiment_cooldown
execute if score #GLOBAL accelerator_level matches 2 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."2".experiment_cooldown
execute if score #GLOBAL accelerator_level matches 3 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."3".experiment_cooldown
execute if score #GLOBAL accelerator_level matches 4 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."4".experiment_cooldown
function dried/stronghold/apply_dried_accelerator

scoreboard players set #experiment_mode tmp 0
playsound block.beacon.activate master @s ~ ~ ~ 1 1.35
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.6

# 결과는 채팅이 아니라 기존 성공 액션바에 실제 획득 파편을 함께 표시한다.
execute if score #experiment_common_gained tmp matches 1.. unless score #experiment_great_gained tmp matches 1.. unless score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"일반 ",color:"#FFDD99",bold:false},{score:{name:"#experiment_common_gained",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false}]
execute unless score #experiment_common_gained tmp matches 1.. if score #experiment_great_gained tmp matches 1.. unless score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"굉장한 ",color:"#D67B5B",bold:false},{score:{name:"#experiment_great_gained",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false}]
execute unless score #experiment_common_gained tmp matches 1.. unless score #experiment_great_gained tmp matches 1.. if score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"특별한 ",color:"#6EC59F",bold:false},{score:{name:"#experiment_special_gained",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false}]
execute if score #experiment_common_gained tmp matches 1.. if score #experiment_great_gained tmp matches 1.. unless score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"일반 ",color:"#FFDD99",bold:false},{score:{name:"#experiment_common_gained",objective:"tmp"},color:"white",bold:false},{text:"개, ",color:"gray",bold:false},{text:"굉장한 ",color:"#D67B5B",bold:false},{score:{name:"#experiment_great_gained",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false}]
execute if score #experiment_common_gained tmp matches 1.. unless score #experiment_great_gained tmp matches 1.. if score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"일반 ",color:"#FFDD99",bold:false},{score:{name:"#experiment_common_gained",objective:"tmp"},color:"white",bold:false},{text:"개, ",color:"gray",bold:false},{text:"특별한 ",color:"#6EC59F",bold:false},{score:{name:"#experiment_special_gained",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false}]
execute unless score #experiment_common_gained tmp matches 1.. if score #experiment_great_gained tmp matches 1.. if score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"굉장한 ",color:"#D67B5B",bold:false},{score:{name:"#experiment_great_gained",objective:"tmp"},color:"white",bold:false},{text:"개, ",color:"gray",bold:false},{text:"특별한 ",color:"#6EC59F",bold:false},{score:{name:"#experiment_special_gained",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false}]
execute if score #experiment_common_gained tmp matches 1.. if score #experiment_great_gained tmp matches 1.. if score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"일반 ",color:"#FFDD99",bold:false},{score:{name:"#experiment_common_gained",objective:"tmp"},color:"white",bold:false},{text:"개, ",color:"gray",bold:false},{text:"굉장한 ",color:"#D67B5B",bold:false},{score:{name:"#experiment_great_gained",objective:"tmp"},color:"white",bold:false},{text:"개, ",color:"gray",bold:false},{text:"특별한 ",color:"#6EC59F",bold:false},{score:{name:"#experiment_special_gained",objective:"tmp"},color:"white",bold:false},{text:"개",color:"gray",bold:false}]
execute unless score #experiment_common_gained tmp matches 1.. unless score #experiment_great_gained tmp matches 1.. unless score #experiment_special_gained tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"실험 성공!  ",color:"green",bold:true},{text:"획득한 파편 없음",color:"dark_gray",bold:false}]

tag @s remove accelerator_experiment_running
scoreboard players set @s experiment_delay 0
scoreboard players set @s experiment_type 0
