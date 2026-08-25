# 자원 상점 1층 상수
# 현재 레벨의 value가 실제 수급 배수이며 cost는 다음 단계 구매 비용이다.
#
# 비용 설계 기준
# - 직전 단계의 수급 배수(1/2/4/8/16/32배)를 기준으로 경제 규모를 계산한다.
# - Lv.2 / Lv.3 / Lv.4 진입부터 각각 20% / 30% / 40% 상점 비용 감소를 획득한 시점을 가정한다.
# - Lv.4 이후는 최종 40% 할인 상태를 기준으로 한다.
# - 주 자원 원가는 기준 비용의 1 / 5 / 20 / 75 / 220 / 640배로 증가한다.
# - 할인 후 직전 수급 배수로 환산한 체감 요구량은 약 1 / 2 / 3.5 / 5.625 / 8.25 / 12배다.
# - 보조 재료(돌, 열기/냉기, 정보/시간)는 진행 단계의 게이트 역할을 유지한다.

data modify storage data const.resource_shop set value [\
  {id:"wood",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"wood",amount:100}]},\
      {lvl:1,value:2,cost:[{type:"wood",amount:500},{type:"stone",amount:500}]},\
      {lvl:2,value:4,cost:[{type:"wood",amount:2000},{type:"heat",amount:50}]},\
      {lvl:3,value:8,cost:[{type:"wood",amount:7500},{type:"heat",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"wood",amount:22000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"wood",amount:64000},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"stone",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"stone",amount:120}]},\
      {lvl:1,value:2,cost:[{type:"stone",amount:600}]},\
      {lvl:2,value:4,cost:[{type:"stone",amount:2400},{type:"cold",amount:50}]},\
      {lvl:3,value:8,cost:[{type:"stone",amount:9000},{type:"cold",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"stone",amount:26400},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"stone",amount:76800},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"coal",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"coal",amount:150}]},\
      {lvl:1,value:2,cost:[{type:"coal",amount:750},{type:"stone",amount:500}]},\
      {lvl:2,value:4,cost:[{type:"coal",amount:3000},{type:"heat",amount:50}]},\
      {lvl:3,value:8,cost:[{type:"coal",amount:11250},{type:"heat",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"coal",amount:33000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"coal",amount:96000},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"copper",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"copper",amount:180}]},\
      {lvl:1,value:2,cost:[{type:"copper",amount:900},{type:"stone",amount:500}]},\
      {lvl:2,value:4,cost:[{type:"copper",amount:3600},{type:"heat",amount:50}]},\
      {lvl:3,value:8,cost:[{type:"copper",amount:13500},{type:"heat",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"copper",amount:39600},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"copper",amount:115200},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"iron",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"iron",amount:150}]},\
      {lvl:1,value:2,cost:[{type:"iron",amount:750},{type:"stone",amount:500}]},\
      {lvl:2,value:4,cost:[{type:"iron",amount:3000},{type:"heat",amount:50}]},\
      {lvl:3,value:8,cost:[{type:"iron",amount:11250},{type:"heat",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"iron",amount:33000},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"iron",amount:96000},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"gold",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"gold",amount:40}]},\
      {lvl:1,value:2,cost:[{type:"gold",amount:200},{type:"stone",amount:500}]},\
      {lvl:2,value:4,cost:[{type:"gold",amount:800},{type:"heat",amount:50}]},\
      {lvl:3,value:8,cost:[{type:"gold",amount:3000},{type:"heat",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"gold",amount:8800},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"gold",amount:25600},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"diamond",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"diamond",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"diamond",amount:100},{type:"stone",amount:500}]},\
      {lvl:2,value:4,cost:[{type:"diamond",amount:400},{type:"cold",amount:50}]},\
      {lvl:3,value:8,cost:[{type:"diamond",amount:1500},{type:"cold",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"diamond",amount:4400},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"diamond",amount:12800},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"emerald",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"emerald",amount:20}]},\
      {lvl:1,value:2,cost:[{type:"emerald",amount:100},{type:"stone",amount:100}]},\
      {lvl:2,value:4,cost:[{type:"emerald",amount:400},{type:"cold",amount:10}]},\
      {lvl:3,value:8,cost:[{type:"emerald",amount:1500},{type:"cold",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"emerald",amount:4400},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"emerald",amount:12800},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  },\
  {id:"lapis",\
    levels:[\
      {lvl:0,value:1,cost:[{type:"lapis",amount:30}]},\
      {lvl:1,value:2,cost:[{type:"lapis",amount:150},{type:"stone",amount:100}]},\
      {lvl:2,value:4,cost:[{type:"lapis",amount:600},{type:"cold",amount:10}]},\
      {lvl:3,value:8,cost:[{type:"lapis",amount:2250},{type:"cold",amount:150}]},\
      {lvl:4,value:16,cost:[{type:"lapis",amount:6600},{type:"information",amount:2},{type:"time",amount:1}]},\
      {lvl:5,value:32,cost:[{type:"lapis",amount:19200},{type:"information",amount:4},{type:"time",amount:2}]},\
      {lvl:6,value:64}\
    ]\
  }\
]
