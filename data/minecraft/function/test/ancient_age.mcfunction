# TEST: 즉시 고대 시대로 진행
# 고대 시대 보상 함수는 실행자를 기준으로 효과를 적용하므로 플레이어 컨텍스트에서 실행합니다.
execute as @a at @s run function story/overworld/age/23_ancient_age

tellraw @a {"text":"[TEST] 고대 시대로 이동했습니다.","color":"aqua"}
