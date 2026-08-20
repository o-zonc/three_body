$scoreboard players set #$(id) factory_enabled 0
$scoreboard players set #$(id) factory_status 0
playsound block.iron_door.close weather @s ~ ~ ~ 0.8 0.8
$function factory/ui {id:"$(id)",unlock:"$(unlock)",name:"$(name)",color:"$(color)",purchase:$(purchase),toggle:$(toggle)}
return 1
