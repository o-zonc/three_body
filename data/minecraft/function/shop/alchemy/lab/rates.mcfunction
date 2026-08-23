# 마법 연구소 연구 레벨에 따른 쿨타임 감소율 계산
# 결과: #alchemy_lab_early_rate, #alchemy_lab_precious_rate, #alchemy_lab_elemental_rate (tmp)
execute unless score #alchemy_lab_level upgrade = #alchemy_lab_level upgrade run scoreboard players set #alchemy_lab_level upgrade 0
execute if score #alchemy_lab_level upgrade matches ..-1 run scoreboard players set #alchemy_lab_level upgrade 0
execute if score #alchemy_lab_level upgrade matches 16.. run scoreboard players set #alchemy_lab_level upgrade 15

# 에메랄드/청금석: Lv.1부터 10%p씩, 최대 50%
scoreboard players operation #alchemy_lab_early_rate tmp = #alchemy_lab_level upgrade
scoreboard players set #alchemy_lab_early_step tmp 10
scoreboard players operation #alchemy_lab_early_rate tmp *= #alchemy_lab_early_step tmp
execute if score #alchemy_lab_early_rate tmp matches 51.. run scoreboard players set #alchemy_lab_early_rate tmp 50

# 금/다이아몬드: Lv.1부터 4%p씩, 최대 40%
scoreboard players operation #alchemy_lab_precious_rate tmp = #alchemy_lab_level upgrade
scoreboard players set #alchemy_lab_precious_step tmp 4
scoreboard players operation #alchemy_lab_precious_rate tmp *= #alchemy_lab_precious_step tmp
execute if score #alchemy_lab_precious_rate tmp matches 41.. run scoreboard players set #alchemy_lab_precious_rate tmp 40

# 열기/냉기: Lv.6부터 3%p씩, 최대 30%
scoreboard players operation #alchemy_lab_elemental_rate tmp = #alchemy_lab_level upgrade
scoreboard players remove #alchemy_lab_elemental_rate tmp 5
execute if score #alchemy_lab_elemental_rate tmp matches ..0 run scoreboard players set #alchemy_lab_elemental_rate tmp 0
scoreboard players set #alchemy_lab_elemental_step tmp 3
scoreboard players operation #alchemy_lab_elemental_rate tmp *= #alchemy_lab_elemental_step tmp
execute if score #alchemy_lab_elemental_rate tmp matches 31.. run scoreboard players set #alchemy_lab_elemental_rate tmp 30
