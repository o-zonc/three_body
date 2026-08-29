# 정보 보관소 250조각 이상일 때 공장별 해금 상태를 정확히 복원한다.
# factory_level 0인 첫 구매 공장도 unlocked 값으로 구분한다.
execute if score #vault_factory tmp matches 1 run scoreboard players operation #factory_recycle_level upgrade = #vault_factory_recycle_level tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #factory_energy_level upgrade = #vault_factory_energy_level tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #wood factory_unlocked = #vault_factory_wood_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #stone factory_unlocked = #vault_factory_stone_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #coal factory_unlocked = #vault_factory_coal_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #copper factory_unlocked = #vault_factory_copper_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #iron factory_unlocked = #vault_factory_iron_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #gold factory_unlocked = #vault_factory_gold_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #diamond factory_unlocked = #vault_factory_diamond_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #emerald factory_unlocked = #vault_factory_emerald_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #lapis factory_unlocked = #vault_factory_lapis_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #cold factory_unlocked = #vault_factory_cold_unlocked tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #heat factory_unlocked = #vault_factory_heat_unlocked tmp

# 정산 직전의 ON/OFF 상태와 UI 상태를 함께 복원한다.
execute if score #vault_factory tmp matches 1 run scoreboard players operation #wood factory_enabled = #vault_factory_wood_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #stone factory_enabled = #vault_factory_stone_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #coal factory_enabled = #vault_factory_coal_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #copper factory_enabled = #vault_factory_copper_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #iron factory_enabled = #vault_factory_iron_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #gold factory_enabled = #vault_factory_gold_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #diamond factory_enabled = #vault_factory_diamond_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #emerald factory_enabled = #vault_factory_emerald_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #lapis factory_enabled = #vault_factory_lapis_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #cold factory_enabled = #vault_factory_cold_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #heat factory_enabled = #vault_factory_heat_enabled tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #wood factory_status = #wood factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #stone factory_status = #stone factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #coal factory_status = #coal factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #copper factory_status = #copper factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #iron factory_status = #iron factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #gold factory_status = #gold factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #diamond factory_status = #diamond factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #emerald factory_status = #emerald factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #lapis factory_status = #lapis factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #cold factory_status = #cold factory_enabled
execute if score #vault_factory tmp matches 1 run scoreboard players operation #heat factory_status = #heat factory_enabled

# 복원된 레벨에 맞는 첫 생산 주기를 즉시 설정한다.
execute if score #vault_factory tmp matches 1 if score #wood factory_unlocked matches 1 run function factory/set_timer {id:"wood"}
execute if score #vault_factory tmp matches 1 if score #stone factory_unlocked matches 1 run function factory/set_timer {id:"stone"}
execute if score #vault_factory tmp matches 1 if score #coal factory_unlocked matches 1 run function factory/set_timer {id:"coal"}
execute if score #vault_factory tmp matches 1 if score #copper factory_unlocked matches 1 run function factory/set_timer {id:"copper"}
execute if score #vault_factory tmp matches 1 if score #iron factory_unlocked matches 1 run function factory/set_timer {id:"iron"}
execute if score #vault_factory tmp matches 1 if score #gold factory_unlocked matches 1 run function factory/set_timer {id:"gold"}
execute if score #vault_factory tmp matches 1 if score #diamond factory_unlocked matches 1 run function factory/set_timer {id:"diamond"}
execute if score #vault_factory tmp matches 1 if score #emerald factory_unlocked matches 1 run function factory/set_timer {id:"emerald"}
execute if score #vault_factory tmp matches 1 if score #lapis factory_unlocked matches 1 run function factory/set_timer {id:"lapis"}
execute if score #vault_factory tmp matches 1 if score #cold factory_unlocked matches 1 run function factory/set_timer {id:"cold"}
execute if score #vault_factory tmp matches 1 if score #heat factory_unlocked matches 1 run function factory/set_timer {id:"heat"}

# 복원된 개별 가동 상태에 맞춰 공장 외형과 표시등을 갱신한다.
function factory/campfires
