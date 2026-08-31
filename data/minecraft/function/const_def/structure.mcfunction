# load
# Structure constants

data modify storage data const.structure set value {\
      alchemy_workshop: [\
        {\
          stage: 0,\
          required_age: 5,\
          cost: [\
            { type: "iron", amount: 50 },\
            { type: "emerald", amount: 3 }\
          ]\
        },\
        {\
          stage: 1,\
          required_age: 6,\
          cost: [\
            { type: "iron", amount: 100 },\
            { type: "emerald", amount: 50 },\
            { type: "lapis", amount: 70 }\
          ]\
        },\
        {\
          stage: 2,\
          required_age: 7,\
          cost: [\
            { type: "iron", amount: 320 },\
            { type: "emerald", amount: 100 },\
            { type: "lapis", amount: 140 },\
            { type: "information", amount: 8 }\
          ]\
        }\
      ],\      
      dried_relic: [\
        {\
          lvl: 0,\
          cost: [\
            { type: "gold", amount: 15 },\
            { type: "time", amount: 2 }\
          ]\
        },\
        {\
          lvl: 1,\
          interval: 2400,\
          amount: 16,\
          cost: [\
            { type: "gold", amount: 50 },\
            { type: "heat", amount: 150 }\
          ]\
        },\
        {\
          lvl: 2,\
          interval: 1800,\
          amount: 64,\
          cost: [\
            { type: "gold", amount: 150 },\
            { type: "heat", amount: 600 }\
          ]\
        },\
        {\
          lvl: 3,\
          interval: 1200,\
          amount: 512,\
          cost: [\
            { type: "information", amount: 100 },\
            { type: "time", amount: 16 }\
          ]\
        },\
        {\
          lvl: 4,\
          interval: 900,\
          amount: 4096,\
          cost: [\
            { type: "information", amount: 300 },\
            { type: "time", amount: 48 },\
            { type: "yellow", amount: 16 }\
          ]\
        },\
        {\
          lvl: 5,\
          interval: 600,\
          amount: 32768\
        }\
      ],\
}
