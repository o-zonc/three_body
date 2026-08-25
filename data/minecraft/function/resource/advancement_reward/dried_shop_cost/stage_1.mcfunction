# 메마른 문명 발굴 발전과제 1단계 보상
# 할인은 중첩하지 않고 현재 값보다 클 때만 20%로 갱신한다.
execute unless score #shop_cost_discount_percent var matches 20.. run scoreboard players set #shop_cost_discount_percent var 20
execute if score #dried_shop_discount_stage var matches 0 run scoreboard players set #dried_shop_discount_stage var 1
