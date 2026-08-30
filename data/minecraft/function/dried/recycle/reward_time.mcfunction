scoreboard players operation #recycle_meta_amount tmp = #recycle_level tmp
scoreboard players add #recycle_meta_amount tmp 1
execute store result storage data tmp.recycle_meta.amount int 1 run scoreboard players get #recycle_meta_amount tmp
function resource/add_material/time with storage data tmp.recycle_meta
execute at @s run summon firework_rocket ~ ~1 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"burst",colors:[43690,43520],fade_colors:[21930]}]}}}}
title @s actionbar [{text:"",italic:false},{text:"재활용하여 ",color:"gray"},{text:"시간 ",color:"dark_aqua",shadow_color:-16755200},{score:{name:"#recycle_meta_amount",objective:"tmp"},color:"dark_aqua",shadow_color:-16755200},{text:" 조각",color:"dark_aqua",shadow_color:-16755200},{text:"을 획득했습니다.",color:"gray"}]
