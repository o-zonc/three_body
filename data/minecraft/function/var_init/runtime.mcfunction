# 매 틱 필요한 최소 런타임 유지 로직만 처리합니다.
# 기존 var_init의 objective 생성/누락값 복구/범위 보정은 load에서만 실행합니다.

# 신규 플레이어 또는 전체 restart 후 재초기화 대상만 trigger objective를 한 번 활성화합니다.
# 각 trigger 핸들러는 사용 후 자기 objective를 @s 기준으로 다시 활성화합니다.
execute as @a unless score @s trigger_init matches 1 run function var_init/player

# 실제 접속 감지.
# leave_game 통계가 아직 없는 첫 접속 플레이어는 0으로 생성하고,
# 마지막 확인값과 달라진 경우에만 player/on_join을 한 번 실행합니다.
execute as @a unless score @s leave_game matches 0.. run scoreboard players set @s leave_game 0
execute as @a unless score @s leave_game_prev = @s leave_game run function player/on_join

# 보관소를 최대치까지 채운 달성 상태를 기록합니다.
execute if score #information_bank meta matches 2000.. unless score #information_bank_unlocked meta matches 1.. run scoreboard players set #information_bank_unlocked meta 1
execute if score #time_bank meta matches 1000.. unless score #time_bank_unlocked meta matches 1.. run scoreboard players set #time_bank_unlocked meta 1
execute unless score #information_bank meta matches 2000.. run scoreboard players set #information_bank_unlocked meta 0
execute unless score #time_bank meta matches 1000.. run scoreboard players set #time_bank_unlocked meta 0
