# tmp.cost 의 목록에 있는 자원 요구 목록만큼 자원을 보유 중이면 1을, 그렇지 않으면 0을 반환
# 정상 비용을 낼 수 없을 때, no_obsidian 마커가 없다면 부족한 비용 항목마다 흑요석 1개로 대체할 수 있다.
# 자동 인출이 해금된 정보/시간은 결제 시에만 보관소 초과분을 함께 사용할 수 있다.

function meta/sync
scoreboard players set #obsidian_cost_bypass tmp 0
scoreboard players set #obsidian_substitution_count tmp 0
scoreboard players set #cost_prepared tmp 0
scoreboard players set #meta_auto_gate_blocked tmp 0
scoreboard players reset * cost

scoreboard players set #cost_wood cost 0
scoreboard players set #cost_stone cost 0
scoreboard players set #cost_coal cost 0
scoreboard players set #cost_copper cost 0
scoreboard players set #cost_iron cost 0
scoreboard players set #cost_diamond cost 0
scoreboard players set #cost_emerald cost 0
scoreboard players set #cost_lapis cost 0
scoreboard players set #cost_heat cost 0
scoreboard players set #cost_cold cost 0
scoreboard players set #cost_information cost 0
scoreboard players set #cost_time cost 0
scoreboard players set #cost_obsidian cost 0
scoreboard players set #cost_gold cost 0

execute if data storage data tmp.cost[{type:"wood"}].amount store result score #cost_wood cost run data get storage data tmp.cost[{type:"wood"}].amount
execute if data storage data tmp.cost[{type:"stone"}].amount store result score #cost_stone cost run data get storage data tmp.cost[{type:"stone"}].amount
execute if data storage data tmp.cost[{type:"coal"}].amount store result score #cost_coal cost run data get storage data tmp.cost[{type:"coal"}].amount
execute if data storage data tmp.cost[{type:"copper"}].amount store result score #cost_copper cost run data get storage data tmp.cost[{type:"copper"}].amount
execute if data storage data tmp.cost[{type:"iron"}].amount store result score #cost_iron cost run data get storage data tmp.cost[{type:"iron"}].amount
execute if data storage data tmp.cost[{type:"diamond"}].amount store result score #cost_diamond cost run data get storage data tmp.cost[{type:"diamond"}].amount
execute if data storage data tmp.cost[{type:"emerald"}].amount store result score #cost_emerald cost run data get storage data tmp.cost[{type:"emerald"}].amount
execute if data storage data tmp.cost[{type:"lapis"}].amount store result score #cost_lapis cost run data get storage data tmp.cost[{type:"lapis"}].amount
execute if data storage data tmp.cost[{type:"heat"}].amount store result score #cost_heat cost run data get storage data tmp.cost[{type:"heat"}].amount
execute if data storage data tmp.cost[{type:"cold"}].amount store result score #cost_cold cost run data get storage data tmp.cost[{type:"cold"}].amount
execute if data storage data tmp.cost[{type:"information"}].amount store result score #cost_information cost run data get storage data tmp.cost[{type:"information"}].amount
execute if data storage data tmp.cost[{type:"time"}].amount store result score #cost_time cost run data get storage data tmp.cost[{type:"time"}].amount
execute if data storage data tmp.cost[{type:"obsidian"}].amount store result score #cost_obsidian cost run data get storage data tmp.cost[{type:"obsidian"}].amount
execute if data storage data tmp.cost[{type:"gold"}].amount store result score #cost_gold cost run data get storage data tmp.cost[{type:"gold"}].amount

# 메타 자원은 자동 인출 해금 전에는 소지량만, 해금 후에는 보호 하한선을 넘는 보관량까지 결제 가능량으로 인정한다.
scoreboard players operation #information_cost_available tmp = #information_wallet tmp
scoreboard players set #information_bank_spendable tmp 0
execute if score #information_auto_withdraw meta matches 1 run scoreboard players operation #information_bank_spendable tmp = #information_bank meta
execute if score #information_auto_withdraw meta matches 1 run scoreboard players remove #information_bank_spendable tmp 500
execute if score #information_bank_spendable tmp matches ..-1 run scoreboard players set #information_bank_spendable tmp 0
execute if score #information_auto_withdraw meta matches 1 run scoreboard players operation #information_cost_available tmp += #information_bank_spendable tmp

scoreboard players operation #time_cost_available tmp = #time_wallet tmp
scoreboard players set #time_bank_spendable tmp 0
execute if score #time_auto_withdraw meta matches 1 run scoreboard players operation #time_bank_spendable tmp = #time_bank meta
execute if score #time_auto_withdraw meta matches 1 run scoreboard players remove #time_bank_spendable tmp 250
execute if score #time_bank_spendable tmp matches ..-1 run scoreboard players set #time_bank_spendable tmp 0
execute if score #time_auto_withdraw meta matches 1 run scoreboard players operation #time_cost_available tmp += #time_bank_spendable tmp

