execute if score #overworld civilization_age matches 9.. run return 0
scoreboard players set #overworld civilization_age 9
advancement grant @a[advancements={0_overworld/18_future_age=false}] only 0_overworld/18_future_age

# 미래 문명은 외계의 과학 봉쇄를 돌파했으므로 간섭이 즉시 종료되며 다시 발생하지 않는다.
scoreboard players set #GLOBAL alien_interference 0
scoreboard players set #GLOBAL alien_timer 1200

# 2회차에서 활성화 예정: 공방 Lv. 3 및 우주 이동기 구매 해금
# execute unless score #level alchemy_workshop matches 3.. run scoreboard players set #level alchemy_workshop 3
playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.9 1.0
