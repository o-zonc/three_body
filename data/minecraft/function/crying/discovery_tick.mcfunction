# 오버월드의 물에 들어가면 숨겨진 우는 흑요석 계열을 공개합니다.
execute as @a[tag=player,nbt={Dimension:"minecraft:overworld"},advancements={3_polarnight/89_crying_discovery=false}] at @s if block ~ ~ ~ minecraft:water run advancement grant @s only 3_polarnight/89_crying_discovery overworld_water
