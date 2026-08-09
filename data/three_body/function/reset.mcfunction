# 테스트용: 게임 상태를 인트로 직후로 초기화합니다.
scoreboard players set #GLOBAL n_civil 1

scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_overworld 1
scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL first_dried 0
scoreboard players set #GLOBAL first_frozen 0
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL state_frozen 0
scoreboard players set #GLOBAL state_overworld 0
scoreboard players set #GLOBAL state_polar 0
scoreboard players set #t story 0
scoreboard players set #done story 0

schedule clear three_body:frozen/weather
time set noon
time pause
weather clear

xp set @a 0 levels
xp set @a 0 points

function three_body:advancement/revoke

execute in minecraft:overworld run tp @a ~ 64 ~

tellraw @a {"text":"[디버그] 게임 상태를 인트로 직후로 초기화했습니다.","color":"yellow"}
tellraw @a {"text":"- 문명 번호: 1","color":"gray"}
tellraw @a {"text":"- 방문 기록: 오버월드만 방문","color":"gray"}
tellraw @a {"text":"- 위치: 오버월드","color":"gray"}
tellraw @a {"text":"- 날씨: 초기화","color":"gray"}
tellraw @a {"text":"- 인트로: 다시 재생","color":"gray"}
