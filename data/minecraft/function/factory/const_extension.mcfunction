# 공장 Lv.0~6 확장 설정. cost는 현재 단계에서 다음 단계로 올리는 비용입니다.
data modify storage data const.factory[{id:"wood"}].levels[{lvl:0}].fuel set value 1
data modify storage data const.factory[{id:"wood"}].levels[{lvl:4}].cost set value [{type:"copper",amount:640},{type:"wood",amount:3500}]
data modify storage data const.factory[{id:"wood"}].levels append value {lvl:5,output:0,fuel:12,cost:[{type:"copper",amount:1280},{type:"wood",amount:8000}]}
data modify storage data const.factory[{id:"wood"}].levels append value {lvl:6,output:0,fuel:18}

data modify storage data const.factory[{id:"stone"}].levels[{lvl:0}].fuel set value 1
data modify storage data const.factory[{id:"stone"}].levels[{lvl:4}].cost set value [{type:"copper",amount:800},{type:"stone",amount:4500}]
data modify storage data const.factory[{id:"stone"}].levels append value {lvl:5,output:0,fuel:16,cost:[{type:"copper",amount:1600},{type:"stone",amount:10000}]}
data modify storage data const.factory[{id:"stone"}].levels append value {lvl:6,output:0,fuel:24}

data modify storage data const.factory[{id:"coal"}].levels[{lvl:0}].fuel set value 1
data modify storage data const.factory[{id:"coal"}].levels[{lvl:4}].cost set value [{type:"copper",amount:1000},{type:"coal",amount:5000}]
data modify storage data const.factory[{id:"coal"}].levels append value {lvl:5,output:0,fuel:12,cost:[{type:"copper",amount:2000},{type:"coal",amount:12000}]}
data modify storage data const.factory[{id:"coal"}].levels append value {lvl:6,output:0,fuel:18}

data modify storage data const.factory[{id:"copper"}].levels[{lvl:0}].fuel set value 2
data modify storage data const.factory[{id:"copper"}].levels[{lvl:4}].cost set value [{type:"copper",amount:4000}]
data modify storage data const.factory[{id:"copper"}].levels append value {lvl:5,output:0,fuel:20,cost:[{type:"copper",amount:9000}]}
data modify storage data const.factory[{id:"copper"}].levels append value {lvl:6,output:0,fuel:30}

data modify storage data const.factory[{id:"iron"}].levels[{lvl:0}].fuel set value 2
data modify storage data const.factory[{id:"iron"}].levels[{lvl:4}].cost set value [{type:"copper",amount:1400},{type:"iron",amount:3500}]
data modify storage data const.factory[{id:"iron"}].levels append value {lvl:5,output:0,fuel:24,cost:[{type:"copper",amount:2800},{type:"iron",amount:8000}]}
data modify storage data const.factory[{id:"iron"}].levels append value {lvl:6,output:0,fuel:36}

data modify storage data const.factory[{id:"gold"}].levels[{lvl:0}].fuel set value 3
data modify storage data const.factory[{id:"gold"}].levels[{lvl:4}].cost set value [{type:"copper",amount:1800},{type:"gold",amount:2400}]
data modify storage data const.factory[{id:"gold"}].levels append value {lvl:5,output:0,fuel:32,cost:[{type:"copper",amount:3600},{type:"gold",amount:5500}]}
data modify storage data const.factory[{id:"gold"}].levels append value {lvl:6,output:0,fuel:48}

data modify storage data const.factory[{id:"diamond"}].levels[{lvl:0}].fuel set value 4
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:4}].cost set value [{type:"copper",amount:2600},{type:"diamond",amount:1000}]
data modify storage data const.factory[{id:"diamond"}].levels append value {lvl:5,output:0,fuel:44,cost:[{type:"copper",amount:5200},{type:"diamond",amount:2400}]}
data modify storage data const.factory[{id:"diamond"}].levels append value {lvl:6,output:0,fuel:66}

data modify storage data const.factory[{id:"emerald"}].levels[{lvl:0}].fuel set value 4
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:4}].cost set value [{type:"copper",amount:2300},{type:"emerald",amount:1400}]
data modify storage data const.factory[{id:"emerald"}].levels append value {lvl:5,output:0,fuel:39,cost:[{type:"copper",amount:4600},{type:"emerald",amount:3200}]}
data modify storage data const.factory[{id:"emerald"}].levels append value {lvl:6,output:0,fuel:58}

data modify storage data const.factory[{id:"lapis"}].levels[{lvl:0}].fuel set value 3
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:4}].cost set value [{type:"copper",amount:1900},{type:"lapis",amount:2600}]
data modify storage data const.factory[{id:"lapis"}].levels append value {lvl:5,output:0,fuel:32,cost:[{type:"copper",amount:3800},{type:"lapis",amount:6000}]}
data modify storage data const.factory[{id:"lapis"}].levels append value {lvl:6,output:0,fuel:48}

# 냉기 공장: 얼어붙은 세계의 blue_ice 자원 블록 자동화
data modify storage data const.factory append value {id:"cold",levels:[{lvl:0,output:0,fuel:4,cost:[{type:"copper",amount:180},{type:"cold",amount:40}]},{lvl:1,output:0,fuel:7,cost:[{type:"copper",amount:360},{type:"cold",amount:100}]},{lvl:2,output:0,fuel:11,cost:[{type:"copper",amount:720},{type:"cold",amount:250}]},{lvl:3,output:0,fuel:18,cost:[{type:"copper",amount:1440},{type:"cold",amount:650}]},{lvl:4,output:0,fuel:29,cost:[{type:"copper",amount:2800},{type:"cold",amount:1500}]},{lvl:5,output:0,fuel:44,cost:[{type:"copper",amount:5600},{type:"cold",amount:3500}]},{lvl:6,output:0,fuel:66}]}

# 열기 공장: 메마른 세계의 magma_block 자원 블록 자동화
data modify storage data const.factory append value {id:"heat",levels:[{lvl:0,output:0,fuel:4,cost:[{type:"copper",amount:180},{type:"heat",amount:40}]},{lvl:1,output:0,fuel:7,cost:[{type:"copper",amount:360},{type:"heat",amount:100}]},{lvl:2,output:0,fuel:11,cost:[{type:"copper",amount:720},{type:"heat",amount:250}]},{lvl:3,output:0,fuel:18,cost:[{type:"copper",amount:1440},{type:"heat",amount:650}]},{lvl:4,output:0,fuel:29,cost:[{type:"copper",amount:2800},{type:"heat",amount:1500}]},{lvl:5,output:0,fuel:44,cost:[{type:"copper",amount:5600},{type:"heat",amount:3500}]},{lvl:6,output:0,fuel:66}]}
