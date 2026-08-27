execute in dried run kill @e[type=minecraft:interaction,tag=dried,tag=recycle]
execute in dried run kill @e[type=minecraft:interaction,tag=dried,tag=potion]
execute in dried run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass_bottle"}}]
execute in dried run kill @e[type=minecraft:glow_item_frame]

execute in dried run data modify block -8 62 -10 name set value "no_sulfur"
execute in dried run setblock -8 61 -10 redstone_block
execute in dried run setblock -8 61 -10 air