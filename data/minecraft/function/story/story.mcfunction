# 인트로 진행
execute if score #done intro matches 0 run function story/intro/00_init

# 트리거는 신규 플레이어 초기화에서 한 번 enable하고 사용 시 해당 플레이어만 재활성화한다.
execute as @a[scores={intro_skip=1..}] run function story/trigger/intro_skip
execute as @a[scores={tutorial=1..}] run function story/trigger/tutorial
