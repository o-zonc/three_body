function tool/get_now_tool_data
execute unless data storage data tmp.tool.now.components run return 0

# 고유 태그를 붙인 임시 아이템 엔티티를 만든 뒤 상수의 컴포넌트를 복사한다.
# 이 엔티티는 플레이어가 줍는 용도가 아니며, 완성 즉시 주 손으로 복사하고 제거한다.
tag @e[type=minecraft:item,tag=creating_resource_tool] remove creating_resource_tool
summon minecraft:item ~ ~ ~ {Tags:["creating_resource_tool"],PickupDelay:32767s,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{tool:{}}}}}
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:custom_name" set from storage data tmp.tool.now.components.custom_name
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:lore" set from storage data tmp.tool.now.components.lore
execute if data storage data tmp.tool.now.components.item_model run data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:item_model" set from storage data tmp.tool.now.components.item_model
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:tool" set from storage data tmp.tool.now.components.tool

# 최신 데이터 컴포넌트 형식에서는 can_break 자체가 블록 조건(또는 조건 목록)이다.
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:can_break" set from storage data tmp.tool.now.components.can_break
# 색채 자원 이름이 발견 전에 기본 Can Break 툴팁으로 노출되지 않도록 tooltip_display도 복사한다.
execute if data storage data tmp.tool.now.components.tooltip_display run data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:tooltip_display" set from storage data tmp.tool.now.components.tooltip_display

# 시스템 도구 식별자와 레벨을 아이템에 기록한다.
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:custom_data" set value {tool:{}}
data modify entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] Item.components."minecraft:custom_data".tool.lvl set from storage data tmp.tool.now.lvl

# 바닥 드롭/자동 줍기 대신 플레이어 슬롯으로 직접 전달한다.
item replace entity @s weapon.mainhand from entity @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2] contents
kill @e[type=minecraft:item,tag=creating_resource_tool,sort=nearest,limit=1,distance=..2]
