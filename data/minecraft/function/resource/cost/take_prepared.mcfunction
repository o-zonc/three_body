# resource/check_cost가 준비한 비용 점수를 차감한다.
# 부족하여 흑요석으로 대체된 항목은 이미 0이며, #cost_obsidian에는 대체 개수가 합산되어 있다.

scoreboard players operation #wood material -= #cost_wood cost
scoreboard players operation #stone material -= #cost_stone cost
scoreboard players operation #coal material -= #cost_coal cost
scoreboard players operation #copper material -= #cost_copper cost
scoreboard players operation #iron material -= #cost_iron cost
scoreboard players operation #diamond material -= #cost_diamond cost
scoreboard players operation #emerald material -= #cost_emerald cost
scoreboard players operation #lapis material -= #cost_lapis cost
scoreboard players operation #heat material -= #cost_heat cost
scoreboard players operation #cold material -= #cost_cold cost
function meta/information/take_cost
function meta/time/take_cost
function meta/obsidian/take_cost
scoreboard players operation #gold material -= #cost_gold cost

execute unless entity @a[tag=accelerator_experiment_running] if score #obsidian_substitution_count tmp matches 1.. run title @s actionbar [{text:"",italic:false},{text:"부족한 비용 ",color:"gray"},{score:{name:"#obsidian_substitution_count",objective:"tmp"},color:"dark_purple"},{text:" 항목을 흑요석으로 대체했습니다.",color:"gray"}]
scoreboard players set #cost_prepared tmp 0
scoreboard players set #obsidian_cost_bypass tmp 0
scoreboard players set #obsidian_substitution_count tmp 0
return 1
