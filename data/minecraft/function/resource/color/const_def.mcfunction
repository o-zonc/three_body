# 중입자 충돌 실험 이후 발견되는 색채 자원 상수.
# base const_def 직후 실행되어 const.resource와 구리 곡괭이 이후 도구 규칙을 확장합니다.

data modify storage data const.resource.yellow set value {item:"yellow_glazed_terracotta",regen:[{lvl:0,value:1200,cost:[{type:"wood",amount:50},{type:"stone",amount:50}]},{lvl:1,value:800,cost:[{type:"stone",amount:200},{type:"coal",amount:100}]},{lvl:2,value:500,cost:[{type:"copper",amount:250},{type:"iron",amount:100}]},{lvl:3,value:300,cost:[{type:"copper",amount:1000},{type:"iron",amount:500}]},{lvl:4,value:160}]}
data modify storage data const.resource.blue set value {item:"blue_glazed_terracotta",regen:[{lvl:0,value:1400,cost:[{type:"wood",amount:75},{type:"stone",amount:75}]},{lvl:1,value:900,cost:[{type:"stone",amount:250},{type:"coal",amount:125}]},{lvl:2,value:600,cost:[{type:"copper",amount:300},{type:"iron",amount:150}]},{lvl:3,value:350,cost:[{type:"copper",amount:1200},{type:"iron",amount:600}]},{lvl:4,value:180}]}

# 구리 곡괭이(Lv.6)부터 노랑/파랑을 채굴할 수 있습니다.
# Lv.12 이상의 기존 외계 자원 규칙과 같은 초기 속도(약 8초)를 사용해 도구 성장 밸런스를 유지합니다.
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
