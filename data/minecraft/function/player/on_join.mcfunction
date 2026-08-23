# 현재 leave_game 값을 저장해 같은 접속에서 중복 실행되지 않도록 합니다.
scoreboard players operation @s leave_game_prev = @s leave_game

# 기존 세이브 마이그레이션:
# 인트로 완료 시 visited_overworld가 1이 되므로, 이미 진행 중인 월드는
# 새 intro_seen 태그가 없어도 기존 플레이어를 인트로 시청 완료로 간주합니다.
execute if score #GLOBAL visited_overworld matches 1.. run tag @s add intro_seen

# 인트로를 아직 한 번도 완료하지 않은 플레이어가 접속하면 전체 게임을 초기 상태로 되돌리고 인트로를 시작합니다.
# 이 맵은 1인용 플레이를 전제로 하므로 restart의 전역 초기화를 그대로 사용합니다.
execute unless entity @s[tag=intro_seen] run function restart
