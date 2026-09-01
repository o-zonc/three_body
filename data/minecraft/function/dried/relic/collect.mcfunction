execute unless score #dried_relic_level upgrade matches 1.. run return 0

function dried/relic/prepare
scoreboard players operation #material_add_value tmp = #dried_relic_amount tmp

# 기본 모드는 기존과 동일하게 9종 자원을 각각 1/9 확률로 선택합니다.
execute if score #dried_relic_focus var matches 0 run execute store result score #dried_relic_roll tmp run random value 0..8
# 집중 모드는 선택한 차원 계열에 가중치를 적용합니다.
execute if score #dried_relic_focus var matches 1..3 run function dried/relic/roll_focus

# 보석은 일반 발굴량의 1/64만 지급하되 최소 1개를 보장합니다.
scoreboard players set #dried_relic_gem_divisor tmp 64
execute if score #dried_relic_roll tmp matches 7..8 run scoreboard players operation #material_add_value tmp /= #dried_relic_gem_divisor tmp
execute if score #dried_relic_roll tmp matches 7..8 if score #material_add_value tmp matches ..0 run scoreboard players set #material_add_value tmp 1

execute if score #dried_relic_roll tmp matches 0 run function resource/add_material/wood
execute if score #dried_relic_roll tmp matches 1 run function resource/add_material/stone
execute if score #dried_relic_roll tmp matches 2 run function resource/add_material/coal
execute if score #dried_relic_roll tmp matches 3 run function resource/add_material/copper
execute if score #dried_relic_roll tmp matches 4 run function resource/add_material/iron
execute if score #dried_relic_roll tmp matches 5 run function resource/add_material/gold
execute if score #dried_relic_roll tmp matches 6 run function resource/add_material/diamond
execute if score #dried_relic_roll tmp matches 7 run function resource/add_material/emerald
execute if score #dried_relic_roll tmp matches 8 run function resource/add_material/lapis

scoreboard players operation #dried_relic_timer generate = #dried_relic_interval tmp
execute as @a[tag=player] at @s run playsound block.vault.open_shutter weather @s ~ ~ ~ 0.6 0.8

execute if score #dried_relic_roll tmp matches 0 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"나무 자원 ",color:"yellow"},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 1 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"돌 자원 ",color:"gray"},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 2 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"석탄 자원 ",color:"dark_gray"},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 3 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"구리 자원 ",color:"gold"},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 4 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"철 자원 ",color:"white"},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 5 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"금 자원 ",color:"gold",shadow_color:-7710208},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 6 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"다이아몬드 자원 ",color:"aqua",shadow_color:-16741750},{score:{name:"#dried_relic_amount",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 7 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"에메랄드 자원 ",color:"green"},{score:{name:"#material_add_value",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
execute if score #dried_relic_roll tmp matches 8 run execute as @a[tag=player] run title @s actionbar [{text:"",italic:false},{text:"고대 문명 발굴 장치가 " ,color:"gold"},{text:"청금석 자원 ",color:"blue"},{score:{name:"#material_add_value",objective:"tmp"},color:"white"},{text:"개를 회수했습니다.",color:"gold"}]
