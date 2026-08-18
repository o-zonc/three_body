execute unless score #overworld civilization_age matches 9.. run scoreboard players set #overworld civilization_age 9
# 2회차에서 활성화 예정: 공방 Lv. 3 및 우주 이동기 구매 해금
# execute unless score #level alchemy_workshop matches 3.. run scoreboard players set #level alchemy_workshop 3
execute unless score #time unlock matches 1 at @s run function resource/effect/unlock_success
scoreboard players set #time unlock 1
tellraw @s {"text":"미래에 도달했습니다. 문명은 지구의 한계를 넘어설 준비를 마쳤습니다.","color":"light_purple"}
playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.9 1.0
