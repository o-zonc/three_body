# 매크로 인수: id
# 보석 상점 레벨을 기존 regen 저장값에 병합한다. 과거에 구매한 높은 regen 레벨은 유지한다.
$execute unless score #$(id)_regen_lvl upgrade = #$(id)_regen_lvl upgrade run scoreboard players set #$(id)_regen_lvl upgrade 0
$execute if score #$(id)_regen_lvl upgrade matches ..-1 run scoreboard players set #$(id)_regen_lvl upgrade 0
$execute if score #$(id)_regen_lvl upgrade matches 7.. run scoreboard players set #$(id)_regen_lvl upgrade 6
$execute unless score #$(id)_lvl material_shop = #$(id)_lvl material_shop run scoreboard players set #$(id)_lvl material_shop 0
$scoreboard players operation #gem_shop_regen_target tmp = #$(id)_lvl material_shop
execute if score #gem_shop_regen_target tmp matches ..-1 run scoreboard players set #gem_shop_regen_target tmp 0
execute if score #gem_shop_regen_target tmp matches 7.. run scoreboard players set #gem_shop_regen_target tmp 6
$execute if score #$(id)_regen_lvl upgrade < #gem_shop_regen_target tmp run scoreboard players operation #$(id)_regen_lvl upgrade = #gem_shop_regen_target tmp
