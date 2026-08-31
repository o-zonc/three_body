# 메마른 문명 발굴 발전과제 1단계 보상
# 비용 할인 계산에 10%를 더한다.
execute if score #dried_shop_discount_stage var matches 0 run scoreboard players set #dried_shop_discount_stage var 1
function advancement/general/check
