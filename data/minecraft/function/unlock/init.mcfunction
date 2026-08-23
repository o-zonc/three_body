# 해금 시스템 초기화
# 해금 상태는 scoreboard의 unlock objective에서 관리한다.
# 0 = 미해금, 1 = 해금

scoreboard objectives add unlock dummy

# 일반 자원
scoreboard players set #wood unlock 0
scoreboard players set #stone unlock 0
scoreboard players set #coal unlock 0
scoreboard players set #copper unlock 0
scoreboard players set #iron unlock 0
scoreboard players set #gold unlock 0
scoreboard players set #diamond unlock 0
scoreboard players set #emerald unlock 0
scoreboard players set #lapis unlock 0

# 특수 자원
scoreboard players set #heat unlock 0
scoreboard players set #cold unlock 0
scoreboard players set #world_eye unlock 0
