# 공장 후반 업그레이드 비용 완화
# Lv.0~2는 유지하고, Lv.3~5의 비용 증가율을 기존 x8에서 x6으로 완화한다.

# wood
data modify storage data const.factory[{id:"wood"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 2400
data modify storage data const.factory[{id:"wood"}].levels[{lvl:3}].cost[{type:"wood"}].amount set value 7500
data modify storage data const.factory[{id:"wood"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 14400
data modify storage data const.factory[{id:"wood"}].levels[{lvl:4}].cost[{type:"wood"}].amount set value 45000
data modify storage data const.factory[{id:"wood"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 86400
data modify storage data const.factory[{id:"wood"}].levels[{lvl:5}].cost[{type:"wood"}].amount set value 270000

# stone
data modify storage data const.factory[{id:"stone"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 3000
data modify storage data const.factory[{id:"stone"}].levels[{lvl:3}].cost[{type:"stone"}].amount set value 9000
data modify storage data const.factory[{id:"stone"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 18000
data modify storage data const.factory[{id:"stone"}].levels[{lvl:4}].cost[{type:"stone"}].amount set value 54000
data modify storage data const.factory[{id:"stone"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 108000
data modify storage data const.factory[{id:"stone"}].levels[{lvl:5}].cost[{type:"stone"}].amount set value 324000

# coal
data modify storage data const.factory[{id:"coal"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 4200
data modify storage data const.factory[{id:"coal"}].levels[{lvl:3}].cost[{type:"coal"}].amount set value 10500
data modify storage data const.factory[{id:"coal"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 25200
data modify storage data const.factory[{id:"coal"}].levels[{lvl:4}].cost[{type:"coal"}].amount set value 63000
data modify storage data const.factory[{id:"coal"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 151200
data modify storage data const.factory[{id:"coal"}].levels[{lvl:5}].cost[{type:"coal"}].amount set value 378000

# copper
data modify storage data const.factory[{id:"copper"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 9000
data modify storage data const.factory[{id:"copper"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 54000
data modify storage data const.factory[{id:"copper"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 324000

# iron
data modify storage data const.factory[{id:"iron"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 5400
data modify storage data const.factory[{id:"iron"}].levels[{lvl:3}].cost[{type:"iron"}].amount set value 7500
data modify storage data const.factory[{id:"iron"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 32400
data modify storage data const.factory[{id:"iron"}].levels[{lvl:4}].cost[{type:"iron"}].amount set value 45000
data modify storage data const.factory[{id:"iron"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 194400
data modify storage data const.factory[{id:"iron"}].levels[{lvl:5}].cost[{type:"iron"}].amount set value 270000

# gold
data modify storage data const.factory[{id:"gold"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 7200
data modify storage data const.factory[{id:"gold"}].levels[{lvl:3}].cost[{type:"gold"}].amount set value 5400
data modify storage data const.factory[{id:"gold"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 43200
data modify storage data const.factory[{id:"gold"}].levels[{lvl:4}].cost[{type:"gold"}].amount set value 32400
data modify storage data const.factory[{id:"gold"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 259200
data modify storage data const.factory[{id:"gold"}].levels[{lvl:5}].cost[{type:"gold"}].amount set value 194400

# diamond
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 10800
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:3}].cost[{type:"diamond"}].amount set value 2400
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 64800
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:4}].cost[{type:"diamond"}].amount set value 14400
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 388800
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:5}].cost[{type:"diamond"}].amount set value 86400

# emerald
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 9600
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:3}].cost[{type:"emerald"}].amount set value 3000
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 57600
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:4}].cost[{type:"emerald"}].amount set value 18000
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 345600
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:5}].cost[{type:"emerald"}].amount set value 108000

# lapis
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 7800
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:3}].cost[{type:"lapis"}].amount set value 5400
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 46800
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:4}].cost[{type:"lapis"}].amount set value 32400
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 280800
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:5}].cost[{type:"lapis"}].amount set value 194400

# cold
data modify storage data const.factory[{id:"cold"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 10800
data modify storage data const.factory[{id:"cold"}].levels[{lvl:3}].cost[{type:"cold"}].amount set value 3000
data modify storage data const.factory[{id:"cold"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 64800
data modify storage data const.factory[{id:"cold"}].levels[{lvl:4}].cost[{type:"cold"}].amount set value 18000
data modify storage data const.factory[{id:"cold"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 388800
data modify storage data const.factory[{id:"cold"}].levels[{lvl:5}].cost[{type:"cold"}].amount set value 108000

# heat
data modify storage data const.factory[{id:"heat"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 10800
data modify storage data const.factory[{id:"heat"}].levels[{lvl:3}].cost[{type:"heat"}].amount set value 3000
data modify storage data const.factory[{id:"heat"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 64800
data modify storage data const.factory[{id:"heat"}].levels[{lvl:4}].cost[{type:"heat"}].amount set value 18000
data modify storage data const.factory[{id:"heat"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 388800
data modify storage data const.factory[{id:"heat"}].levels[{lvl:5}].cost[{type:"heat"}].amount set value 108000
