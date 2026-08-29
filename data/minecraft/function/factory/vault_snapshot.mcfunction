# factory_level 0은 미해금과 첫 구매 상태를 구분할 수 없으므로 unlocked를 별도로 보관한다.
scoreboard players operation #vault_factory_wood_unlocked tmp = #wood factory_unlocked
scoreboard players operation #vault_factory_stone_unlocked tmp = #stone factory_unlocked
scoreboard players operation #vault_factory_coal_unlocked tmp = #coal factory_unlocked
scoreboard players operation #vault_factory_copper_unlocked tmp = #copper factory_unlocked
scoreboard players operation #vault_factory_iron_unlocked tmp = #iron factory_unlocked
scoreboard players operation #vault_factory_gold_unlocked tmp = #gold factory_unlocked
scoreboard players operation #vault_factory_diamond_unlocked tmp = #diamond factory_unlocked
scoreboard players operation #vault_factory_emerald_unlocked tmp = #emerald factory_unlocked
scoreboard players operation #vault_factory_lapis_unlocked tmp = #lapis factory_unlocked
scoreboard players operation #vault_factory_cold_unlocked tmp = #cold factory_unlocked
scoreboard players operation #vault_factory_heat_unlocked tmp = #heat factory_unlocked

# 공장 유지에는 정산 직전의 개별 가동 상태도 포함한다.
scoreboard players operation #vault_factory_wood_enabled tmp = #wood factory_enabled
scoreboard players operation #vault_factory_stone_enabled tmp = #stone factory_enabled
scoreboard players operation #vault_factory_coal_enabled tmp = #coal factory_enabled
scoreboard players operation #vault_factory_copper_enabled tmp = #copper factory_enabled
scoreboard players operation #vault_factory_iron_enabled tmp = #iron factory_enabled
scoreboard players operation #vault_factory_gold_enabled tmp = #gold factory_enabled
scoreboard players operation #vault_factory_diamond_enabled tmp = #diamond factory_enabled
scoreboard players operation #vault_factory_emerald_enabled tmp = #emerald factory_enabled
scoreboard players operation #vault_factory_lapis_enabled tmp = #lapis factory_enabled
scoreboard players operation #vault_factory_cold_enabled tmp = #cold factory_enabled
scoreboard players operation #vault_factory_heat_enabled tmp = #heat factory_enabled
scoreboard players operation #vault_factory_recycle_level tmp = #factory_recycle_level upgrade
scoreboard players operation #vault_factory_energy_level tmp = #factory_energy_level upgrade
