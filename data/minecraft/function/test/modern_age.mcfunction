# TEST: 즉시 근대 시대로 진행
# 근대 시대 보상 함수는 실행자를 기준으로 효과를 적용하므로 플레이어 컨텍스트에서 실행한다.
execute as @a at @s run function story/overworld/age/25_modern_age

tellraw @a {"text":"[TEST] 근대 시대로 이동했습니다.","color":"#71CDF9"}
