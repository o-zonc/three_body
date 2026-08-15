# ==================================================
# Iron regeneration ticking
# ==================================================

# 해금되지 않은 자원은 관리하지 않는다.
execute unless score #iron unlock matches 1.. run return 0

# 철가 사라졌고 쿨타임이 아직 생성되지 않았다면 파괴 시점의 쿨타임을 설정한다.
execute if block 1 -62 -35 air unless score #iron_remain generate = #iron_remain generate run function three_body:resource/iron/regen/break

# 쿨타임이 끝났으면 철을(를) 재생성한다.
execute if block 1 -62 -35 air if score #iron_remain generate matches ..0 run function three_body:resource/iron/regen/place

# 쿨타임이 남아 있으면 1틱 감소시킨다.
execute if block 1 -62 -35 air if score #iron_remain generate matches 1.. run return run scoreboard players remove #iron_remain generate 1
