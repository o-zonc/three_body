# 구역 해금

# 1째 자리 --> 자리 수 유지 용 숫자
# 2째 자리 --> 오버월드(1), 네더(2), 엔드(3)
# 3~4째 자리 --> 해금 요소



# 오버월드 (11XX)
execute as @a[tag=player] if score @s entrance_trigger matches 1101 run function dimensions/overworld/entrance/cave/unlock
execute as @a[tag=player] if score @s entrance_trigger matches 1102 run function dimensions/overworld/entrance/material_shop/unlock
execute as @a[tag=player] if score @s entrance_trigger matches 1103 run function dimensions/overworld/entrance/nether_portal/unlock
execute as @a[tag=player] if score @s entrance_trigger matches 1104 run function dimensions/overworld/entrance/nether_entrance/unlock



# 네더 (12XX)
execute as @a[tag=player] if score @s entrance_trigger matches 1201 run function dimensions/nether/entrance/area_zone/unlock
