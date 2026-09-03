scoreboard players operation #recycle_meta_amount tmp = #recycle_level tmp
scoreboard players add #recycle_meta_amount tmp 2
execute store result storage data tmp.recycle_meta.amount int 1 run scoreboard players get #recycle_meta_amount tmp
function resource/add_material/information with storage data tmp.recycle_meta
execute at @s run summon firework_rocket ~ ~1 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"burst",colors:[16711935,16738740],fade_colors:[16761035]}]}}}}
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar [{text:"",italic:false},{text:"재활용하여 ",color:"gray"},{text:"정보 ",color:"light_purple",shadow_color:-8388608},{score:{name:"#recycle_meta_amount",objective:"tmp"},color:"light_purple",shadow_color:-8388608},{text:" 조각",color:"light_purple",shadow_color:-8388608},{text:"을 획득했습니다.",color:"gray"}]
