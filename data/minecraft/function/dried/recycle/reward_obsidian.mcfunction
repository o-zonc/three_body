function meta/obsidian/give_item {amount:1}
function meta/sync
execute at @s run summon firework_rocket ~ ~1 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"burst",colors:[0,8388736],fade_colors:[10494192]}]}}}}
title @s actionbar [{text:"유리병을 재활용하여 ",color:"gray"},{text:"흑요석 1 개",color:"dark_gray",shadow_color:-8388480},{text:"를 획득했습니다.",color:"gray"}]
