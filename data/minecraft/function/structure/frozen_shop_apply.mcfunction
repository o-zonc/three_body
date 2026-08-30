scoreboard players set #structure_apply_context var 1
execute if score #frozen_shop_structure_pending var matches 0 run function frozen/structure/shop/off
execute if score #frozen_shop_structure_pending var matches 1 run function frozen/structure/shop/on
scoreboard players set #structure_apply_context var 0
schedule function structure/frozen_shop_release 1t replace
