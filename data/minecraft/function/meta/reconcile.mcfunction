# material 점수가 마지막 동기화값과 다르면 외부에서 총량을 직접 조절한 것으로 본다.
# 두 자원의 변경 여부를 먼저 저장하여 한쪽 복원이 다른 쪽의 감지를 덮지 않게 한다.
scoreboard players set #restore_information tmp 0
scoreboard players set #restore_time tmp 0
execute unless score #information material = #information_synced meta run scoreboard players set #restore_information tmp 1
execute unless score #time material = #time_synced meta run scoreboard players set #restore_time tmp 1

execute if score #restore_information tmp matches 1 run function meta/information/restore_from_scoreboard
execute if score #restore_time tmp matches 1 run function meta/time/restore_from_scoreboard
function meta/sync
