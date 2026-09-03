# 메마른 차원 비밀 공간 상호작용
execute unless entity @s[advancements={3_polarnight/89_crying_discovery=true}] run advancement grant @s only 3_polarnight/89_crying_discovery dried_secret

# 우는 흑요석을 아직 수집하지 않았을 때만 비밀 공간을 연다.
# 수집 완료 후에는 이 인터랙션이 완전히 무반응한다.
execute if score #crying_dried var matches 1 run return 0

execute in minecraft:dried run fill 3 60 3 -3 63 -3 minecraft:air
