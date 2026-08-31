# Macro arg: id
$function factory/cache {id:"$(id)"}
$scoreboard players operation #$(id) factory_timer = #$(id)_factory_interval tmp
