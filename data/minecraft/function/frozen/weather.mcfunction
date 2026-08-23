execute if entity @a[nbt={Dimension:"minecraft:frozen"}] in frozen run weather rain 100
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] run schedule function frozen/weather 1t
