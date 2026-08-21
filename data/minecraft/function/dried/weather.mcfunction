execute if entity @a[nbt={Dimension:"minecraft:dried"}] in dried run weather clear
execute if entity @a[nbt={Dimension:"minecraft:dried"}] run schedule function dried/weather 1t
