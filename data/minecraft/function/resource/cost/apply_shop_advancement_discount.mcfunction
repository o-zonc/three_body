# tmp.cost에 발전과제 기반 상점 할인을 적용한다.
# 할인은 누적하지 않고 #shop_cost_discount_percent에 저장된 단일 비율만 적용한다.
# 적용 대상: 자원 상점 1층/2층에서 사용하는 물질 자원 비용
# 제외 대상: 정보, 시간, 세계의 눈, 경험치 등 메타/비물질 비용

# 이전 호출의 표시 상태가 남지 않도록 먼저 정리한다.
data remove storage data tmp.cost_original
data modify storage data tmp.shop_advancement_discount_note set value {text:""}

# 기존 세이브 호환: 과거 플래그/단계만 존재하면 현재 할인율로 승격한다.
execute unless score #shop_cost_discount_percent var = #shop_cost_discount_percent var run scoreboard players set #shop_cost_discount_percent var 0
execute if score #dried_shop_discount_stage var matches 1 unless score #shop_cost_discount_percent var matches 20.. run scoreboard players set #shop_cost_discount_percent var 20
execute if score #dried_shop_discount_stage var matches 2 unless score #shop_cost_discount_percent var matches 40.. run scoreboard players set #shop_cost_discount_percent var 40
execute if score #shop_cost_advancement_reward var matches 1 unless score #shop_cost_discount_percent var matches 50.. run scoreboard players set #shop_cost_discount_percent var 50

execute unless score #shop_cost_discount_percent var matches 1..99 run return 0
execute if score #overworld_advancement_reward_disabled var matches 1 run return 0
execute unless data storage data tmp.cost run return 0

# 할인율은 하나만 적용되며 UI에도 현재 최종 비율만 표시한다.
data modify storage data tmp.shop_advancement_discount_note set value [{text:"★ 발전과제 보상: 상점 비용 ",color:"green",italic:false},{score:{name:"#shop_cost_discount_percent",objective:"var"},color:"green",italic:false},{text:"% 감소\n",color:"green",italic:false}]

function resource/cost/scale_shop_type {type:"wood"}
function resource/cost/scale_shop_type {type:"stone"}
function resource/cost/scale_shop_type {type:"coal"}
function resource/cost/scale_shop_type {type:"copper"}
function resource/cost/scale_shop_type {type:"iron"}
function resource/cost/scale_shop_type {type:"gold"}
function resource/cost/scale_shop_type {type:"diamond"}
function resource/cost/scale_shop_type {type:"emerald"}
function resource/cost/scale_shop_type {type:"lapis"}
function resource/cost/scale_shop_type {type:"heat"}
function resource/cost/scale_shop_type {type:"cold"}

return 1
