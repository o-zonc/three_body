# 전용 custom_data가 붙은 아이템만 메타 자원의 현재 소지량으로 계산한다.
execute store result score #information_wallet tmp run clear @s minecraft:amethyst_shard[minecraft:custom_data~{three_body:{meta:"information"}}] 0
execute store result score #time_wallet tmp run clear @s minecraft:echo_shard[minecraft:custom_data~{three_body:{meta:"time"}}] 0
execute store result score #obsidian_wallet tmp run clear @s minecraft:paper[minecraft:custom_data~{three_body:{meta:"obsidian"}}] 0

# 실제 원장은 '소지 아이템 + meta 보관소'다.
# material은 사이드바와 레거시 UI를 위한 읽기 전용 파생값으로만 갱신한다.
scoreboard players operation #information material = #information_wallet tmp
scoreboard players operation #information material += #information_bank meta
scoreboard players operation #time material = #time_wallet tmp
scoreboard players operation #time material += #time_bank meta

# 흑요석은 보관소 없이 인벤토리 소지량 자체가 원장입니다.
scoreboard players operation #obsidian material = #obsidian_wallet tmp
