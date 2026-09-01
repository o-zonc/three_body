# 공장 상태를 새 문명의 기본값으로 명시적으로 초기화한다.
# level 0은 '미해금'과 '첫 구매' 양쪽에서 사용되므로 unlocked를 반드시 별도로 관리한다.
scoreboard players set #wood factory_level 0
scoreboard players set #stone factory_level 0
scoreboard players set #coal factory_level 0
scoreboard players set #copper factory_level 0
scoreboard players set #iron factory_level 0
scoreboard players set #gold factory_level 0
scoreboard players set #diamond factory_level 0
scoreboard players set #emerald factory_level 0
scoreboard players set #lapis factory_level 0
scoreboard players set #cold factory_level 0
scoreboard players set #heat factory_level 0

scoreboard players set #wood factory_unlocked 0
scoreboard players set #stone factory_unlocked 0
scoreboard players set #coal factory_unlocked 0
scoreboard players set #copper factory_unlocked 0
scoreboard players set #iron factory_unlocked 0
scoreboard players set #gold factory_unlocked 0
scoreboard players set #diamond factory_unlocked 0
scoreboard players set #emerald factory_unlocked 0
scoreboard players set #lapis factory_unlocked 0
scoreboard players set #cold factory_unlocked 0
scoreboard players set #heat factory_unlocked 0

scoreboard players set #wood factory_enabled 0
scoreboard players set #stone factory_enabled 0
scoreboard players set #coal factory_enabled 0
scoreboard players set #copper factory_enabled 0
scoreboard players set #iron factory_enabled 0
scoreboard players set #gold factory_enabled 0
scoreboard players set #diamond factory_enabled 0
scoreboard players set #emerald factory_enabled 0
scoreboard players set #lapis factory_enabled 0
scoreboard players set #cold factory_enabled 0
scoreboard players set #heat factory_enabled 0

# 실제 0레벨 공장 기본 주기와 동일하게 80틱으로 초기화한다.
scoreboard players set #wood factory_timer 80
scoreboard players set #stone factory_timer 80
scoreboard players set #coal factory_timer 80
scoreboard players set #copper factory_timer 80
scoreboard players set #iron factory_timer 80
scoreboard players set #gold factory_timer 80
scoreboard players set #diamond factory_timer 80
scoreboard players set #emerald factory_timer 80
scoreboard players set #lapis factory_timer 80
scoreboard players set #cold factory_timer 80
scoreboard players set #heat factory_timer 80

scoreboard players set #wood factory_status 0
scoreboard players set #stone factory_status 0
scoreboard players set #coal factory_status 0
scoreboard players set #copper factory_status 0
scoreboard players set #iron factory_status 0
scoreboard players set #gold factory_status 0
scoreboard players set #diamond factory_status 0
scoreboard players set #emerald factory_status 0
scoreboard players set #lapis factory_status 0
scoreboard players set #cold factory_status 0
scoreboard players set #heat factory_status 0

scoreboard players set #factory_any_unlocked tmp 0
scoreboard players set #factory_any_enabled tmp 0

# 자원 위의 공장 상태 모닥불도 즉시 초기화한다.
function factory/chunk_load/sync
function factory/campfires
