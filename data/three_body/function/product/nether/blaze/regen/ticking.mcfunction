execute if score #disable_blaze_production var matches 1 run return 0
execute unless score #area_zone unlock matches 1 positioned -76.5 1.9375 13.5 run kill @e[tag=blaze,type=item_display,distance=..0.2]
execute unless score #area_zone unlock matches 1 run return 0
execute unless score #blaze unlock matches 1 positioned -76.5 1.9375 13.5 run kill @e[tag=blaze,type=item_display,distance=..0.2]
execute unless score #blaze unlock matches 1 run return 0

# 쿨다운 값이 없고 표시도 없다면 블레이즈 소환
execute positioned -76.5 1.9375 13.5 unless entity @e[tag=blaze,distance=..0.2,type=item_display] unless score #blaze_remain generate = #blaze_remain generate run function product/nether/blaze/regen/summon

# 쿨다운이 전부 다 돌면 블레이즈 소환
execute if score #blaze_remain generate matches ..0 run function product/nether/blaze/regen/summon

# 쿨다운이 아직 다 돌지 않았으면 쿨다운 감소
execute if score #blaze_remain generate matches 1.. run return run scoreboard players remove #blaze_remain generate 1
