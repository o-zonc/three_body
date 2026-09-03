# 매크로 인수: id, index. Only the initial all-factory start receives this deterministic offset.
$function factory/cache {id:"$(id)"}
$scoreboard players operation #$(id) factory_timer = #$(id)_factory_interval tmp
$scoreboard players set #factory_phase tmp $(index)
$scoreboard players operation #factory_phase tmp %= #$(id)_factory_interval tmp
$scoreboard players operation #$(id) factory_timer += #factory_phase tmp
