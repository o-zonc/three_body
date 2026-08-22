# tmp.cost에 발전과제 기반 상점 할인을 적용한다.
# 적용 대상: 자원 상점 1층/2층에서 사용하는 물질 자원 비용
# 제외 대상: 정보, 시간, 세계의 눈, 경험치 등 메타/비물질 비용

# 이전 호출의 표시 상태가 남지 않도록 먼저 정리한다.
data remove storage data tmp.cost_original
data modify storage data tmp.shop_advancement_discount_note set value {text:""}

execute unless score #shop_cost_advancement_reward var matches 1 run return 0
execute if score #overworld_advancement_reward_disabled var matches 1 run return 0
execute unless data storage data tmp.cost run return 0

# 기존 tmp.cost_original은 결정 상점 등 다른 비용 감소 시스템의 표시용이므로 재사용하지 않는다.
# 이번 보상은 할인된 비용 자체와 별도의 ★ 안내 문구로 표시한다.
data modify storage data tmp.shop_advancement_discount_note set value {text:"★ 발전과제 보상: 상점 비용 50% 감소\n",color:"green",italic:false}

function resource/cost/halve_shop_type {type:"wood"}
function resource/cost/halve_shop_type {type:"stone"}
function resource/cost/halve_shop_type {type:"coal"}
function resource/cost/halve_shop_type {type:"copper"}
function resource/cost/halve_shop_type {type:"iron"}
function resource/cost/halve_shop_type {type:"gold"}
function resource/cost/halve_shop_type {type:"diamond"}
function resource/cost/halve_shop_type {type:"emerald"}
function resource/cost/halve_shop_type {type:"lapis"}
function resource/cost/halve_shop_type {type:"heat"}
function resource/cost/halve_shop_type {type:"cold"}

return 1
