execute as @a[tag=player] if score @s item_trigger matches 2101 run function item/purchase_permanent {id:"dimension",name:"차원 이동기",color:"dark_red",description:"현재 차원을 끝내고 다음 차원으로 이동합니다.",trigger:2101}
execute as @a[tag=player] if score @s item_trigger matches 2102 if score #level alchemy_workshop matches 2.. run function item/purchase {id:"dried"}
execute as @a[tag=player] if score @s item_trigger matches 2103 if score #level alchemy_workshop matches 2.. run function item/purchase {id:"frozen"}
execute as @a[tag=player] if score @s item_trigger matches 2104 if score #level alchemy_workshop matches 2.. run function item/purchase {id:"overworld"}
execute as @a[tag=player] if score @s item_trigger matches 2105 if score #level alchemy_workshop matches 1.. run function item/purchase_permanent {id:"shop",name:"상점 이동기",color:"gray",description:"상점으로 이동합니다.",trigger:2105}
execute as @a[tag=player] if score @s item_trigger matches 2106 if score #level alchemy_workshop matches 1.. run function item/purchase_permanent {id:"alchemy",name:"연금술 공방 이동기",color:"light_purple",description:"연금술 공방으로 이동합니다.",trigger:2106}
# 2회차에서 우주 이동기 판매를 활성화한다. (공방 Lv. 3)
# execute as @a[tag=player] if score @s item_trigger matches 2107 if score #level alchemy_workshop matches 3.. run function item/purchase {id:"cosmos"}

# 시공간 양자 얽힘 파편 저장소
execute as @a[tag=player] if score @s item_trigger matches 2191 run function quantum/storage/deposit
execute as @a[tag=player] if score @s item_trigger matches 2192 run function quantum/storage/withdraw

execute as @a[tag=player] if score @s item_trigger matches 1.. run scoreboard players reset @s item_trigger
scoreboard players enable @a[tag=player] item_trigger
