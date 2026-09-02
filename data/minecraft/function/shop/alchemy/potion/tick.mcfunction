# 연금술 물약 런타임
# potion_used 통계와 직전 틱에 손에 들고 있던 커스텀 물약 태그를 조합해 섭취를 감지합니다.

# 기존 세이브에서도 첫 소비를 놓치지 않도록 누락된 플레이어 통계 기준값을 보정합니다.
execute as @a[tag=player] unless score @s potion_used matches 0.. run scoreboard players set @s potion_used 0
execute as @a[tag=player] unless score @s potion_used_prev matches 0.. run scoreboard players operation @s potion_used_prev = @s potion_used

# 구매 쿨타임은 era_paused 동안, 활성 카탈리스트 지속시간은 차원 이동 연출 중에만 멈춥니다.
execute unless score #GLOBAL era_paused matches 1 if score #catalyst_cooldown var matches 1.. run scoreboard players remove #catalyst_cooldown var 1
execute unless score #disaster_running run matches 1 if score #catalyst_timer var matches 1 if score #catalyst_level var matches 1.. as @a[tag=player] at @s run playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~ 1 2
execute unless score #disaster_running run matches 1 if score #catalyst_timer var matches 1.. run scoreboard players remove #catalyst_timer var 1

# 카탈리스트가 끝난 플레이어의 임시 효과와 채굴 속도 배율을 원래 값으로 돌립니다.
execute if score #catalyst_timer var matches 1.. as @a[tag=player,tag=catalyst_effect_active] run effect give @s minecraft:speed 2 2 true
execute if score #catalyst_timer var matches 1.. as @a[tag=player,tag=catalyst_effect_active] run effect clear @s minecraft:haste
execute unless score #catalyst_timer var matches 1.. as @a[tag=player,tag=catalyst_effect_active] run effect clear @s minecraft:speed
# 수정 전 카탈리스트가 남긴 성급함 효과도 종료 시 함께 정리합니다.
execute unless score #catalyst_timer var matches 1.. as @a[tag=player,tag=catalyst_effect_active] run effect clear @s minecraft:haste
execute unless score #catalyst_timer var matches 1.. as @a[tag=player,tag=catalyst_effect_active] run attribute @s minecraft:block_break_speed base set 1
execute unless score #catalyst_timer var matches 1.. run tag @a[tag=catalyst_effect_active] remove catalyst_effect_active

# 직전 틱에 추적한 물약을 실제로 마셨을 때만 각 효과를 실행합니다.
execute as @a[tag=player,tag=catalyst_i_owned] if score @s potion_used > @s potion_used_prev run function shop/alchemy/potion/activate {level:1,multiplier:2,duration:1200,roman:"I",break_speed:2}
execute as @a[tag=player,tag=!catalyst_i_owned,tag=catalyst_ii_owned] if score @s potion_used > @s potion_used_prev run function shop/alchemy/potion/activate {level:2,multiplier:3,duration:1800,roman:"II",break_speed:4}
execute as @a[tag=player,tag=!catalyst_i_owned,tag=!catalyst_ii_owned,tag=catalyst_iii_owned] if score @s potion_used > @s potion_used_prev run function shop/alchemy/potion/activate {level:3,multiplier:5,duration:2400,roman:"III",break_speed:8}
execute as @a[tag=player,tag=!catalyst_i_owned,tag=!catalyst_ii_owned,tag=!catalyst_iii_owned,tag=chaos_end_potion_owned] if score @s potion_used > @s potion_used_prev run function shop/alchemy/potion/use_chaos_end

# 이번 틱의 누적 사용 횟수를 다음 비교 기준으로 저장합니다.
execute as @a[tag=player] run scoreboard players operation @s potion_used_prev = @s potion_used

# 카탈리스트 보스바는 차원 이동과 무관하게 표시하되, 엔딩 연출 중에는 숨깁니다.
bossbar set catalyst_fever players @a[tag=player]
execute if score #catalyst_level var matches 1 run bossbar set catalyst_fever name {"text":"카탈리스트 I","color":"gold"}
execute if score #catalyst_level var matches 1 run bossbar set catalyst_fever max 1200
execute if score #catalyst_level var matches 2 run bossbar set catalyst_fever name {"text":"카탈리스트 II","color":"gold"}
execute if score #catalyst_level var matches 2 run bossbar set catalyst_fever max 1800
execute if score #catalyst_level var matches 3 run bossbar set catalyst_fever name {"text":"카탈리스트 III","color":"gold"}
execute if score #catalyst_level var matches 3 run bossbar set catalyst_fever max 2400
execute if score #catalyst_timer var matches 1.. store result bossbar catalyst_fever value run scoreboard players get #catalyst_timer var
execute if score #catalyst_timer var matches 1.. unless entity @a[tag=ending_active] run bossbar set catalyst_fever visible true
execute unless score #catalyst_timer var matches 1.. run bossbar set catalyst_fever visible false
execute unless score #catalyst_timer var matches 1.. run scoreboard players set #catalyst_level var 0
execute unless score #catalyst_timer var matches 1.. run scoreboard players set #catalyst_multiplier var 1

# 다음 섭취를 판정하기 위해 현재 손의 커스텀 물약을 기록합니다.
# 주 손에 일반 물약이 있으면 보조 손 커스텀 물약을 잘못 소비한 것으로 판정하지 않도록 주 손을 우선합니다.
tag @a remove catalyst_i_owned
tag @a remove catalyst_ii_owned
tag @a remove catalyst_iii_owned
tag @a remove chaos_end_potion_owned
tag @a remove alchemy_main_potion
execute as @a[tag=player] if items entity @s weapon.mainhand minecraft:potion run tag @s add alchemy_main_potion
execute as @a[tag=player,tag=alchemy_main_potion] if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data~{alchemy_fever_potion:1b,catalyst_level:1b}] run tag @s add catalyst_i_owned
execute as @a[tag=player,tag=alchemy_main_potion] if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data~{alchemy_fever_potion:1b,catalyst_level:2b}] run tag @s add catalyst_ii_owned
execute as @a[tag=player,tag=alchemy_main_potion] if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data~{alchemy_fever_potion:1b,catalyst_level:3b}] run tag @s add catalyst_iii_owned
execute as @a[tag=player,tag=alchemy_main_potion] if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] run tag @s add chaos_end_potion_owned
execute as @a[tag=player,tag=!alchemy_main_potion] if items entity @s weapon.offhand minecraft:potion[minecraft:custom_data~{alchemy_fever_potion:1b,catalyst_level:1b}] run tag @s add catalyst_i_owned
execute as @a[tag=player,tag=!alchemy_main_potion] if items entity @s weapon.offhand minecraft:potion[minecraft:custom_data~{alchemy_fever_potion:1b,catalyst_level:2b}] run tag @s add catalyst_ii_owned
execute as @a[tag=player,tag=!alchemy_main_potion] if items entity @s weapon.offhand minecraft:potion[minecraft:custom_data~{alchemy_fever_potion:1b,catalyst_level:3b}] run tag @s add catalyst_iii_owned
execute as @a[tag=player,tag=!alchemy_main_potion] if items entity @s weapon.offhand minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] run tag @s add chaos_end_potion_owned
tag @a remove alchemy_main_potion
