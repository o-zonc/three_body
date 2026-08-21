function factory/run {id:"wood",dim:"overworld",block:"oak_log",x:0,y:-59,z:35}
function factory/run {id:"stone",dim:"overworld",block:"stone",x:-3,y:-59,z:35}
function factory/run {id:"coal",dim:"overworld",block:"coal_ore",x:3,y:-59,z:35}
function factory/run {id:"copper",dim:"overworld",block:"copper_ore",x:3,y:-62,z:-35}
function factory/run {id:"iron",dim:"overworld",block:"iron_ore",x:1,y:-62,z:-35}
function factory/run {id:"gold",dim:"dried",block:"raw_gold_block",x:6,y:65,z:0}
function factory/run {id:"diamond",dim:"minecraft:frozen",block:"diamond_block",x:0,y:68,z:-12}
function factory/run {id:"cold",dim:"minecraft:frozen",block:"blue_ice",x:0,y:68,z:48}
function factory/run {id:"emerald",dim:"overworld",block:"emerald_ore",x:-1,y:-62,z:-35}
function factory/run {id:"lapis",dim:"overworld",block:"lapis_ore",x:-3,y:-62,z:-35}
function factory/run {id:"heat",dim:"dried",block:"magma_block",x:-6,y:65,z:0}

# 각 공장 단말 아래의 밀랍칠한 구리 전구에 해금 상태를 표시합니다.
function factory/light {id:"wood"}
function factory/light {id:"stone"}
function factory/light {id:"coal"}
function factory/light {id:"copper"}
function factory/light {id:"iron"}
function factory/light {id:"gold"}
function factory/light {id:"diamond"}
function factory/light {id:"emerald"}
function factory/light {id:"lapis"}
function factory/light {id:"cold"}
function factory/light {id:"heat"}

# check 현황판 아래 전구는 해금된 공장 중 하나라도 가동 중이면 켭니다.
function factory/check_light
