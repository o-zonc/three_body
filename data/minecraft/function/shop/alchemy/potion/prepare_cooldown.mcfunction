# 카탈리스트 구매 쿨타임을 UI용 분/초로 변환합니다.
# 남은 틱을 올림하여 1~20틱도 1초로 표시합니다.
scoreboard players operation #catalyst_cd_seconds tmp = #catalyst_cooldown var
execute if score #catalyst_cd_seconds tmp matches 1.. run scoreboard players add #catalyst_cd_seconds tmp 19
scoreboard players set #catalyst_tick_divisor tmp 20
scoreboard players operation #catalyst_cd_seconds tmp /= #catalyst_tick_divisor tmp
scoreboard players operation #catalyst_cd_minutes tmp = #catalyst_cd_seconds tmp
scoreboard players set #catalyst_minute_divisor tmp 60
scoreboard players operation #catalyst_cd_minutes tmp /= #catalyst_minute_divisor tmp
scoreboard players operation #catalyst_cd_remainder tmp = #catalyst_cd_seconds tmp
scoreboard players operation #catalyst_cd_remainder tmp %= #catalyst_minute_divisor tmp
