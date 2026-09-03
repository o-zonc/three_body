# 구조물 비동기 작업 디스패처
# 각 번호의 끝자리 0/1은 off/ON을 뜻한다.

execute if score #structure_trigger var matches 2000 run scoreboard players set #alchemy_structure_pending var 0
execute if score #structure_trigger var matches 2001 run scoreboard players set #alchemy_structure_pending var 1
execute if score #structure_trigger var matches 2000..2001 run function structure/request_load {id:"alchemy",dim:"minecraft:overworld",from_x:-37,from_z:-37,to_x:-4,to_z:-4,apply:"alchemy_apply",release:"alchemy_release"}

execute if score #structure_trigger var matches 2010 run scoreboard players set #beacon_structure_pending var 0
execute if score #structure_trigger var matches 2011 run scoreboard players set #beacon_structure_pending var 1
execute if score #structure_trigger var matches 2010..2011 run function structure/request_load {id:"beacon",dim:"minecraft:overworld",from_x:18,from_z:-31,to_x:18,to_z:-31,apply:"beacon_apply",release:"beacon_release"}

execute if score #structure_trigger var matches 2020 run scoreboard players set #factory_structure_pending var 0
execute if score #structure_trigger var matches 2021 run scoreboard players set #factory_structure_pending var 1
execute if score #structure_trigger var matches 2020..2021 run function structure/request_load {id:"factory",dim:"minecraft:overworld",from_x:-36,from_z:4,to_x:4,to_z:36,apply:"factory_apply",release:"factory_release"}

execute if score #structure_trigger var matches 2030 run scoreboard players set #observatory_structure_pending var 0
execute if score #structure_trigger var matches 2031 run scoreboard players set #observatory_structure_pending var 1
execute if score #structure_trigger var matches 2030..2031 run function structure/request_load {id:"observatory",dim:"minecraft:overworld",from_x:18,from_z:-4,to_x:25,to_z:24,apply:"observatory_apply",release:"observatory_release"}

execute if score #structure_trigger var matches 2200 run scoreboard players set #dried_sulfur_structure_pending var 0
execute if score #structure_trigger var matches 2201 run scoreboard players set #dried_sulfur_structure_pending var 1
execute if score #structure_trigger var matches 2200..2201 run function structure/request_load {id:"dried_sulfur",dim:"minecraft:dried",from_x:-20,from_z:-10,to_x:-8,to_z:0,apply:"dried_sulfur_apply",release:"dried_sulfur_release"}

execute if score #structure_trigger var matches 2210 run scoreboard players set #dried_cinnabar_structure_pending var 0
execute if score #structure_trigger var matches 2211 run scoreboard players set #dried_cinnabar_structure_pending var 1
execute if score #structure_trigger var matches 2210..2211 run function structure/request_load {id:"dried_cinnabar",dim:"minecraft:dried",from_x:8,from_z:0,to_x:18,to_z:10,apply:"dried_cinnabar_apply",release:"dried_cinnabar_release"}

execute if score #structure_trigger var matches 2300 run scoreboard players set #frozen_bridge_structure_pending var 0
execute if score #structure_trigger var matches 2301 run scoreboard players set #frozen_bridge_structure_pending var 1
execute if score #structure_trigger var matches 2300..2301 run function structure/request_load {id:"frozen_bridge",dim:"minecraft:frozen",from_x:-1,from_z:6,to_x:1,to_z:30,apply:"frozen_bridge_apply",release:"frozen_bridge_release"}

execute if score #structure_trigger var matches 2310 run scoreboard players set #frozen_maze_structure_pending var 0
execute if score #structure_trigger var matches 2311 run scoreboard players set #frozen_maze_structure_pending var 1
execute if score #structure_trigger var matches 2310..2311 run function structure/request_load {id:"frozen_maze",dim:"minecraft:frozen",from_x:-21,from_z:26,to_x:-19,to_z:34,apply:"frozen_maze_apply",release:"frozen_maze_release"}

execute if score #structure_trigger var matches 2320 run scoreboard players set #frozen_shop_structure_pending var 0
execute if score #structure_trigger var matches 2321 run scoreboard players set #frozen_shop_structure_pending var 1
execute if score #structure_trigger var matches 2320..2321 run function structure/request_load {id:"frozen_shop",dim:"minecraft:frozen",from_x:6,from_z:-1,to_x:20,to_z:1,apply:"frozen_shop_apply",release:"frozen_shop_release"}

execute if score #structure_trigger var matches 2400 run scoreboard players set #polar_vault_structure_pending var 0
execute if score #structure_trigger var matches 2401 run scoreboard players set #polar_vault_structure_pending var 1
execute if score #structure_trigger var matches 2400..2401 run function structure/request_load {id:"polar_vault",dim:"minecraft:polarnight",from_x:-8,from_z:0,to_x:0,to_z:7,apply:"polar_vault_apply",release:"polar_vault_release"}

scoreboard players set #structure_trigger var 0
