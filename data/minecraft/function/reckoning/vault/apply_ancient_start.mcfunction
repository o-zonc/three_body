# 시간 보관소 10조각 이상 시작 보정입니다.
# 이미 보관·복원된 단계가 더 높으면 유지하고, 부족한 경우에만 최소치를 보장합니다.
execute if score #tool upgrade matches ..7 run scoreboard players set #tool upgrade 8

# 자원 상점 Lv. 1은 해당 자원 수급량 ×2입니다.
execute if score #wood_lvl material_shop matches ..0 run scoreboard players set #wood_lvl material_shop 1
execute if score #stone_lvl material_shop matches ..0 run scoreboard players set #stone_lvl material_shop 1
execute if score #coal_lvl material_shop matches ..0 run scoreboard players set #coal_lvl material_shop 1
execute if score #copper_lvl material_shop matches ..0 run scoreboard players set #copper_lvl material_shop 1
execute if score #iron_lvl material_shop matches ..0 run scoreboard players set #iron_lvl material_shop 1

# 고대 시작의 일회성 보급품입니다.
execute as @a[tag=player,limit=1] run function item/give/heavenly_grace
