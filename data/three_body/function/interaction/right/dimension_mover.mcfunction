# 차원 이동기는 웅크린 상태에서만 작동
execute if predicate three_body:item/dimension_mover if entity @s[tag=shift] run function three_body:common/disaster/do
