execute if score #wood factory_unlocked matches 1 run scoreboard players set #wood factory_enabled 1
execute if score #stone factory_unlocked matches 1 run scoreboard players set #stone factory_enabled 1
execute if score #coal factory_unlocked matches 1 run scoreboard players set #coal factory_enabled 1
execute if score #copper factory_unlocked matches 1 run scoreboard players set #copper factory_enabled 1
execute if score #iron factory_unlocked matches 1 run scoreboard players set #iron factory_enabled 1
execute if score #gold factory_unlocked matches 1 run scoreboard players set #gold factory_enabled 1
execute if score #diamond factory_unlocked matches 1 run scoreboard players set #diamond factory_enabled 1
execute if score #emerald factory_unlocked matches 1 run scoreboard players set #emerald factory_enabled 1
execute if score #lapis factory_unlocked matches 1 run scoreboard players set #lapis factory_enabled 1
execute if score #cold factory_unlocked matches 1 run scoreboard players set #cold factory_enabled 1
execute if score #heat factory_unlocked matches 1 run scoreboard players set #heat factory_enabled 1

execute if score #wood factory_unlocked matches 1 run scoreboard players set #wood factory_status 1
execute if score #stone factory_unlocked matches 1 run scoreboard players set #stone factory_status 1
execute if score #coal factory_unlocked matches 1 run scoreboard players set #coal factory_status 1
execute if score #copper factory_unlocked matches 1 run scoreboard players set #copper factory_status 1
execute if score #iron factory_unlocked matches 1 run scoreboard players set #iron factory_status 1
execute if score #gold factory_unlocked matches 1 run scoreboard players set #gold factory_status 1
execute if score #diamond factory_unlocked matches 1 run scoreboard players set #diamond factory_status 1
execute if score #emerald factory_unlocked matches 1 run scoreboard players set #emerald factory_status 1
execute if score #lapis factory_unlocked matches 1 run scoreboard players set #lapis factory_status 1
execute if score #cold factory_unlocked matches 1 run scoreboard players set #cold factory_status 1
execute if score #heat factory_unlocked matches 1 run scoreboard players set #heat factory_status 1

function factory/set_timer_phased {id:"wood",index:0}
function factory/set_timer_phased {id:"stone",index:1}
function factory/set_timer_phased {id:"coal",index:2}
function factory/set_timer_phased {id:"copper",index:3}
function factory/set_timer_phased {id:"iron",index:4}
function factory/set_timer_phased {id:"gold",index:5}
function factory/set_timer_phased {id:"diamond",index:6}
function factory/set_timer_phased {id:"emerald",index:7}
function factory/set_timer_phased {id:"lapis",index:8}
function factory/set_timer_phased {id:"cold",index:9}
function factory/set_timer_phased {id:"heat",index:10}
function factory/chunk_load/sync
function factory/campfires
playsound block.iron_door.open weather @s ~ ~ ~ 0.8 1.1
title @s actionbar {text:"해금한 모든 공장의 가동을 재개했습니다.",color:"green",italic:false}
function factory/check
return 1
