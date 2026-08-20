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
function factory/check_line {id:"cold",name:"냉기",color:"aqua"}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s [{storage:"data",nbt:"tmp.factory.check_lines[]",interpret:true,separator:{text:""}}]
