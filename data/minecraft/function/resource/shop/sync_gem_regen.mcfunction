# Macro args: id
# 보석 상점 레벨을 기존 regen 저장값에 병합합니다. 과거에 구매한 높은 regen 레벨은 유지합니다.
$execute unless score #$(id)_regen_lvl upgrade = #$(id)_regen_lvl upgrade run scoreboard players set #$(id)_regen_lvl upgrade 0
$execute if score #$(id)_regen_lvl upgrade matches ..-1 run scoreboard players set #$(id)_regen_lvl upgrade 0
$execute if score #$(id)_regen_lvl upgrade matches 5.. run scoreboard players set #$(id)_regen_lvl upgrade 4
$execute unless score #$(id)_lvl material_shop = #$(id)_lvl material_shop run scoreboard players set #$(id)_lvl material_shop 0
$scoreboard players operation #gem_shop_regen_target tmp = #$(id)_lvl material_shop
execute if score #gem_shop_regen_target tmp matches ..-1 run scoreboard players set #gem_shop_regen_target tmp 0
execute if score #gem_shop_regen_target tmp matches 5.. run scoreboard players set #gem_shop_regen_target tmp 4
$execute if score #$(id)_regen_lvl upgrade < #gem_shop_regen_target tmp run scoreboard players operation #$(id)_regen_lvl upgrade = #gem_shop_regen_target tmp
