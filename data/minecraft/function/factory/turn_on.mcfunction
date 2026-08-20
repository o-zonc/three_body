$scoreboard players set #$(id) factory_enabled 1
$scoreboard players set #$(id) factory_status 1
$function factory/set_timer {id:"$(id)"}
function factory/campfires
playsound block.iron_door.open weather @s ~ ~ ~ 0.8 1.1
$function factory/ui {id:"$(id)",unlock:"$(unlock)",name:"$(name)",color:"$(color)",purchase:$(purchase),toggle:$(toggle)}
return 1
