# 정상 비용 전체를 흑요석 1개로 대체하는 결제 경로
scoreboard players set #cost_obsidian cost 1
function meta/obsidian/take_cost
scoreboard players set #obsidian_cost_bypass tmp 0
return 1
