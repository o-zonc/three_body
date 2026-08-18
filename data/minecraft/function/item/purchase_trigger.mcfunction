execute as @a[tag=player] if score @s item_trigger matches 2101 run function item/purchase {id:"dimension"}
execute as @a[tag=player] if score @s item_trigger matches 2102 if score #level alchemy_workshop matches 2.. run function item/purchase {id:"dried"}
execute as @a[tag=player] if score @s item_trigger matches 2103 if score #level alchemy_workshop matches 2.. run function item/purchase {id:"frozen"}
execute as @a[tag=player] if score @s item_trigger matches 2104 if score #level alchemy_workshop matches 2.. run function item/purchase {id:"overworld"}
execute as @a[tag=player] if score @s item_trigger matches 2105 if score #level alchemy_workshop matches 1.. run function item/purchase {id:"shop"}
execute as @a[tag=player] if score @s item_trigger matches 2106 if score #level alchemy_workshop matches 1.. run function item/purchase {id:"alchemy"}
# 2회차에서 우주 이동기 판매를 활성화한다. (공방 Lv. 3)
# execute as @a[tag=player] if score @s item_trigger matches 2107 if score #level alchemy_workshop matches 3.. run function item/purchase {id:"cosmos"}

execute as @a[tag=player] if score @s item_trigger matches 1.. run scoreboard players reset @s item_trigger
scoreboard players enable @a[tag=player] item_trigger
