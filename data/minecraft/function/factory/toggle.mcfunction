# Macro args are the same as factory/ui.
$execute unless score #$(id) factory_unlocked matches 1 run title @s actionbar {text:"공장을 먼저 해금해야 합니다.",color:"red"}
$execute unless score #$(id) factory_unlocked matches 1 run return 0
$execute if score #$(id) factory_enabled matches 1 run return run function factory/turn_off {id:"$(id)",unlock:"$(unlock)",name:"$(name)",color:"$(color)",purchase:$(purchase),toggle:$(toggle)}
$function factory/turn_on {id:"$(id)",unlock:"$(unlock)",name:"$(name)",color:"$(color)",purchase:$(purchase),toggle:$(toggle)}
