# tmp.cost에 발전과제 기반 상점 할인을 적용한다.
# 일반 발전과제는 각각 10%, 도전 발전과제 [확장된 시공간]은 20%를 합산한다.
# 적용 대상: 자원 상점 1층/2층에서 사용하는 물질 자원 비용
# 제외 대상: 정보, 시간, 세계의 눈, 경험치 등 메타/비물질 비용

# 이전 호출의 표시 상태가 남지 않도록 먼저 정리한다.
data remove storage data tmp.cost_original
data remove storage data tmp.shop_advancement_cost_original
data modify storage data tmp.shop_advancement_discount_note set value {text:""}

# 발전과제는 영구 기록이므로 보유 여부에서 현재 할인율을 매번 다시 계산한다.
execute unless score #shop_cost_discount_percent var = #shop_cost_discount_percent var run scoreboard players set #shop_cost_discount_percent var 0
scoreboard players set #shop_cost_discount_percent var 0
execute if entity @a[advancements={2_dried/01_archaeologist=true}] run scoreboard players add #shop_cost_discount_percent var 10
execute if entity @a[advancements={2_dried/03_help_from_the_past=true}] run scoreboard players add #shop_cost_discount_percent var 10
execute if entity @a[advancements={3_polarnight/02_expanded_spacetime=true}] run scoreboard players add #shop_cost_discount_percent var 20

execute unless score #shop_cost_discount_percent var matches 1..99 run return 0
execute if score #overworld_advancement_reward_disabled var matches 1 run return 0
execute unless data storage data tmp.cost run return 0

# 호버에서 할인 전/후 비용을 비교할 수 있도록 원본을 별도로 보존한다.
data modify storage data tmp.shop_advancement_cost_original set from storage data tmp.cost

# 합산된 최종 할인율을 UI에 표시한다.
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
