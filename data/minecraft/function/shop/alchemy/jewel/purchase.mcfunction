# 수동 세공 실행
# Macro args: id, name, color

execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {text:"연금술 공방을 먼저 해금해야 합니다.",color:"red",italic:true}
execute unless score #alchemy_workshop unlock matches 1 run return 0
$execute unless score #$(id) unlock matches 1 run title @s actionbar {text:"아직 해금되지 않은 자원입니다.",color:"red",italic:true}
$execute unless score #$(id) unlock matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
$execute unless score #$(id) unlock matches 1 run return 0

execute unless score #jewel_mode var = #jewel_mode var run scoreboard players set #jewel_mode var 0
execute if score #jewel_mode var matches ..-1 run scoreboard players set #jewel_mode var 0
execute if score #jewel_mode var matches 3.. run scoreboard players set #jewel_mode var 0
execute if score #jewel_mode var > #level alchemy_workshop run scoreboard players set #jewel_mode var 0

# 결과량: 초급 2 / 중급 3 / 고급 5
scoreboard players set #jewel_reward tmp 2
execute if score #jewel_mode var matches 1 run scoreboard players set #jewel_reward tmp 3
execute if score #jewel_mode var matches 2 run scoreboard players set #jewel_reward tmp 5

# 비용: 대상 보석 1개 + 모드별 촉매
# 초급: 돌 2 / 중급: 돌 2 + 구리 1 / 고급: 구리 2 + 철 1
data remove storage data tmp.cost
$data modify storage data tmp.cost append value {type:"$(id)",amount:1}
execute if score #jewel_mode var matches 0..1 run data modify storage data tmp.cost append value {type:"stone",amount:2}
execute if score #jewel_mode var matches 1 run data modify storage data tmp.cost append value {type:"copper",amount:1}
execute if score #jewel_mode var matches 2 run data modify storage data tmp.cost append value {type:"copper",amount:2}
execute if score #jewel_mode var matches 2 run data modify storage data tmp.cost append value {type:"iron",amount:1}
data modify storage data tmp.cost append value {type:"no_obsidian",amount:1}

execute store result score #jewel_can_pay tmp run function resource/check_cost
execute unless score #jewel_can_pay tmp matches 1 run title @s actionbar {text:"세공에 필요한 자원이 부족합니다.",color:"red",italic:true}
execute unless score #jewel_can_pay tmp matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
execute unless score #jewel_can_pay tmp matches 1 run return 0

function resource/cost/take
scoreboard players operation #material_add_value tmp = #jewel_reward tmp
$function resource/add {id:"$(id)"}

# 고급 금/다이아몬드 세공 부산물은 기존 효과를 유지합니다.
scoreboard players set #jewel_byproduct_factor tmp 2
execute if score #jewel_mode var matches 2 if score #cost_gold cost matches 1.. run scoreboard players operation #jewel_byproduct tmp = #cost_gold cost
execute if score #jewel_mode var matches 2 if score #cost_gold cost matches 1.. run scoreboard players operation #jewel_byproduct tmp *= #jewel_byproduct_factor tmp
execute if score #jewel_mode var matches 2 if score #cost_gold cost matches 1.. run scoreboard players operation #material_add_value tmp = #jewel_byproduct tmp
execute if score #jewel_mode var matches 2 if score #cost_gold cost matches 1.. run function resource/add {id:"heat"}
execute if score #jewel_mode var matches 2 if score #cost_diamond cost matches 1.. run scoreboard players operation #jewel_byproduct tmp = #cost_diamond cost
execute if score #jewel_mode var matches 2 if score #cost_diamond cost matches 1.. run scoreboard players operation #jewel_byproduct tmp *= #jewel_byproduct_factor tmp
execute if score #jewel_mode var matches 2 if score #cost_diamond cost matches 1.. run scoreboard players operation #material_add_value tmp = #jewel_byproduct tmp
execute if score #jewel_mode var matches 2 if score #cost_diamond cost matches 1.. run function resource/add {id:"cold"}

function shop/alchemy/jewel/effect
execute at @s run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.3
$title @s actionbar [{text:"",italic:false},{text:"$(name) 세공 완료! ",color:"$(color)"},{text:"×",color:"gray",bold:false},{score:{name:"#jewel_reward",objective:"tmp"},color:"white"}]
