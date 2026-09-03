# load 시 상수 정의
# 자원 상점 상수 정의

# 현재 레벨의 value는 실제 효과이며 cost는 다음 단계 구매 비용이다.
# 에메랄드/청금석은 재생산 대기, 나머지 자원은 수급 배수를 value로 사용한다.
# 전 자원 동시 강화를 전제로 한 단일 비용표이며 뒤에서 값을 덮어쓰지 않는다.
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
      {lvl:3,value:8,cost:[{type:"stone",amount:500000},{type:"coal",amount:400000}]},\
      {lvl:4,value:16,cost:[{type:"stone",amount:2000000},{type:"coal",amount:1500000}]},\
      {lvl:5,value:32,cost:[{type:"stone",amount:6500000},{type:"coal",amount:6000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"copper",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"stone",amount:70},{type:"coal",amount:40}]},\
      {lvl:1,value:2,cost:[{type:"stone",amount:200},{type:"coal",amount:120}]},\
      {lvl:2,value:4,cost:[{type:"stone",amount:800},{type:"coal",amount:440}]},\
      {lvl:3,value:8,cost:[{type:"coal",amount:700000},{type:"copper",amount:300000}]},\
      {lvl:4,value:16,cost:[{type:"coal",amount:2800000},{type:"copper",amount:1200000}]},\
      {lvl:5,value:32,cost:[{type:"coal",amount:9000000},{type:"copper",amount:4800000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"iron",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"coal",amount:100},{type:"copper",amount:50}]},\
      {lvl:1,value:2,cost:[{type:"coal",amount:300},{type:"copper",amount:150}]},\
      {lvl:2,value:4,cost:[{type:"coal",amount:1200},{type:"copper",amount:600}]},\
      {lvl:3,value:8,cost:[{type:"coal",amount:800000},{type:"iron",amount:400000}]},\
      {lvl:4,value:16,cost:[{type:"coal",amount:3000000},{type:"iron",amount:1600000}]},\
      {lvl:5,value:32,cost:[{type:"coal",amount:10000000},{type:"iron",amount:6400000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"gold",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"stone",amount:70},{type:"coal",amount:40}]},\
      {lvl:1,value:2,cost:[{type:"stone",amount:200},{type:"coal",amount:120}]},\
      {lvl:2,value:4,cost:[{type:"stone",amount:800},{type:"coal",amount:440}]},\
      {lvl:3,value:8,cost:[{type:"iron",amount:300000},{type:"gold",amount:500000}]},\
      {lvl:4,value:16,cost:[{type:"iron",amount:1200000},{type:"gold",amount:2000000}]},\
      {lvl:5,value:32,cost:[{type:"iron",amount:5000000},{type:"gold",amount:8000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"diamond",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"stone",amount:80},{type:"coal",amount:45}]},\
      {lvl:1,value:2,cost:[{type:"stone",amount:240},{type:"coal",amount:140}]},\
      {lvl:2,value:4,cost:[{type:"stone",amount:900},{type:"coal",amount:500}]},\
      {lvl:3,value:8,cost:[{type:"iron",amount:400000},{type:"diamond",amount:1000000}]},\
      {lvl:4,value:16,cost:[{type:"iron",amount:1600000},{type:"diamond",amount:5000000}]},\
      {lvl:5,value:32,cost:[{type:"iron",amount:6000000},{type:"diamond",amount:25000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"emerald",\
    levels:[\
      {lvl:0,value:490,cost:[{type:"wood",amount:160},{type:"coal",amount:50}]},\
      {lvl:1,value:420,cost:[{type:"wood",amount:500},{type:"coal",amount:180}]},\
      {lvl:2,value:340,cost:[{type:"wood",amount:2300},{type:"coal",amount:800}]},\
      {lvl:3,value:270,cost:[{type:"iron",amount:250000},{type:"emerald",amount:120000}]},\
      {lvl:4,value:210,cost:[{type:"iron",amount:1000000},{type:"emerald",amount:450000}]},\
      {lvl:5,value:160,cost:[{type:"iron",amount:4000000},{type:"emerald",amount:1800000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:120}\
    ]\
  },\
  {id:"lapis",\
    levels:[\
      {lvl:0,value:420,cost:[{type:"wood",amount:190},{type:"coal",amount:60}]},\
      {lvl:1,value:360,cost:[{type:"wood",amount:620},{type:"coal",amount:220}]},\
      {lvl:2,value:300,cost:[{type:"wood",amount:2800},{type:"coal",amount:900}]},\
      {lvl:3,value:240,cost:[{type:"iron",amount:300000},{type:"lapis",amount:200000}]},\
      {lvl:4,value:190,cost:[{type:"iron",amount:1200000},{type:"lapis",amount:800000}]},\
      {lvl:5,value:145,cost:[{type:"iron",amount:4500000},{type:"lapis",amount:3000000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:6,value:110}\
    ]\
  }\
]
