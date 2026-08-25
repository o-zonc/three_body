# 메마른 문명 발굴 발전과제 1단계 보상
# 기존 진행도를 낮추지 않도록 0일 때만 1단계로 올린다.
execute if score #dried_shop_discount_stage var matches 0 run scoreboard players set #dried_shop_discount_stage var 1
