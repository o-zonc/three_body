# 다이아몬드는 공통 생산량 보너스에 극한 환경 수급 배수를 적용한 뒤 전용 보너스를 더합니다.
scoreboard players set #production_amount tmp 1
execute store result score #production_common_bonus tmp run function resource/production/base
scoreboard players remove #production_common_bonus tmp 1
execute store result score #production_extreme_multiplier tmp run function resource/production/extreme_multiplier
scoreboard players operation #production_common_bonus tmp *= #production_extreme_multiplier tmp
scoreboard players operation #production_amount tmp += #production_common_bonus tmp
execute if score #diamond_second_lvl upgrade matches 1 run scoreboard players add #production_amount tmp 1
execute if score #diamond_second_lvl upgrade matches 2 run scoreboard players add #production_amount tmp 2
execute if score #diamond_second_lvl upgrade matches 3 run scoreboard players add #production_amount tmp 5
execute if score #diamond_second_lvl upgrade matches 4.. run scoreboard players add #production_amount tmp 10
execute store result score #production_multiplier tmp run function resource/shop/value {id:"diamond"}
scoreboard players operation #production_amount tmp *= #production_multiplier tmp
return run scoreboard players get #production_amount tmp
