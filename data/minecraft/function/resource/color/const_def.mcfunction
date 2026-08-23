# 중입자 충돌 실험 이후 발견되는 색채 자원 상수.
# base const_def 직후 실행되어 const.resource와 구리 곡괭이 이후 도구 규칙을 확장합니다.

# 기존 세이브 보정은 load에서 한 번만 처리합니다.
execute unless score #yellow material = #yellow material run scoreboard players set #yellow material 0
execute unless score #blue material = #blue material run scoreboard players set #blue material 0
execute unless score #yellow_regen_lvl upgrade = #yellow_regen_lvl upgrade run scoreboard players set #yellow_regen_lvl upgrade 0
execute unless score #blue_regen_lvl upgrade = #blue_regen_lvl upgrade run scoreboard players set #blue_regen_lvl upgrade 0

data modify storage data const.resource.yellow set value {item:"yellow_glazed_terracotta",regen:[{lvl:0,value:1200,cost:[{type:"wood",amount:50},{type:"stone",amount:50}]},{lvl:1,value:800,cost:[{type:"stone",amount:200},{type:"coal",amount:100}]},{lvl:2,value:500,cost:[{type:"copper",amount:250},{type:"iron",amount:100}]},{lvl:3,value:300,cost:[{type:"copper",amount:1000},{type:"iron",amount:500}]},{lvl:4,value:160}]}
data modify storage data const.resource.blue set value {item:"blue_glazed_terracotta",regen:[{lvl:0,value:1400,cost:[{type:"wood",amount:75},{type:"stone",amount:75}]},{lvl:1,value:900,cost:[{type:"stone",amount:250},{type:"coal",amount:125}]},{lvl:2,value:600,cost:[{type:"copper",amount:300},{type:"iron",amount:150}]},{lvl:3,value:350,cost:[{type:"copper",amount:1200},{type:"iron",amount:600}]},{lvl:4,value:180}]}

# 구리 곡괭이(Lv.6)부터 노랑/파랑을 채굴할 수 있습니다.
data modify storage data const.tool[{lvl:6}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:6}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:6}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:6}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:7}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:7}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:7}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:7}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:8}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:8}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:8}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:8}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:9}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:9}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:9}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:9}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:10}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:10}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:10}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:10}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:11}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:11}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:11}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:11}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
