# 현재 문명의 달성도를 기준으로 이번 정산 보상을 계산한다.
# 정보: 기본 3 + 주요 시설/기술 달성 보너스
scoreboard players set #reckoning_information_reward tmp 3
execute if score #observatory unlock matches 1.. run scoreboard players add #reckoning_information_reward tmp 1
execute if score #alchemy_workshop unlock matches 1.. run scoreboard players add #reckoning_information_reward tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. run scoreboard players add #reckoning_information_reward tmp 2
execute if score #GLOBAL factory_build_stage matches 2.. run scoreboard players add #reckoning_information_reward tmp 2
execute if score #GLOBAL factory_build_stage matches 3.. run scoreboard players add #reckoning_information_reward tmp 3

# 시간: 기본 1 + 도달한 문명 시대마다 1
scoreboard players set #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 5.. run scoreboard players add #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 6.. run scoreboard players add #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 7.. run scoreboard players add #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 8.. run scoreboard players add #reckoning_time_reward tmp 1

# 정산 횟수는 진행 기록에만 사용하며 보상량을 강제로 보정하지 않는다.
scoreboard players operation #reckoning_next_count tmp = #GLOBAL reckoning_count
scoreboard players add #reckoning_next_count tmp 1

# 정산 시점에 남은 일반 자원을 메타 자원으로 환산한다.
# 몫만 보상에 더하므로 기준량에 못 미치는 나머지는 이 계산에서 제외된다.
function reckoning/add_resource_reward {id:"wood",amount:100000,reward:"information"}
function reckoning/add_resource_reward {id:"stone",amount:50000,reward:"information"}
function reckoning/add_resource_reward {id:"coal",amount:25000,reward:"information"}
function reckoning/add_resource_reward {id:"copper",amount:20000,reward:"information"}
function reckoning/add_resource_reward {id:"iron",amount:15000,reward:"information"}
function reckoning/add_resource_reward {id:"emerald",amount:10000,reward:"information"}

# 청금석·금·다이아몬드는 첫 1000개까지 20개당 1조각,
# 이후 초과분은 1000개당 1조각으로 환산한다.
function reckoning/add_time_resource_reward {id:"lapis"}
function reckoning/add_time_resource_reward {id:"gold"}
function reckoning/add_time_resource_reward {id:"diamond"}

# 열기와 냉기는 각각 정보와 시간 양쪽으로 환산한다.
function reckoning/add_resource_reward {id:"heat",amount:20,reward:"information"}
function reckoning/add_resource_reward {id:"heat",amount:20,reward:"time"}
function reckoning/add_resource_reward {id:"cold",amount:20,reward:"information"}
function reckoning/add_resource_reward {id:"cold",amount:20,reward:"time"}

# 노랑과 파랑은 문명 정산 후에도 유지되므로 환산하지 않는다.
