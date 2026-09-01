# Macro args: id
scoreboard players set #heat_second_kind tmp 1
scoreboard players set #cold_second_kind tmp 1
scoreboard players set #get_second_kind tmp 2
scoreboard players set #gold_second_kind tmp 3
scoreboard players set #diamond_second_kind tmp 3
scoreboard players set #special_second_kind tmp 4
scoreboard players set #gold_second_gate tmp 1
scoreboard players set #diamond_second_gate tmp 2

$execute unless score #$(id)_second_lvl upgrade = #$(id)_second_lvl upgrade run scoreboard players set #$(id)_second_lvl upgrade 0
$scoreboard players operation #second_lvl tmp = #$(id)_second_lvl upgrade
scoreboard players set #second_current tmp 0
scoreboard players set #second_next tmp 0
execute if score #second_lvl tmp matches 1 run scoreboard players set #second_current tmp 1
execute if score #second_lvl tmp matches 2 run scoreboard players set #second_current tmp 2
execute if score #second_lvl tmp matches 3 run scoreboard players set #second_current tmp 5
execute if score #second_lvl tmp matches 4.. run scoreboard players set #second_current tmp 10
execute if score #second_lvl tmp matches 0 run scoreboard players set #second_next tmp 1
execute if score #second_lvl tmp matches 1 run scoreboard players set #second_next tmp 2
execute if score #second_lvl tmp matches 2 run scoreboard players set #second_next tmp 5
execute if score #second_lvl tmp matches 3 run scoreboard players set #second_next tmp 10

# 열기·냉기 단말은 보너스 대신 자연 지급 주기를 표시합니다.
$execute if score #second_lvl tmp matches 0 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 1200
$execute if score #second_lvl tmp matches 1 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 900
$execute if score #second_lvl tmp matches 2 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 600
$execute if score #second_lvl tmp matches 3 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 400
$execute if score #second_lvl tmp matches 4.. if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 200
$execute if score #second_lvl tmp matches 0 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 900
$execute if score #second_lvl tmp matches 1 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 600
$execute if score #second_lvl tmp matches 2 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 400
$execute if score #second_lvl tmp matches 3 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 200

# 금·다이아몬드에 적용되는 공통 생산량 보너스와 실제 적용 수치
execute store result score #second_production_base tmp run function resource/production/base
scoreboard players operation #second_common_bonus tmp = #second_production_base tmp
scoreboard players remove #second_common_bonus tmp 1
execute store result score #second_extreme_multiplier tmp run function resource/production/extreme_multiplier
scoreboard players operation #second_common_effective tmp = #second_common_bonus tmp
scoreboard players operation #second_common_effective tmp *= #second_extreme_multiplier tmp

data remove storage data tmp.cost
# 열기·냉기 자연 수급: 선택적 편의 강화이므로 금속 비용과 회수 가능한 소량의 해당 환경 자원만 요구합니다.
$execute if score #$(id)_second_kind tmp matches 1 if score #second_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:100},{type:"iron",amount:100}]
$execute if score #$(id)_second_kind tmp matches 1 if score #second_lvl tmp matches 1 run data modify storage data tmp.cost set value [{type:"copper",amount:200},{type:"iron",amount:300},{type:"$(id)",amount:5}]
$execute if score #$(id)_second_kind tmp matches 1 if score #second_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"copper",amount:600},{type:"iron",amount:1200},{type:"$(id)",amount:15}]
$execute if score #$(id)_second_kind tmp matches 1 if score #second_lvl tmp matches 3 run data modify storage data tmp.cost set value [{type:"copper",amount:1800},{type:"iron",amount:4000},{type:"$(id)",amount:40}]

# 기초 생산 공정: 2층의 선행 산업 기반. 보석 대신 오버월드 금속과 후반 연구 자원을 사용합니다.
$execute if score #$(id)_second_kind tmp matches 2 if score #second_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:100},{type:"iron",amount:100}]
$execute if score #$(id)_second_kind tmp matches 2 if score #second_lvl tmp matches 1 run data modify storage data tmp.cost set value [{type:"copper",amount:250},{type:"iron",amount:400}]
$execute if score #$(id)_second_kind tmp matches 2 if score #second_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"copper",amount:900},{type:"iron",amount:1500},{type:"information",amount:4}]
$execute if score #$(id)_second_kind tmp matches 2 if score #second_lvl tmp matches 3 run data modify storage data tmp.cost set value [{type:"copper",amount:3000},{type:"iron",amount:5000},{type:"information",amount:8},{type:"time",amount:4}]

# 금·다이아몬드 생산: 높은 후반 자기 생산량 대신 연결 차원의 희귀 자원을 진행 게이트로 사용합니다.
$execute if score #$(id)_second_gate tmp matches 1 if score #second_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:150},{type:"iron",amount:150}]
$execute if score #$(id)_second_gate tmp matches 1 if score #second_lvl tmp matches 1 run data modify storage data tmp.cost set value [{type:"copper",amount:150},{type:"iron",amount:400},{type:"heat",amount:10}]
$execute if score #$(id)_second_gate tmp matches 1 if score #second_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"copper",amount:600},{type:"iron",amount:1600},{type:"heat",amount:35}]
$execute if score #$(id)_second_gate tmp matches 1 if score #second_lvl tmp matches 3 run data modify storage data tmp.cost set value [{type:"copper",amount:2400},{type:"iron",amount:6400},{type:"heat",amount:100}]
$execute if score #$(id)_second_gate tmp matches 2 if score #second_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:150},{type:"iron",amount:150}]
$execute if score #$(id)_second_gate tmp matches 2 if score #second_lvl tmp matches 1 run data modify storage data tmp.cost set value [{type:"copper",amount:150},{type:"iron",amount:400},{type:"cold",amount:10}]
$execute if score #$(id)_second_gate tmp matches 2 if score #second_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"copper",amount:600},{type:"iron",amount:1600},{type:"cold",amount:35}]
$execute if score #$(id)_second_gate tmp matches 2 if score #second_lvl tmp matches 3 run data modify storage data tmp.cost set value [{type:"copper",amount:2400},{type:"iron",amount:6400},{type:"cold",amount:100}]

# 극한 환경 수급: 두 차원의 진행을 함께 요구하는 핵심 성장 강화입니다.
$execute if score #$(id)_second_kind tmp matches 4 if score #second_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:200},{type:"iron",amount:250}]
$execute if score #$(id)_second_kind tmp matches 4 if score #second_lvl tmp matches 1 run data modify storage data tmp.cost set value [{type:"copper",amount:300},{type:"iron",amount:700},{type:"heat",amount:10},{type:"cold",amount:10}]
$execute if score #$(id)_second_kind tmp matches 4 if score #second_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"copper",amount:1000},{type:"iron",amount:2500},{type:"heat",amount:30},{type:"cold",amount:30}]
$execute if score #$(id)_second_kind tmp matches 4 if score #second_lvl tmp matches 3 run data modify storage data tmp.cost set value [{type:"copper",amount:4000},{type:"iron",amount:10000},{type:"heat",amount:80},{type:"cold",amount:80},{type:"information",amount:12},{type:"time",amount:6}]
function resource/cost/apply_shop_advancement_discount
