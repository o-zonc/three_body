# load
# 상수 선언

data remove storage data const
data merge storage data {\
  const:{\
    structure: {\
      alchemy_workshop: [\
        { stage: 0, required_age: 5, cost: [{ type: "iron", amount: 250 }, { type: "emerald", amount: 100 }] },\
        { stage: 1, required_age: 6, cost: [{ type: "iron", amount: 500 }, { type: "emerald", amount: 250 }, { type: "lapis", amount: 100 }] },\
        { stage: 2, required_age: 7, cost: [{ type: "iron", amount: 2000 }, { type: "emerald", amount: 1000 }, { type: "lapis", amount: 500 }, { type: "information", amount: 8 }] },\
      ],\
      dried_relic: [\
        { lvl: 0, cost: [{ type: "gold", amount: 15 }, { type: "time", amount: 2 }]},\
        { lvl: 1, interval: 1200, amount: 2, cost: [{ type: "gold", amount: 25 }, { type: "heat", amount: 25 }] },\
        { lvl: 2, interval: 900, amount: 8, cost: [{ type: "gold", amount: 75 }, { type: "heat", amount: 75 }] },\
        { lvl: 3, interval: 600, amount: 256, cost: [{ type: "information", amount: 50 }, { type: "time", amount: 3 }] },\
        { lvl: 4, interval: 400, amount: 1024, cost: [{ type: "information", amount: 150 }, { type: "time", amount: 10 }] },\
        { lvl: 5, interval: 200, amount: 8192 },\
      ],\
    },\
    tool: [\
      {\
        lvl: 0,\
        cost: [{ type: "wood", amount: 5 }],\
        components: {\
          custom_name: "§f나무 막대기",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7를 파괴하기까지 §f3§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 1.0f }\
            ]\
          },\
        }\
      },\
      {\
        lvl: 1,\
        cost: [{ type: "wood", amount: 10 }],\
        components: {\
          custom_name: "§f쓸만한 막대기",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7를 파괴하기까지 §f2§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 1.5f }\
            ]\
          },\
        }\
      },\
      {\
        lvl: 2,\
        cost: [{ type: "wood", amount: 15 }],\
        components: {\
          custom_name: "§f괜찮은 막대기",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7를 파괴하기까지 §f1§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 3.0f }\
            ]\
          },\
        }\
      },\
      {\
        lvl: 3,\
        cost: [{ type: "wood", amount: 20 }],\
        components: {\
          custom_name: "§f좋은 막대기",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7를 파괴하기까지 §f0.5§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 6.0f }\
            ]\
          },\
        }\
      },\
      {\
        lvl: 4,\
        cost: [{ type: "wood", amount: 50 }],\
        components: {\
          custom_name: "§f유용한 막대기",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7를 파괴하기까지 §f0.25§7초 소요됨",\
            "§6* §f돌§7을 파괴하기까지 §f3§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 12.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 0.75f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 5,\
        cost: [{ type: "wood", amount: 35 }, { type: "stone", amount: 10 }],\
        components: {\
          custom_name: "§f제법 마음에 드는 막대기",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7 즉시 파괴 가능",\
            "§6* §f돌§7을 파괴하기까지 §f1.5§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 1.5f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 6,\
        cost: [{ type: "wood", amount: 100 }, { type: "iron", amount: 5 }],\
        components: {\
          custom_name: "§f낡은 곡괭이",\
          item_model: "stone_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7 즉시 파괴 가능",\
            "§6* §f돌§7을 파괴하기까지 §f0.75§7초 소요됨",\
            "§6* §f석탄§7을 파괴하기까지 §f3§7초 소요됨",\
            "§6* §f철§7을 파괴하기까지 §f5§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 3.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 0.9f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 7,\
        cost: [{ type: "wood", amount: 250 }, { type: "iron", amount: 10 }],\
        components: {\
          custom_name: "§f쓸만한 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7 즉시 파괴 가능",\
            "§6* §f돌§7 즉시 파괴 가능",\
            "§6* §f석탄§7을 파괴하기까지 §f1.5§7초 소요됨",\
            "§6* §f철§7을 파괴하기까지 §f3§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 3.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 1.5f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 8,\
        cost: [{ type: "wood", amount: 500 }, { type: "iron", amount: 35 }],\
        components: {\
          custom_name: "§f좋은 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7 즉시 파괴 가능",\
            "§6* §f돌§7 즉시 파괴 가능",\
            "§6* §f석탄§7을 파괴하기까지 §f0.5§7초 소요됨",\
            "§6* §f철§7을 파괴하기까지 §f1.5§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 9.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 3.0f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 9,\
        cost: [{ type: "wood", amount: 4000 }, { type: "iron", amount: 200 }],\
        components: {\
          custom_name: "§f훌륭한 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7, §f돌§7, §f석탄§7 즉시 파괴 가능",\
            "§6* §f철§7을 파괴하기까지 §f0.5§7초 소요됨",\
            "§6* §c흑요석§7을 파괴하기까지 §f5§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 9.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 15.0f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 10,\
        cost: [{ type: "wood", amount: 25000 }, { type: "iron", amount: 350 }],\
        components: {\
          custom_name: "§f상당히 멋있는 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7, §f돌§7, §f석탄§7, §f철§7 즉시 파괴 가능",\
            "§6* §c흑요석§7을 파괴하기까지 §f2.5§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 30.0f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 11,\
        cost: [{ type: "diamond", amount: 5 }, { type: "lapis", amount: 25 }],\
        components: {\
          custom_name: "§f이건 진짜로 대단한 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7, §f돌§7, §f석탄§7, §f철§7 즉시 파괴 가능",\
            "§6* §c흑요석§7을 파괴하기까지 §f1.5§7초 소요됨",\
            ["§6* ", { text: "§f§l석영", shadow_color: -1426128896 }, "§7을 파괴하기까지 §f8§7초 소요됨"],\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
              "nether_quartz_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 50.0f },\
              { blocks: "nether_quartz_ore", correct_for_drops: 1b, speed: 0.5625f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 12,\
        cost: [{ type: "diamond", amount: 20 }, { type: "lapis", amount: 100 }],\
        components: {\
          custom_name: "§f영혼이 스민 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7, §f돌§7, §f석탄§7, §f철§7 즉시 파괴 가능",\
            "§6* §c흑요석§7을 파괴하기까지 §f0.75§7초 소요됨",\
            ["§6* ", { text: "§f§l석영", shadow_color: -1426128896 }, "§7을 파괴하기까지 §f6§7초 소요됨"],\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
              "nether_quartz_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 100.0f },\
              { blocks: "nether_quartz_ore", correct_for_drops: 1b, speed: 0.75f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 13,\
        cost: [{ type: "diamond", amount: 50 }, { type: "emerald", amount: 100 }, { type: "lapis", amount: 250 }],\
        components: {\
          custom_name: "§f영혼에 잠식된 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f참나무§7, §f돌§7, §f석탄§7, §f철§7 즉시 파괴 가능",\
            "§6* §c흑요석§7을 파괴하기까지 §f0.25§7초 소요됨",\
            ["§6* ", { text: "§f§l석영", shadow_color: -1426128896 }, "§7을 파괴하기까지 §f3§7초 소요됨"],\
            ["§6* ", { text: "§6§l금", shadow_color: -1426128896 }, "§7을 파괴하기까지 §f3§7초 소요됨"],\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
              "nether_quartz_ore",\
              "gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 300.0f },\
              { blocks: "nether_quartz_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "gilded_blackstone", correct_for_drops: 1b, speed: 1.5f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 14,\
        cost: [{ type: "diamond", amount: 150 }, { type: "emerald", amount: 300 }, { type: "lapis", amount: 750 }],\
        components: {\
          custom_name: "§f영혼에 잠식된 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §a§l오버월드 차원의 블럭§7이 즉시 파괴됨",\
            ["§6* ", { text: "§f§l석영", shadow_color: -1426128896 }, "§7을 파괴하기까지 §f1.5§7초 소요됨"],\
            ["§6* ", { text: "§6§l금", shadow_color: -1426128896 }, "§7을 파괴하기까지 §f2§7초 소요됨"],\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
              "nether_quartz_ore",\
              "gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 1500.0f },\
              { blocks: "nether_quartz_ore", correct_for_drops: 1b, speed: 3f },\
              { blocks: "gilded_blackstone", correct_for_drops: 1b, speed: 2.25f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 15,\
        cost: [{ type: "diamond", amount: 500 }, { type: "emerald", amount: 1000 }, { type: "lapis", amount: 2500 }],\
        components: {\
          custom_name: "§f영혼과 동화된 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §a§l오버월드 차원의 블럭§7이 즉시 파괴됨",\
            ["§6* ", { text: "§f§l석영", shadow_color: -1426128896 }, "§7을 즉시 파괴 가능"],\
            ["§6* ", { text: "§6§l금", shadow_color: -1426128896 }, "§7을 파괴하기까지 §f1§7초 소요됨"],\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
              "nether_quartz_ore",\
              "gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 1500.0f },\
              { blocks: "nether_quartz_ore", correct_for_drops: 1b, speed: 90f },\
              { blocks: "gilded_blackstone", correct_for_drops: 1b, speed: 4.5f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 16,\
        components: {\
          custom_name: "§f영혼과 동화된 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §a§l오버월드 차원의 블럭§7이 즉시 파괴됨",\
            ["§6* ", { text: "§c§l네더 차원의 블럭", shadow_color: -1426128896 }, "§7이 즉시 파괴됨"],\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "iron_ore",\
              "obsidian",\
              "nether_quartz_ore",\
              "gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "obsidian", correct_for_drops: 1b, speed: 1500.0f },\
              { blocks: "nether_quartz_ore", correct_for_drops: 1b, speed: 90f },\
              { blocks: "gilded_blackstone", correct_for_drops: 1b, speed: 90f },\
            ]\
          },\
        }\
      },\
    ],\
    resource: {\
      wood: {item:"oak_log",regen:[{lvl:0,value:40,cost:[{type:"stone",amount:3}]},{lvl:1,value:20,cost:[{type:"stone",amount:6}]},{lvl:2,value:10,cost:[{type:"stone",amount:20}]},{lvl:3,value:4,cost:[{type:"stone",amount:100}]},{lvl:4,value:1}]},\
      stone: {item:"stone",unlock_cost:[{type:"wood",amount:30}],regen:[{lvl:0,value:3,cost:[{type:"stone",amount:400}]},{lvl:1,value:2,cost:[{type:"stone",amount:25000}]},{lvl:2,value:1}]},\
      coal: {item:"deepslate_coal_ore",unlock_cost:[{type:"stone",amount:100}],regen:[{lvl:0,value:100,cost:[{type:"copper",amount:20}]},{lvl:1,value:70,cost:[{type:"iron",amount:50}]},{lvl:2,value:45,cost:[{type:"gold",amount:100}]},{lvl:3,value:25,cost:[{type:"diamond",amount:25}]},{lvl:4,value:10}]},\
      copper: {item:"deepslate_copper_ore",unlock_cost:[{type:"stone",amount:200}],regen:[{lvl:0,value:160,cost:[{type:"stone",amount:100}]},{lvl:1,value:110,cost:[{type:"coal",amount:100}]},{lvl:2,value:70,cost:[{type:"iron",amount:150}]},{lvl:3,value:40,cost:[{type:"gold",amount:100}]},{lvl:4,value:20}]},\
      iron: {item:"deepslate_iron_ore",unlock_cost:[{type:"coal",amount:100},{type:"copper",amount:100}],regen:[{lvl:0,value:300,cost:[{type:"copper",amount:200}]},{lvl:1,value:220,cost:[{type:"coal",amount:300}]},{lvl:2,value:150,cost:[{type:"gold",amount:250}]},{lvl:3,value:90,cost:[{type:"diamond",amount:50}]},{lvl:4,value:40}]},\
      gold: {item:"deepslate_gold_ore",regen:[{lvl:0,value:600,cost:[{type:"iron",amount:500}]},{lvl:1,value:450,cost:[{type:"coal",amount:1000}]},{lvl:2,value:300,cost:[{type:"emerald",amount:250}]},{lvl:3,value:180,cost:[{type:"diamond",amount:100}]},{lvl:4,value:80}]},\
      diamond: {item:"deepslate_diamond_ore",regen:[{lvl:0,value:1200,cost:[{type:"gold",amount:500}]},{lvl:1,value:900,cost:[{type:"emerald",amount:500}]},{lvl:2,value:600,cost:[{type:"lapis",amount:1000}]},{lvl:3,value:350,cost:[{type:"information",amount:100}]},{lvl:4,value:160}]},\
      emerald: {item:"deepslate_emerald_ore",unlock_cost:[{type:"iron",amount:300},{type:"copper",amount:300}],regen:[{lvl:0,value:800,cost:[{type:"gold",amount:300}]},{lvl:1,value:600,cost:[{type:"lapis",amount:300}]},{lvl:2,value:400,cost:[{type:"diamond",amount:75}]},{lvl:3,value:240,cost:[{type:"information",amount:50}]},{lvl:4,value:100}]},\
      lapis: {item:"deepslate_lapis_ore",unlock_cost:[{type:"emerald",amount:100}],regen:[{lvl:0,value:500,cost:[{type:"emerald",amount:100}]},{lvl:1,value:360,cost:[{type:"gold",amount:400}]},{lvl:2,value:240,cost:[{type:"diamond",amount:100}]},{lvl:3,value:140,cost:[{type:"information",amount:75}]},{lvl:4,value:60}]},\
      heat: {item:"magma_block",regen:[{lvl:0,value:1200}]},\
      cold: {item:"blue_ice",regen:[{lvl:0,value:1200}]},\
      information: {item:"amethyst_shard"},\
      time: {item:"echo_shard"},\
      world_eye: {item:"ender_eye"}\
    },\
  }\
}

