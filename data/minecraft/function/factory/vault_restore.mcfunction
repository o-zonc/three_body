# 정보 보관소 250조각 이상일 때 공장별 해금 상태를 정확히 복원한다.
# factory_level 0인 첫 구매 공장도 unlocked 값으로 구분한다.
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

# 정산 직후에는 공장을 정지 상태로 두되 시각 상태는 복원된 해금 상태에 맞춘다.
function factory/campfires
