# 세공 실행
# Macro args: id, name, color, lv0, lv1, lv2

execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {"text":"연금술 공방을 먼저 해금해야 합니다.","color":"red"}
execute unless score #alchemy_workshop unlock matches 1 run return 0

# Lv. 0에서는 세공 작업대 전체가 300틱 공용 쿨타임을 사용합니다.
execute if score #level alchemy_workshop matches 0 if score #jewel_cooldown var matches 1.. run title @s actionbar [{"text":"세공 작업대 재사용까지 ","color":"red"},{"score":{"name":"#jewel_cooldown","objective":"var"},"color":"yellow"},{"text":"틱 남았습니다.","color":"red"}]
execute if score #level alchemy_workshop matches 0 if score #jewel_cooldown var matches 1.. run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
execute if score #level alchemy_workshop matches 0 if score #jewel_cooldown var matches 1.. run return 0

# 현재 레벨에 맞는 결과 배율을 선택합니다.
scoreboard players set #jewel_reward tmp 0
$execute if score #level alchemy_workshop matches 0 run scoreboard players set #jewel_reward tmp $(lv0)
$execute if score #level alchemy_workshop matches 1 run scoreboard players set #jewel_reward tmp $(lv1)
$execute if score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_reward tmp $(lv2)

# 아직 해금되지 않은 자원(예: Lv.0의 금/다이아몬드)은 거부합니다.
execute if score #jewel_reward tmp matches ..0 run title @s actionbar {"text":"현재 공방 레벨에서는 이 자원을 세공할 수 없습니다.","color":"red"}
execute if score #jewel_reward tmp matches ..0 run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
execute if score #jewel_reward tmp matches ..0 run return 0

# 비용 구성: 대상 자원 1개 + 레벨별 추가 재료
# Lv.0: 나무 1 + 돌 1
# Lv.1: 돌 1 + 구리 1
# Lv.2: 철 1
data remove storage data tmp.cost
$data modify storage data tmp.cost append value {type:"$(id)",amount:1}
execute if score #level alchemy_workshop matches 0 run data modify storage data tmp.cost append value {type:"wood",amount:1}
execute if score #level alchemy_workshop matches 0 run data modify storage data tmp.cost append value {type:"stone",amount:1}
execute if score #level alchemy_workshop matches 1 run data modify storage data tmp.cost append value {type:"stone",amount:1}
execute if score #level alchemy_workshop matches 1 run data modify storage data tmp.cost append value {type:"copper",amount:1}
execute if score #level alchemy_workshop matches 2.. run data modify storage data tmp.cost append value {type:"iron",amount:1}

execute store result score #jewel_can_pay tmp run function resource/check_cost
execute unless score #jewel_can_pay tmp matches 1 run title @s actionbar {"text":"세공에 필요한 자원이 부족합니다.","color":"red"}
execute unless score #jewel_can_pay tmp matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.7
execute unless score #jewel_can_pay tmp matches 1 run return 0

function resource/cost/take

# 대상 자원 지급
scoreboard players operation #material_add_value tmp = #jewel_reward tmp
$function resource/add {id:"$(id)"}

# Lv.2 부산물
# 금 세공: 투입한 금의 2배만큼 열기 생성
# 다이아몬드 세공: 투입한 다이아몬드의 2배만큼 냉기 생성
# 에메랄드/청금석 세공에는 부산물이 없습니다.
scoreboard players set #jewel_byproduct_factor tmp 2
execute if score #level alchemy_workshop matches 2.. if score #cost_gold cost matches 1.. run scoreboard players operation #jewel_byproduct tmp = #cost_gold cost
execute if score #level alchemy_workshop matches 2.. if score #cost_gold cost matches 1.. run scoreboard players operation #jewel_byproduct tmp *= #jewel_byproduct_factor tmp
execute if score #level alchemy_workshop matches 2.. if score #cost_gold cost matches 1.. run scoreboard players operation #material_add_value tmp = #jewel_byproduct tmp
execute if score #level alchemy_workshop matches 2.. if score #cost_gold cost matches 1.. run function resource/add {id:"heat"}
execute if score #level alchemy_workshop matches 2.. if score #cost_diamond cost matches 1.. run scoreboard players operation #jewel_byproduct tmp = #cost_diamond cost
execute if score #level alchemy_workshop matches 2.. if score #cost_diamond cost matches 1.. run scoreboard players operation #jewel_byproduct tmp *= #jewel_byproduct_factor tmp
execute if score #level alchemy_workshop matches 2.. if score #cost_diamond cost matches 1.. run scoreboard players operation #material_add_value tmp = #jewel_byproduct tmp
execute if score #level alchemy_workshop matches 2.. if score #cost_diamond cost matches 1.. run function resource/add {id:"cold"}

# 성공 시 Lv.0에서만 공용 쿨타임을 시작합니다.
execute if score #level alchemy_workshop matches 0 run scoreboard players set #jewel_cooldown var 300

execute at @s run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.3
$title @s actionbar [{"text":"$(name) 세공 완료! ","color":"$(color)","bold":true},{"text":"×","color":"gray","bold":false},{"score":{"name":"#jewel_reward","objective":"tmp"},"color":"white"}]