# 자원 상점: 현재 레벨의 value가 실제 수급량이며 cost는 다음 단계 구매 비용이다.
data modify storage data const.resource_shop set value [\
  {id:"wood",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:5}]},\
    {lvl:1,value:2,cost:[{type:"coal",amount:25}]},\
    {lvl:2,value:4,cost:[{type:"coal",amount:50}]},\
    {lvl:3,value:8,cost:[{type:"coal",amount:100}]},\
    {lvl:4,value:16,cost:[{type:"coal",amount:200}]},\
    {lvl:5,value:32,cost:[{type:"coal",amount:500}]},\
    {lvl:6,value:64}]},\
  {id:"stone",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:30}]},\
    {lvl:1,value:2,cost:[{type:"coal",amount:150}]},\
    {lvl:2,value:4,cost:[{type:"coal",amount:600}]},\
    {lvl:3,value:8,cost:[{type:"coal",amount:2400}]},\
    {lvl:4,value:16,cost:[{type:"coal",amount:12000}]},\
    {lvl:5,value:32,cost:[{type:"coal",amount:25000}]},\
    {lvl:6,value:64}]},\
  {id:"coal",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:10}]},{lvl:1,value:2,cost:[{type:"coal",amount:30}]},{lvl:2,value:4,cost:[{type:"coal",amount:50}]},{lvl:3,value:8,cost:[{type:"coal",amount:400}]},{lvl:4,value:16,cost:[{type:"coal",amount:3000}]},{lvl:5,value:32,cost:[{type:"coal",amount:7500}]},{lvl:6,value:64}]},\
  {id:"copper",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:20}]},{lvl:1,value:2,cost:[{type:"coal",amount:60}]},{lvl:2,value:4,cost:[{type:"coal",amount:200}]},{lvl:3,value:8,cost:[{type:"coal",amount:1500}]},{lvl:4,value:16,cost:[{type:"coal",amount:10000}]},{lvl:5,value:32,cost:[{type:"coal",amount:25000}]},{lvl:6,value:64}]},\
  {id:"iron",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:20}]},{lvl:1,value:2,cost:[{type:"coal",amount:50}]},{lvl:2,value:4,cost:[{type:"coal",amount:100}]},{lvl:3,value:8,cost:[{type:"coal",amount:2000}]},{lvl:4,value:16,cost:[{type:"coal",amount:13000}]},{lvl:5,value:32,cost:[{type:"coal",amount:30000}]},{lvl:6,value:64}]},\
  {id:"gold",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:100}]},{lvl:1,value:2,cost:[{type:"coal",amount:500}]},{lvl:2,value:4,cost:[{type:"coal",amount:2000}]},{lvl:3,value:8,cost:[{type:"coal",amount:8000}]},{lvl:4,value:16,cost:[{type:"coal",amount:30000}]},{lvl:5,value:32,cost:[{type:"coal",amount:100000}]},{lvl:6,value:64}]},\
  {id:"diamond",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:250}]},{lvl:1,value:2,cost:[{type:"coal",amount:1000}]},{lvl:2,value:4,cost:[{type:"coal",amount:5000}]},{lvl:3,value:8,cost:[{type:"coal",amount:20000}]},{lvl:4,value:16,cost:[{type:"coal",amount:75000}]},{lvl:5,value:32,cost:[{type:"coal",amount:250000}]},{lvl:6,value:64}]},\
  {id:"emerald",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:200}]},{lvl:1,value:2,cost:[{type:"coal",amount:800}]},{lvl:2,value:4,cost:[{type:"coal",amount:4000}]},{lvl:3,value:8,cost:[{type:"coal",amount:16000}]},{lvl:4,value:16,cost:[{type:"coal",amount:60000}]},{lvl:5,value:32,cost:[{type:"coal",amount:200000}]},{lvl:6,value:64}]},\
  {id:"lapis",\
    levels:[\
    {lvl:0,value:1,cost:[{type:"coal",amount:150}]},{lvl:1,value:2,cost:[{type:"coal",amount:600}]},{lvl:2,value:4,cost:[{type:"coal",amount:3000}]},{lvl:3,value:8,cost:[{type:"coal",amount:12000}]},{lvl:4,value:16,cost:[{type:"coal",amount:50000}]},{lvl:5,value:32,cost:[{type:"coal",amount:150000}]},{lvl:6,value:64}]},\
  {id:"xp",\
    levels:[\
    {lvl:0,value:5,cost:[{type:"coal",amount:30}]},{lvl:1,value:12,cost:[{type:"coal",amount:500}]},{lvl:2,value:36,cost:[{type:"coal",amount:2500}]},{lvl:3,value:145,cost:[{type:"coal",amount:5000}]},{lvl:4,value:442}]}\
]

