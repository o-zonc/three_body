data modify storage data tmp.factory.check_lines set value [{text:"  [ 자동화 공장 - 가동 현황 ]",color:"gold",bold:true},{text:"\n\n"}]
function factory/check_line {id:"wood",name:"나무",color:"yellow"}
function factory/check_line {id:"stone",name:"돌",color:"gray"}
function factory/check_line {id:"coal",name:"석탄",color:"dark_gray"}
function factory/check_line {id:"copper",name:"구리",color:"gold"}
function factory/check_line {id:"iron",name:"철",color:"white"}
function factory/check_line {id:"gold",name:"금",color:"gold"}
function factory/check_line {id:"diamond",name:"다이아몬드",color:"aqua"}
function factory/check_line {id:"emerald",name:"에메랄드",color:"green"}
function factory/check_line {id:"lapis",name:"청금석",color:"blue"}
function factory/check_line {id:"heat",name:"열기",color:"red"}
function factory/check_line {id:"cold",name:"냉기",color:"aqua"}

# 해금된 공장 존재 여부와 현재 가동 중인 공장 존재 여부를 별도로 계산한다.
scoreboard players set #factory_any_unlocked tmp 0
scoreboard players set #factory_any_enabled tmp 0
execute if score #wood factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #stone factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #coal factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #copper factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #iron factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #gold factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #diamond factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #emerald factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #lapis factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #cold factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1
execute if score #heat factory_unlocked matches 1 run scoreboard players set #factory_any_unlocked tmp 1

execute if score #wood factory_unlocked matches 1 if score #wood factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #stone factory_unlocked matches 1 if score #stone factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #coal factory_unlocked matches 1 if score #coal factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #copper factory_unlocked matches 1 if score #copper factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #iron factory_unlocked matches 1 if score #iron factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #gold factory_unlocked matches 1 if score #gold factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #diamond factory_unlocked matches 1 if score #diamond factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #emerald factory_unlocked matches 1 if score #emerald factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #lapis factory_unlocked matches 1 if score #lapis factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #cold factory_unlocked matches 1 if score #cold factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #heat factory_unlocked matches 1 if score #heat factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1

execute unless score #factory_any_unlocked tmp matches 1 run data modify storage data tmp.factory.check_lines append value {text:""}
execute if score #factory_any_unlocked tmp matches 1 if score #factory_any_enabled tmp matches 1 run data modify storage data tmp.factory.check_lines append value {text:"\n  [ 모든 공장 가동 중단 ]\n",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger factory_trigger set 1721"},hover_event:{action:"show_text",value:{text:"해금한 모든 공장의 가동을 중단합니다.",color:"gray"}}}
execute if score #factory_any_unlocked tmp matches 1 unless score #factory_any_enabled tmp matches 1 run data modify storage data tmp.factory.check_lines append value {text:"\n  [ 모든 공장 가동 재개 ]\n",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger factory_trigger set 1721"},hover_event:{action:"show_text",value:{text:"해금한 모든 공장의 가동을 재개합니다.",color:"gray"}}}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s [{storage:"data",nbt:"tmp.factory.check_lines[]",interpret:true,separator:{text:""}}]
