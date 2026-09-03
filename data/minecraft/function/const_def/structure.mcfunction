# load 시 상수 정의
# 구조물 상수 정의

data modify storage data const.structure set value {\
      alchemy_workshop: [\
        {\
          stage: 0,\
          required_age: 5,\
          cost: [\
            { type: "iron", amount: 80 },\
            { type: "emerald", amount: 2 }\
          ]\
        },\
        {\
          stage: 1,\
          required_age: 6,\
          cost: [\
            { type: "copper", amount: 200 },\
            { type: "iron", amount: 150 },\
            { type: "lapis", amount: 5 }\
          ]\
        },\
        {\
          stage: 2,\
          required_age: 7,\
          cost: [\
            { type: "copper", amount: 450 },\
            { type: "iron", amount: 450 },\
            { type: "lapis", amount: 10 },\
            { type: "information", amount: 8 }\
          ]\
        }\
      ],\      
      dried_relic: [\
        {\
          lvl: 0,\
          cost: [\
            { type: "gold", amount: 25 },\
            { type: "time", amount: 2 }\
          ]\
        },\
        {\
          lvl: 1,\
          interval: 2400,\
          amount: 16,\
          cost: [\
            { type: "gold", amount: 100 },\
            { type: "heat", amount: 100 }\
          ]\
        },\
        {\
          lvl: 2,\
          interval: 1800,\
          amount: 64,\
          cost: [\
            { type: "gold", amount: 500 },\
            { type: "heat", amount: 300 },\
            { type: "time", amount: 4 }\
          ]\
        },\
        {\
          lvl: 3,\
          interval: 1200,\
          amount: 512,\
          cost: [\
            { type: "gold", amount: 5000 },\
            { type: "heat", amount: 1000 },\
            { type: "information", amount: 32 },\
            { type: "time", amount: 8 }\
          ]\
        },\
        {\
          lvl: 4,\
          interval: 900,\
          amount: 4096,\
          cost: [\
            { type: "gold", amount: 50000 },\
            { type: "heat", amount: 5000 },\
            { type: "information", amount: 128 },\
            { type: "time", amount: 32 }\
          ]\
        },\
        {\
          lvl: 5,\
          interval: 600,\
          amount: 32768\
        }\
      ],\
}
