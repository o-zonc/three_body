execute unless score #wood factory_level = #wood factory_level run scoreboard players set #wood factory_level 0
execute unless score #stone factory_level = #stone factory_level run scoreboard players set #stone factory_level 0
execute unless score #coal factory_level = #coal factory_level run scoreboard players set #coal factory_level 0
execute unless score #copper factory_level = #copper factory_level run scoreboard players set #copper factory_level 0
execute unless score #iron factory_level = #iron factory_level run scoreboard players set #iron factory_level 0
execute unless score #gold factory_level = #gold factory_level run scoreboard players set #gold factory_level 0
execute unless score #diamond factory_level = #diamond factory_level run scoreboard players set #diamond factory_level 0
execute unless score #emerald factory_level = #emerald factory_level run scoreboard players set #emerald factory_level 0
execute unless score #lapis factory_level = #lapis factory_level run scoreboard players set #lapis factory_level 0
execute unless score #cold factory_level = #cold factory_level run scoreboard players set #cold factory_level 0
execute unless score #wood factory_unlocked = #wood factory_unlocked run scoreboard players set #wood factory_unlocked 0
execute unless score #stone factory_unlocked = #stone factory_unlocked run scoreboard players set #stone factory_unlocked 0
execute unless score #coal factory_unlocked = #coal factory_unlocked run scoreboard players set #coal factory_unlocked 0
execute unless score #copper factory_unlocked = #copper factory_unlocked run scoreboard players set #copper factory_unlocked 0
execute unless score #iron factory_unlocked = #iron factory_unlocked run scoreboard players set #iron factory_unlocked 0
execute unless score #gold factory_unlocked = #gold factory_unlocked run scoreboard players set #gold factory_unlocked 0
execute unless score #diamond factory_unlocked = #diamond factory_unlocked run scoreboard players set #diamond factory_unlocked 0
execute unless score #emerald factory_unlocked = #emerald factory_unlocked run scoreboard players set #emerald factory_unlocked 0
execute unless score #lapis factory_unlocked = #lapis factory_unlocked run scoreboard players set #lapis factory_unlocked 0
execute unless score #cold factory_unlocked = #cold factory_unlocked run scoreboard players set #cold factory_unlocked 0
execute if score #wood factory_level matches 1.. run scoreboard players set #wood factory_unlocked 1
execute if score #stone factory_level matches 1.. run scoreboard players set #stone factory_unlocked 1
execute if score #coal factory_level matches 1.. run scoreboard players set #coal factory_unlocked 1
execute if score #copper factory_level matches 1.. run scoreboard players set #copper factory_unlocked 1
execute if score #iron factory_level matches 1.. run scoreboard players set #iron factory_unlocked 1
execute if score #gold factory_level matches 1.. run scoreboard players set #gold factory_unlocked 1
execute if score #diamond factory_level matches 1.. run scoreboard players set #diamond factory_unlocked 1
execute if score #emerald factory_level matches 1.. run scoreboard players set #emerald factory_unlocked 1
execute if score #lapis factory_level matches 1.. run scoreboard players set #lapis factory_unlocked 1
execute if score #cold factory_level matches 1.. run scoreboard players set #cold factory_unlocked 1
execute unless score #wood factory_enabled = #wood factory_enabled run scoreboard players set #wood factory_enabled 0
execute unless score #stone factory_enabled = #stone factory_enabled run scoreboard players set #stone factory_enabled 0
execute unless score #coal factory_enabled = #coal factory_enabled run scoreboard players set #coal factory_enabled 0
execute unless score #copper factory_enabled = #copper factory_enabled run scoreboard players set #copper factory_enabled 0
execute unless score #iron factory_enabled = #iron factory_enabled run scoreboard players set #iron factory_enabled 0
execute unless score #gold factory_enabled = #gold factory_enabled run scoreboard players set #gold factory_enabled 0
execute unless score #diamond factory_enabled = #diamond factory_enabled run scoreboard players set #diamond factory_enabled 0
execute unless score #emerald factory_enabled = #emerald factory_enabled run scoreboard players set #emerald factory_enabled 0
execute unless score #lapis factory_enabled = #lapis factory_enabled run scoreboard players set #lapis factory_enabled 0
execute unless score #cold factory_enabled = #cold factory_enabled run scoreboard players set #cold factory_enabled 0

execute unless score #wood factory_timer = #wood factory_timer run scoreboard players set #wood factory_timer 1200
execute unless score #stone factory_timer = #stone factory_timer run scoreboard players set #stone factory_timer 1200
execute unless score #coal factory_timer = #coal factory_timer run scoreboard players set #coal factory_timer 1200
execute unless score #copper factory_timer = #copper factory_timer run scoreboard players set #copper factory_timer 1200
execute unless score #iron factory_timer = #iron factory_timer run scoreboard players set #iron factory_timer 1200
execute unless score #gold factory_timer = #gold factory_timer run scoreboard players set #gold factory_timer 1200
execute unless score #diamond factory_timer = #diamond factory_timer run scoreboard players set #diamond factory_timer 1200
execute unless score #emerald factory_timer = #emerald factory_timer run scoreboard players set #emerald factory_timer 1200
execute unless score #lapis factory_timer = #lapis factory_timer run scoreboard players set #lapis factory_timer 1200
execute unless score #cold factory_timer = #cold factory_timer run scoreboard players set #cold factory_timer 80

execute unless score #wood factory_status = #wood factory_status run scoreboard players set #wood factory_status 0
execute unless score #stone factory_status = #stone factory_status run scoreboard players set #stone factory_status 0
execute unless score #coal factory_status = #coal factory_status run scoreboard players set #coal factory_status 0
execute unless score #copper factory_status = #copper factory_status run scoreboard players set #copper factory_status 0
execute unless score #iron factory_status = #iron factory_status run scoreboard players set #iron factory_status 0
execute unless score #gold factory_status = #gold factory_status run scoreboard players set #gold factory_status 0
execute unless score #diamond factory_status = #diamond factory_status run scoreboard players set #diamond factory_status 0
execute unless score #emerald factory_status = #emerald factory_status run scoreboard players set #emerald factory_status 0
execute unless score #lapis factory_status = #lapis factory_status run scoreboard players set #lapis factory_status 0
execute unless score #cold factory_status = #cold factory_status run scoreboard players set #cold factory_status 0

# 기존 월드도 리로드 시 공장 모닥불을 현재 가동 상태에 맞춥니다.
function factory/campfires
