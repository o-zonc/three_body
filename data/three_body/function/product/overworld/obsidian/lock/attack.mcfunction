# 흑요석 보유량이 가득 찬 상태에서 락 interaction을 좌클릭했을 때의 피드백

execute on attacker run title @s actionbar "§c최대 보유량만큼 보유하여 더 이상 채광할 수 없습니다."
execute on attacker at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
data remove entity @s attack
return 1