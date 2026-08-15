execute if score #disable_obsidian_resourceion var matches 1 run return 0
# 흑요석 광석 생산 관리

function resource/overworld/obsidian/lock/update

# D의 시련에서 흑요석 생산이 손실된 상태면 작동하지 않음
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_obsidian_resourceion trial matches 1 run setblock -17 1 5 air replace
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_obsidian_resourceion trial matches 1 run scoreboard players set #obsidian_present generate 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_obsidian_resourceion trial matches 1 run scoreboard players reset #obsidian_remain generate
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_obsidian_resourceion trial matches 1 run return 0

# 동굴 해금 전에는 미작동
execute unless score #cave unlock matches 1 run return 0
execute unless score #y var = #y var run return 0

# Y -32 이하에서만 생성됨
execute if score #y var matches -31999.. run return 0

# 이미 배치된 흑요석이 있으면 대기 상태 유지
execute unless block -17 1 5 air run scoreboard players set #obsidian_present generate 1
execute unless block -17 1 5 air run scoreboard players reset #obsidian_remain generate
execute unless block -17 1 5 air run return 0

# 배치되어 있던 흑요석이 사라진 경우에만 획득 처리
execute if score #obsidian_present generate matches 1 unless score #obsidian_full tmp matches 1 run function resource/overworld/obsidian/regen/break
execute if score #obsidian_present generate matches 1 run scoreboard players set #obsidian_present generate 0

# 보유량이 가득 찬 상태에서는 새 흑요석을 생성하지 않음
execute if score #obsidian_full tmp matches 1 run return 0

# 첫 진입 또는 대기값 소실 시 현재 깊이에 맞는 재생산 대기시간을 설정
scoreboard players set #obsidian_regen_initialized tmp 0
execute unless score #obsidian_remain generate = #obsidian_remain generate run scoreboard players set #obsidian_regen_initialized tmp 1
execute if score #obsidian_regen_initialized tmp matches 1 store result score #obsidian_remain generate run function resource/overworld/obsidian/value/regen_value
scoreboard players reset #obsidian_regen_initialized tmp

# 쿨다운이 전부 다 돌면 흑요석 설치
execute if score #obsidian_remain generate matches ..0 run function resource/overworld/obsidian/regen/place

# 쿨다운이 아직 다 돌지 않았으면 쿨다운 감소
execute if score #obsidian_remain generate matches 1.. run return run scoreboard players remove #obsidian_remain generate 1
