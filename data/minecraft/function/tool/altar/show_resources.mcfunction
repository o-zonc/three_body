execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 1.4
function util/blank

data modify storage data tmp.altar_resource_info set value [{text:"  [ 천공의 제단 - 자원 분류 ]",color:"#91D7FF",shadow_color:-16777216},{text:"\n  제단이 기억하는 자원만 이름을 드러냅니다.",color:"dark_aqua",italic:true}]

# 일반 분류는 아직 발견한 자원이 없어도 분류명과 성격을 공개한다.
data modify storage data tmp.altar_resource_info append value {text:"\n\n  ◆ 나무",color:"yellow"}
data modify storage data tmp.altar_resource_info append value {text:"\n  문명의 시작을 이루는 가장 기초적인 자원.",color:"gray"}
execute if score #seen_wood var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 나무",color:"yellow"}

data modify storage data tmp.altar_resource_info append value {text:"\n\n  ◆ 석재 자원",color:"gray"}
data modify storage data tmp.altar_resource_info append value {text:"\n  지층에서 얻는 기초 광물과 연료 자원.",color:"gray"}
execute if score #seen_stone var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 돌",color:"gray"}
execute if score #seen_coal var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 석탄",color:"dark_gray"}

data modify storage data tmp.altar_resource_info append value {text:"\n\n  ◆ 금속 자원",color:"gold"}
data modify storage data tmp.altar_resource_info append value {text:"\n  도구와 기계를 발전시키는 가공 가능한 광물 자원.",color:"gray"}
execute if score #seen_copper var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 구리",color:"gold"}
execute if score #seen_iron var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 철",color:"white"}
execute if score #seen_gold var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 금",color:"gold"}
execute if score #seen_diamond var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 다이아몬드",color:"aqua"}

data modify storage data tmp.altar_resource_info append value {text:"\n\n  ◆ 보석 자원",color:"green"}
data modify storage data tmp.altar_resource_info append value {text:"\n  정교한 가공과 연성에 사용되는 희귀 광물 자원.",color:"gray"}
execute if score #seen_emerald var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 에메랄드",color:"green"}
execute if score #seen_lapis var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 청금석",color:"blue"}

data modify storage data tmp.altar_resource_info append value {text:"\n\n  ◆ 특수 자원",color:"light_purple"}
data modify storage data tmp.altar_resource_info append value {text:"\n  세계의 환경과 성질이 응축된 비정형 자원.",color:"gray"}
execute if score #seen_heat var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 열기",color:"red"}
execute if score #seen_cold var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 냉기",color:"aqua"}

# 외계 자원은 해금 전까지 분류명과 설명을 포함한 모든 정보를 숨긴다.
execute if score #color_resources_unlocked var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n\n  ◆ 외계 자원",color:"dark_gray"}
execute if score #color_resources_unlocked var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  기존 물질 이론으로 설명하기 어려운 이질적인 자원.",color:"gray"}
execute if score #color_resources_unlocked var matches 1 if score #seen_yellow var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 노랑",color:"yellow"}
execute if score #color_resources_unlocked var matches 1 if score #seen_blue var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 파랑",color:"blue"}

data modify storage data tmp.altar_resource_info append value {text:"\n\n  ◆ 메타 자원",color:"dark_aqua"}
data modify storage data tmp.altar_resource_info append value {text:"\n  문명과 시공간의 진행에 직접 관여하는 희귀 자원.",color:"gray"}
execute if score #seen_information var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 정보",color:"light_purple"}
execute if score #seen_time var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 시간",color:"dark_aqua"}
execute if score #seen_world_eye var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 세계의 눈",color:"dark_green"}
execute if score #seen_obsidian var matches 1 run data modify storage data tmp.altar_resource_info append value {text:"\n  • 흑요석",color:"dark_purple"}

data modify storage data tmp.altar_resource_info append value {text:"\n"}
tellraw @s [{storage:"data",nbt:"tmp.altar_resource_info[]",interpret:true,separator:{text:""}}]
