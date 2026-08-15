# 결정 상점 채광 속도 증폭을 플레이어 attribute에 적용

function dimensions/overworld/shop/crystal_shop/value/now_dig_speed_up_data
attribute @s minecraft:block_break_speed modifier remove dim_comp:crystal_shop_dig_speed_up
attribute @s minecraft:block_break_speed modifier remove dim_comp:creation_poss_dig_speed
execute unless score #dig_speed_up_lvl crystal_shop matches 0 run function dimensions/overworld/shop/crystal_shop/apply/dig_speed_modifier with storage data tmp.crystal_shop.dig_speed_up.now
