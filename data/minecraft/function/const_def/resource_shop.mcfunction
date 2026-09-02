# load
# Resource shop constants

# 현재 레벨의 value가 실제 수급 배수이며 cost는 다음 단계 구매 비용이다.
# 전 자원 동시 강화를 전제로 한 단일 비용표이며 뒤에서 값을 덮어쓰지 않는다.
#
# 설계 기준
# - 배율 구조: 1 / 2 / 4 / 8 / 16 / 32 / 64
# - wood는 모든 계통의 주 화폐, stone/coal은 중대량 보조 화폐다.
# - copper는 금속 A와 보석 계통의 진행 게이트로만 제한적으로 사용한다.
# - information/time은 32->64배에서만 사용한다. 9종 전체 합계는 18/9다.
# - gold/diamond/heat/cold/lapis/emerald/yellow/blue는 일반 성장 비용으로 사용하지 않는다.
# - Lv.2 / Lv.3 / Lv.4 진입 시 획득하는 20% / 30% / 40% 상점 할인은 기존대로 적용된다.
data modify storage data const.resource_shop set value [\
  {id:"wood",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:40}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:160}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:800}]},\
      {lvl:3,value:8,cost:[{type:"wood",amount:500000}]},\
      {lvl:4,value:16,cost:[{type:"wood",amount:2000000}]},\
      {lvl:5,value:32,cost:[{type:"wood",amount:8000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"stone",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:60},{type:"stone",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:200},{type:"stone",amount:80}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1000},{type:"stone",amount:300}]},\
      {lvl:3,value:8,cost:[{type:"wood",amount:300000},{type:"stone",amount:600000}]},\
      {lvl:4,value:16,cost:[{type:"wood",amount:1200000},{type:"stone",amount:2400000}]},\
      {lvl:5,value:32,cost:[{type:"wood",amount:4000000},{type:"stone",amount:10000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"coal",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:80},{type:"stone",amount:30}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:240},{type:"stone",amount:100}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1200},{type:"stone",amount:400}]},\
      {lvl:3,value:8,cost:[{type:"wood",amount:400000},{type:"stone",amount:300000},{type:"coal",amount:200000}]},\
      {lvl:4,value:16,cost:[{type:"wood",amount:1500000},{type:"stone",amount:1200000},{type:"coal",amount:800000}]},\
      {lvl:5,value:32,cost:[{type:"wood",amount:5000000},{type:"stone",amount:4000000},{type:"coal",amount:3200000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"copper",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:100},{type:"stone",amount:40},{type:"coal",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:320},{type:"stone",amount:120},{type:"coal",amount:60}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1500},{type:"stone",amount:500},{type:"coal",amount:240}]},\
      {lvl:3,value:8,cost:[{type:"wood",amount:500000},{type:"stone",amount:400000},{type:"coal",amount:300000},{type:"copper",amount:150000}]},\
      {lvl:4,value:16,cost:[{type:"wood",amount:2000000},{type:"stone",amount:1500000},{type:"coal",amount:1200000},{type:"copper",amount:600000}]},\
      {lvl:5,value:32,cost:[{type:"wood",amount:7000000},{type:"stone",amount:5000000},{type:"coal",amount:4000000},{type:"copper",amount:2400000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"iron",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:120},{type:"stone",amount:50},{type:"coal",amount:30},{type:"copper",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:400},{type:"stone",amount:150},{type:"coal",amount:100},{type:"copper",amount:50}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1800},{type:"stone",amount:600},{type:"coal",amount:400},{type:"copper",amount:160}]},\
      {lvl:3,value:8,cost:[{type:"wood",amount:600000},{type:"stone",amount:450000},{type:"coal",amount:350000},{type:"copper",amount:200000},{type:"iron",amount:200000}]},\
      {lvl:4,value:16,cost:[{type:"wood",amount:2400000},{type:"stone",amount:1800000},{type:"coal",amount:1400000},{type:"copper",amount:800000},{type:"iron",amount:800000}]},\
      {lvl:5,value:32,cost:[{type:"wood",amount:8000000},{type:"stone",amount:6000000},{type:"coal",amount:4500000},{type:"copper",amount:3000000},{type:"iron",amount:3200000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"gold",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:100},{type:"stone",amount:40},{type:"coal",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:320},{type:"stone",amount:120},{type:"coal",amount:60}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1500},{type:"stone",amount:500},{type:"coal",amount:240}]},\
      {lvl:3,value:8,cost:[{type:"iron",amount:300000},{type:"gold",amount:500000}]},\
      {lvl:4,value:16,cost:[{type:"iron",amount:1200000},{type:"gold",amount:2000000}]},\
      {lvl:5,value:32,cost:[{type:"iron",amount:5000000},{type:"gold",amount:8000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"diamond",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:110},{type:"stone",amount:45},{type:"coal",amount:25}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:360},{type:"stone",amount:135},{type:"coal",amount:75}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1650},{type:"stone",amount:550},{type:"coal",amount:280}]},\
      {lvl:3,value:8,cost:[{type:"iron",amount:400000},{type:"diamond",amount:1000000}]},\
      {lvl:4,value:16,cost:[{type:"iron",amount:1600000},{type:"diamond",amount:5000000}]},\
      {lvl:5,value:32,cost:[{type:"iron",amount:6000000},{type:"diamond",amount:25000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"emerald",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:100},{type:"stone",amount:40},{type:"coal",amount:30},{type:"copper",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:320},{type:"stone",amount:120},{type:"coal",amount:100},{type:"copper",amount:50}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1500},{type:"stone",amount:500},{type:"coal",amount:400},{type:"copper",amount:160}]},\
      {lvl:3,value:8,cost:[{type:"iron",amount:250000},{type:"emerald",amount:120000}]},\
      {lvl:4,value:16,cost:[{type:"iron",amount:1000000},{type:"emerald",amount:450000}]},\
      {lvl:5,value:32,cost:[{type:"iron",amount:4000000},{type:"emerald",amount:1800000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"lapis",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:120},{type:"stone",amount:50},{type:"coal",amount:40},{type:"copper",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:400},{type:"stone",amount:150},{type:"coal",amount:120},{type:"copper",amount:60}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:1800},{type:"stone",amount:600},{type:"coal",amount:450},{type:"copper",amount:180}]},\
      {lvl:3,value:8,cost:[{type:"iron",amount:300000},{type:"lapis",amount:200000}]},\
      {lvl:4,value:16,cost:[{type:"iron",amount:1200000},{type:"lapis",amount:800000}]},\
      {lvl:5,value:32,cost:[{type:"iron",amount:4500000},{type:"lapis",amount:3000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  }\
]
