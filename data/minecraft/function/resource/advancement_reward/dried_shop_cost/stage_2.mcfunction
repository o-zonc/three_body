# 메마른 문명 발굴 발전과제 2단계 보상
# 할인은 중첩하지 않고 현재 값보다 클 때만 40%로 갱신한다.
execute unless score #shop_cost_discount_percent var matches 40.. run scoreboard players set #shop_cost_discount_percent var 40
scoreboard players set #dried_shop_discount_stage var 2
