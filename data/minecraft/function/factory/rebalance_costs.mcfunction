# 공장 후반 업그레이드 비용 완화
# Lv.0~2는 유지하고, Lv.3~5의 비용 증가율을 기존 x8에서 x7로 완화한다.

# wood
data modify storage data const.factory[{id:"wood"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 2800
data modify storage data const.factory[{id:"wood"}].levels[{lvl:3}].cost[{type:"wood"}].amount set value 8750
data modify storage data const.factory[{id:"wood"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 19600
data modify storage data const.factory[{id:"wood"}].levels[{lvl:4}].cost[{type:"wood"}].amount set value 61250
data modify storage data const.factory[{id:"wood"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 137200
data modify storage data const.factory[{id:"wood"}].levels[{lvl:5}].cost[{type:"wood"}].amount set value 428750

# stone
data modify storage data const.factory[{id:"stone"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 3500
data modify storage data const.factory[{id:"stone"}].levels[{lvl:3}].cost[{type:"stone"}].amount set value 10500
data modify storage data const.factory[{id:"stone"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 24500
data modify storage data const.factory[{id:"stone"}].levels[{lvl:4}].cost[{type:"stone"}].amount set value 73500
data modify storage data const.factory[{id:"stone"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 171500
data modify storage data const.factory[{id:"stone"}].levels[{lvl:5}].cost[{type:"stone"}].amount set value 514500

# coal
data modify storage data const.factory[{id:"coal"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 4900
data modify storage data const.factory[{id:"coal"}].levels[{lvl:3}].cost[{type:"coal"}].amount set value 12250
data modify storage data const.factory[{id:"coal"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 34300
data modify storage data const.factory[{id:"coal"}].levels[{lvl:4}].cost[{type:"coal"}].amount set value 85750
data modify storage data const.factory[{id:"coal"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 240100
data modify storage data const.factory[{id:"coal"}].levels[{lvl:5}].cost[{type:"coal"}].amount set value 600250

# copper
data modify storage data const.factory[{id:"copper"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 10500
data modify storage data const.factory[{id:"copper"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 73500
data modify storage data const.factory[{id:"copper"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 514500

# iron
data modify storage data const.factory[{id:"iron"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 6300
data modify storage data const.factory[{id:"iron"}].levels[{lvl:3}].cost[{type:"iron"}].amount set value 8750
data modify storage data const.factory[{id:"iron"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 44100
data modify storage data const.factory[{id:"iron"}].levels[{lvl:4}].cost[{type:"iron"}].amount set value 61250
data modify storage data const.factory[{id:"iron"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 308700
data modify storage data const.factory[{id:"iron"}].levels[{lvl:5}].cost[{type:"iron"}].amount set value 428750

# gold
data modify storage data const.factory[{id:"gold"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 8400
data modify storage data const.factory[{id:"gold"}].levels[{lvl:3}].cost[{type:"gold"}].amount set value 6300
data modify storage data const.factory[{id:"gold"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 58800
data modify storage data const.factory[{id:"gold"}].levels[{lvl:4}].cost[{type:"gold"}].amount set value 44100
data modify storage data const.factory[{id:"gold"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 411600
data modify storage data const.factory[{id:"gold"}].levels[{lvl:5}].cost[{type:"gold"}].amount set value 308700

# diamond
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 12600
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:3}].cost[{type:"diamond"}].amount set value 2800
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 88200
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:4}].cost[{type:"diamond"}].amount set value 19600
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 617400
data modify storage data const.factory[{id:"diamond"}].levels[{lvl:5}].cost[{type:"diamond"}].amount set value 137200

# emerald
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 11200
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:3}].cost[{type:"emerald"}].amount set value 3500
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 78400
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:4}].cost[{type:"emerald"}].amount set value 24500
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 548800
data modify storage data const.factory[{id:"emerald"}].levels[{lvl:5}].cost[{type:"emerald"}].amount set value 171500

# lapis
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 9100
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:3}].cost[{type:"lapis"}].amount set value 6300
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 63700
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:4}].cost[{type:"lapis"}].amount set value 44100
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 445900
data modify storage data const.factory[{id:"lapis"}].levels[{lvl:5}].cost[{type:"lapis"}].amount set value 308700

# cold
data modify storage data const.factory[{id:"cold"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 12600
data modify storage data const.factory[{id:"cold"}].levels[{lvl:3}].cost[{type:"cold"}].amount set value 3500
data modify storage data const.factory[{id:"cold"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 88200
data modify storage data const.factory[{id:"cold"}].levels[{lvl:4}].cost[{type:"cold"}].amount set value 24500
data modify storage data const.factory[{id:"cold"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 617400
data modify storage data const.factory[{id:"cold"}].levels[{lvl:5}].cost[{type:"cold"}].amount set value 171500

# heat
data modify storage data const.factory[{id:"heat"}].levels[{lvl:3}].cost[{type:"copper"}].amount set value 12600
data modify storage data const.factory[{id:"heat"}].levels[{lvl:3}].cost[{type:"heat"}].amount set value 3500
data modify storage data const.factory[{id:"heat"}].levels[{lvl:4}].cost[{type:"copper"}].amount set value 88200
data modify storage data const.factory[{id:"heat"}].levels[{lvl:4}].cost[{type:"heat"}].amount set value 24500
data modify storage data const.factory[{id:"heat"}].levels[{lvl:5}].cost[{type:"copper"}].amount set value 617400
data modify storage data const.factory[{id:"heat"}].levels[{lvl:5}].cost[{type:"heat"}].amount set value 171500
