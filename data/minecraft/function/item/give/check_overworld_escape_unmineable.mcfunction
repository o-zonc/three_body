# 최종 위치와 채굴 도구 단계를 기준으로 진행 불가능 여부만 판정한다.
execute if score #tool upgrade matches ..6 as @a[tag=player,gamemode=adventure,nbt={Dimension:"minecraft:dried"}] run function item/give/overworld_escape
execute if score #tool upgrade matches ..6 as @a[tag=player,gamemode=adventure,nbt={Dimension:"minecraft:frozen"}] run function item/give/overworld_escape