# 최종 일반 소지 한도(정보 64 / 시간 16)를 넘는 비용은 자동 인출 해금 이후의 콘텐츠로 취급한다.
# 이 게이트가 잠긴 상태에서는 흑요석으로 우회할 수 없다.
execute if score #cost_information cost matches 65.. unless score #information_auto_withdraw meta matches 1 run scoreboard players set #meta_auto_gate_blocked tmp 1
execute if score #cost_time cost matches 17.. unless score #time_auto_withdraw meta matches 1 run scoreboard players set #meta_auto_gate_blocked tmp 1

# 정상 비용을 모두 충족하는지 먼저 계산한다.
scoreboard players set #cost_regular_ok tmp 1
execute unless score #wood material >= #cost_wood cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #stone material >= #cost_stone cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #coal material >= #cost_coal cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #copper material >= #cost_copper cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #iron material >= #cost_iron cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #diamond material >= #cost_diamond cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #emerald material >= #cost_emerald cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #lapis material >= #cost_lapis cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #heat material >= #cost_heat cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #cold material >= #cost_cold cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #information_cost_available tmp >= #cost_information cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #time_cost_available tmp >= #cost_time cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #obsidian_wallet tmp >= #cost_obsidian cost run scoreboard players set #cost_regular_ok tmp 0
execute unless score #gold material >= #cost_gold cost run scoreboard players set #cost_regular_ok tmp 0

execute if score #cost_regular_ok tmp matches 1 run scoreboard players set #cost_prepared tmp 1
execute if score #cost_regular_ok tmp matches 1 run return 1

# 일부 거래는 흑요석 대체를 금지한다. (일회용 이동기, 연성/시공간 확장, 흑요석 수급 등)
execute if data storage data tmp.cost[{type:"no_obsidian"}] run return 0
# 자동 인출 해금 전용 메타 비용은 흑요석으로 진행 게이트를 건너뛸 수 없다.
execute if score #meta_auto_gate_blocked tmp matches 1 run return 0

# 부족한 항목은 정상 차감 대상에서 제외하고, 항목 하나당 흑요석 비용을 1씩 추가한다.
# 명시적으로 요구된 흑요석 자체는 다른 흑요석으로 대체할 수 없다.
execute unless score #wood material >= #cost_wood cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #wood material >= #cost_wood cost run scoreboard players set #cost_wood cost 0
execute unless score #stone material >= #cost_stone cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #stone material >= #cost_stone cost run scoreboard players set #cost_stone cost 0
execute unless score #coal material >= #cost_coal cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #coal material >= #cost_coal cost run scoreboard players set #cost_coal cost 0
execute unless score #copper material >= #cost_copper cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #copper material >= #cost_copper cost run scoreboard players set #cost_copper cost 0
execute unless score #iron material >= #cost_iron cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #iron material >= #cost_iron cost run scoreboard players set #cost_iron cost 0
execute unless score #diamond material >= #cost_diamond cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #diamond material >= #cost_diamond cost run scoreboard players set #cost_diamond cost 0
execute unless score #emerald material >= #cost_emerald cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #emerald material >= #cost_emerald cost run scoreboard players set #cost_emerald cost 0
execute unless score #lapis material >= #cost_lapis cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #lapis material >= #cost_lapis cost run scoreboard players set #cost_lapis cost 0
execute unless score #heat material >= #cost_heat cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #heat material >= #cost_heat cost run scoreboard players set #cost_heat cost 0
execute unless score #cold material >= #cost_cold cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #cold material >= #cost_cold cost run scoreboard players set #cost_cold cost 0
execute unless score #information_cost_available tmp >= #cost_information cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #information_cost_available tmp >= #cost_information cost run scoreboard players set #cost_information cost 0
execute unless score #time_cost_available tmp >= #cost_time cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #time_cost_available tmp >= #cost_time cost run scoreboard players set #cost_time cost 0
execute unless score #gold material >= #cost_gold cost run scoreboard players add #obsidian_substitution_count tmp 1
execute unless score #gold material >= #cost_gold cost run scoreboard players set #cost_gold cost 0

execute unless score #obsidian_substitution_count tmp matches 1.. run return 0
scoreboard players operation #cost_obsidian cost += #obsidian_substitution_count tmp
execute unless score #obsidian_wallet tmp >= #cost_obsidian cost run scoreboard players set #obsidian_substitution_count tmp 0
execute unless score #obsidian_wallet tmp >= #cost_obsidian cost run return 0
scoreboard players set #obsidian_cost_bypass tmp 1
scoreboard players set #cost_prepared tmp 1
return 1