data modify storage data const.factory set value \
  [{id:"wood",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:40},{type:"wood",amount:100}]},{lvl:1,output:24,fuel:2,cost:[{type:"copper",amount:80},{type:"wood",amount:250}]},{lvl:2,output:48,fuel:3,cost:[{type:"copper",amount:160},{type:"wood",amount:600}]},{lvl:3,output:96,fuel:5,cost:[{type:"copper",amount:320},{type:"wood",amount:1500}]},{lvl:4,output:192,fuel:8}]},\
  {id:"stone",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:50},{type:"stone",amount:120}]},{lvl:1,output:20,fuel:3,cost:[{type:"copper",amount:100},{type:"stone",amount:300}]},{lvl:2,output:40,fuel:4,cost:[{type:"copper",amount:200},{type:"stone",amount:800}]},{lvl:3,output:80,fuel:7,cost:[{type:"copper",amount:400},{type:"stone",amount:2000}]},{lvl:4,output:160,fuel:11}]},\
  {id:"coal",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:70},{type:"coal",amount:150}]},{lvl:1,output:16,fuel:2,cost:[{type:"copper",amount:140},{type:"coal",amount:350}]},{lvl:2,output:32,fuel:3,cost:[{type:"copper",amount:280},{type:"coal",amount:900}]},{lvl:3,output:64,fuel:5,cost:[{type:"copper",amount:560},{type:"coal",amount:2200}]},{lvl:4,output:128,fuel:8}]},\
  {id:"copper",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:180}]},{lvl:1,output:14,fuel:3,cost:[{type:"copper",amount:300}]},{lvl:2,output:28,fuel:5,cost:[{type:"copper",amount:700}]},{lvl:3,output:56,fuel:8,cost:[{type:"copper",amount:1800}]},{lvl:4,output:112,fuel:13}]},\
  {id:"iron",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:90},{type:"iron",amount:100}]},{lvl:1,output:12,fuel:4,cost:[{type:"copper",amount:180},{type:"iron",amount:250}]},{lvl:2,output:24,fuel:6,cost:[{type:"copper",amount:360},{type:"iron",amount:650}]},{lvl:3,output:48,fuel:10,cost:[{type:"copper",amount:720},{type:"iron",amount:1600}]},{lvl:4,output:96,fuel:16}]},{\
  id:"gold",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:120},{type:"gold",amount:70}]},{lvl:1,output:8,fuel:5,cost:[{type:"copper",amount:240},{type:"gold",amount:180}]},{lvl:2,output:16,fuel:8,cost:[{type:"copper",amount:480},{type:"gold",amount:450}]},{lvl:3,output:32,fuel:13,cost:[{type:"copper",amount:960},{type:"gold",amount:1100}]},{lvl:4,output:64,fuel:21}]},\
  {id:"diamond",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:180},{type:"diamond",amount:30}]},{lvl:1,output:4,fuel:7,cost:[{type:"copper",amount:360},{type:"diamond",amount:80}]},{lvl:2,output:8,fuel:11,cost:[{type:"copper",amount:720},{type:"diamond",amount:200}]},{lvl:3,output:16,fuel:18,cost:[{type:"copper",amount:1440},{type:"diamond",amount:500}]},{lvl:4,output:32,fuel:29}]},\
  {id:"emerald",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:160},{type:"emerald",amount:40}]},{lvl:1,output:5,fuel:6,cost:[{type:"copper",amount:320},{type:"emerald",amount:100}]},{lvl:2,output:10,fuel:10,cost:[{type:"copper",amount:640},{type:"emerald",amount:250}]},{lvl:3,output:20,fuel:16,cost:[{type:"copper",amount:1280},{type:"emerald",amount:650}]},{lvl:4,output:40,fuel:26}]},\
  {id:"lapis",\
    levels:[{lvl:0,output:0,fuel:0,cost:[{type:"copper",amount:130},{type:"lapis",amount:70}]},{lvl:1,output:8,fuel:5,cost:[{type:"copper",amount:260},{type:"lapis",amount:180}]},{lvl:2,output:16,fuel:8,cost:[{type:"copper",amount:520},{type:"lapis",amount:450}]},{lvl:3,output:32,fuel:13,cost:[{type:"copper",amount:1040},{type:"lapis",amount:1200}]},{lvl:4,output:64,fuel:21}]}]
