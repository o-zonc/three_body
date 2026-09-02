function tool/get_now_tool_data
execute unless data storage data tmp.tool.now.components run return 0

# 임시 아이템에 저장소의 컴포넌트를 직접 복사합니다.
# 문자열 매크로를 사용하지 않아 custom_name과 item_model의 따옴표가 유실되지 않습니다.
tag @e[type=minecraft:item,tag=creating_resource_tool] remove creating_resource_tool
summon minecraft:item ~ ~ ~ {Tags:["creating_resource_tool"],PickupDelay:32767s,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{tool:{}}}}}
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:custom_name" set from storage data tmp.tool.now.components.custom_name
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:lore" set from storage data tmp.tool.now.components.lore
execute if data storage data tmp.tool.now.components.item_model run data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:item_model" set from storage data tmp.tool.now.components.item_model
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:tool" set from storage data tmp.tool.now.components.tool
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:can_break" set from storage data tmp.tool.now.components.can_break

# 노랑/파랑은 첫 입자가속기 실험 이후에만 can_break 목록에 노출합니다.
execute if score #tool upgrade matches 6.. unless score #color_resources_unlocked var matches 1 run data remove entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:can_break".blocks[-1]
execute if score #tool upgrade matches 6.. unless score #color_resources_unlocked var matches 1 run data remove entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:can_break".blocks[-1]

# 외계 자원 설명이 있는 Lv.12 이상 도구에서는 해금 전까지 lore의 마지막 항목도 숨깁니다.
execute if score #tool upgrade matches 12.. unless score #color_resources_unlocked var matches 1 run data remove entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:lore"[-1]

# 시스템 도구 식별자와 레벨을 기록한 완성품을 빈 인벤토리 슬롯으로 전달합니다.
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:custom_data" set value {tool:{}}
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:custom_data".tool.lvl set from storage data tmp.tool.now.lvl
execute store result score #tool_give_success tmp run function tool/give_to_empty_slot
execute if score #tool_give_success tmp matches 1 run kill @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2]

# 빈 슬롯이 없다면 기존 아이템을 덮어쓰지 않고 발밑에 드롭합니다.
execute unless score #tool_give_success tmp matches 1 run data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] PickupDelay set value 0s
execute unless score #tool_give_success tmp matches 1 run tag @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] remove creating_resource_tool
execute unless score #tool_give_success tmp matches 1 run title @s actionbar {text:"인벤토리가 가득 차 채굴 도구를 발밑에 떨어뜨렸습니다.",color:"yellow",italic:true}
