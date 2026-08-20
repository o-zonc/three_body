# 전용 custom_data가 붙은 아이템만 메타 자원으로 계산한다.
execute store result score #information_wallet tmp run clear @s minecraft:amethyst_shard[minecraft:custom_data~{three_body:{meta:"information"}}] 0
execute store result score #time_wallet tmp run clear @s minecraft:echo_shard[minecraft:custom_data~{three_body:{meta:"time"}}] 0

# 기존 사이드바와 레거시 UI를 위한 파생값이다. 실제 원장은 아이템과 meta 보관소다.
scoreboard players operation #information material = #information_wallet tmp
scoreboard players operation #information material += #information_bank meta
scoreboard players operation #time material = #time_wallet tmp
scoreboard players operation #time material += #time_bank meta
