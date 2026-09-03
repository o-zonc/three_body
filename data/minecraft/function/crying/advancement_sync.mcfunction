# 우는 흑요석 발전과제 동기화
# 네 수집 플래그를 기준으로 4개 세계의 진행 조건을 정확히 맞춘다.
execute unless score #crying_overworld var matches 1 run advancement revoke @s only 3_polarnight/90_crying_obsidian overworld
execute unless score #crying_dried var matches 1 run advancement revoke @s only 3_polarnight/90_crying_obsidian dried
execute unless score #crying_frozen var matches 1 run advancement revoke @s only 3_polarnight/90_crying_obsidian frozen
execute unless score #crying_dawn var matches 1 run advancement revoke @s only 3_polarnight/90_crying_obsidian dawn
execute if score #crying_overworld var matches 1 run advancement grant @s only 3_polarnight/90_crying_obsidian overworld
execute if score #crying_dried var matches 1 run advancement grant @s only 3_polarnight/90_crying_obsidian dried
execute if score #crying_frozen var matches 1 run advancement grant @s only 3_polarnight/90_crying_obsidian frozen
execute if score #crying_dawn var matches 1 run advancement grant @s only 3_polarnight/90_crying_obsidian dawn
execute if score #crying_vault_opened var matches 1 run advancement grant @s only 3_polarnight/94_obsidian_vault
