# load
# 상수 선언

data remove storage data const
data merge storage data {\
  const:{\
    structure: {\
      alchemy_workshop: [\
        {\
          stage: 0,\
          required_age: 5,\
          cost: [\
            { type: "iron", amount: 80 },\
            { type: "emerald", amount: 30 }\
          ]\
        },\
        {\
          stage: 1,\
          required_age: 6,\
          cost: [\
            { type: "iron", amount: 160 },\
            { type: "emerald", amount: 60 },\
            { type: "lapis", amount: 100 }\
          ]\
        },\
        {\
          stage: 2,\
          required_age: 7,\
          cost: [\
            { type: "iron", amount: 320 },\
            { type: "emerald", amount: 120 },\
            { type: "lapis", amount: 200 },\
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
    },\
    tool: [\
      {\
        lvl: 0,\
        cost: [{ type: "wood", amount: 5 }],\
        components: {\
          custom_name: "§f나뭇가지",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7를 파괴하기까지 §f3§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 1.0f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 1,\
        cost: [{ type: "wood", amount: 10 }],\
        components: {\
          custom_name: "§f멋진 막대기",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7를 파괴하기까지 §f2§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 1.5f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 2,\
        cost: [{ type: "wood", amount: 15 }],\
        components: {\
          custom_name: "§f나무 도끼",\
          item_model: "wooden_axe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7를 파괴하기까지 §f2§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 1.5f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 3,\
        cost: [{ type: "wood", amount: 20 }, { type: "stone", amount: 5 }],\
        components: {\
          custom_name: "§f나무 곡괭이",\
          item_model: "wooden_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7를 파괴하기까지 §f1§7초 소요됨",\
            "§6* §7돌§7을 파괴하기까지 §f4§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 3.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 0.5625f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 4,\
        cost: [{ type: "wood", amount: 50 }, { type: "stone", amount: 5 }],\
        components: {\
          custom_name: "§f돌 곡괭이",\
          item_model: "stone_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7를 파괴하기까지 §f1§7초 소요됨",\
            "§6* §7돌§7을 파괴하기까지 §f3§7초 소요됨",\
            "§6* §8석탄§7을 파괴하기까지 §f6§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f8§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f6§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 3.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 0.5625f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.125f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 0.7f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 5,\
        cost: [{ type: "wood", amount: 35 }, { type: "stone", amount: 10 }, { type: "copper", amount: 5 }],\
        components: {\
          custom_name: "§f좋은 돌 곡괭이",\
          item_model: "stone_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7를 파괴하기까지 §f1§7초 소요됨",\
            "§6* §7돌§7을 파괴하기까지 §f2§7초 소요됨",\
            "§6* §8석탄§7을 파괴하기까지 §f4§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f7§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f5§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 3.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 1.125f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 1.125f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 0.642857f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.15f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 0.84f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 6,\
        cost: [{ type: "wood", amount: 100 }, { type: "copper", amount: 5 }],\
        components: {\
          custom_name: "§f구리 곡괭이",\
          item_model: "copper_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7 즉시 파괴 가능",\
            "§6* §7돌§7을 파괴하기까지 §f2§7초 소요됨",\
            "§6* §8석탄§7을 파괴하기까지 §f3§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f5§7초 소요됨",\
            ["§6* ", "§f철", "§7, ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f8§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f8§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f4§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "emerald_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 1.125f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 0.9f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 0.5625f },\
              { blocks: "emerald_ore", correct_for_drops: 1b, speed: 0.5625f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 0.9375f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 0.9375f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.1875f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 1.05f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 7,\
        cost: [{ type: "wood", amount: 250 }, { type: "iron", amount: 10 }],\
        components: {\
          custom_name: "§f좋은 구리 곡괭이",\
          item_model: "copper_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7 즉시 파괴 가능",\
            "§6* §7돌§7을 파괴하기까지 §f1§7초 소요됨",\
            "§6* §8석탄§7을 파괴하기까지 §f2§7초 소요됨",\
            ["§6* ", "§6구리", "§7, ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f4§7초 소요됨"],\
            "§6* §f철§7을 파괴하기까지 §f7§7초 소요됨",\
            "§6* §a에메랄드§7를 파괴하기까지 §f7§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f8§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f3§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "emerald_ore",\
              "lapis_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 1.125f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 0.642857f },\
              { blocks: "emerald_ore", correct_for_drops: 1b, speed: 0.642857f },\
              { blocks: "lapis_ore", correct_for_drops: 1b, speed: 0.5625f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 1.875f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 1.875f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.25f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 1.4f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 8,\
        cost: [{ type: "wood", amount: 500 }, { type: "iron", amount: 35 }],\
        components: {\
          custom_name: "§f철 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7 즉시 파괴 가능",\
            "§6* §7돌§7을 파괴하기까지 §f1§7초 소요됨",\
            "§6* §8석탄§7을 파괴하기까지 §f2§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f3§7초 소요됨",\
            "§6* §f철§7을 파괴하기까지 §f6§7초 소요됨",\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f4§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f6§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f7§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f3§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "emerald_ore",\
              "lapis_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "emerald_ore", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "lapis_ore", correct_for_drops: 1b, speed: 0.642857f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 1.875f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 1.875f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.25f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 1.4f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 9,\
        cost: [{ type: "wood", amount: 4000 }, { type: "iron", amount: 200 }],\
        components: {\
          custom_name: "§f좋은 철 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7 즉시 파괴 가능",\
            "§6* §8석탄§7을 파괴하기까지 §f1§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f2§7초 소요됨",\
            ["§6* ", "§f철", "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f4§7초 소요됨"],\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7을 파괴하기까지 §f3§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f4§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f6§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f2§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "emerald_ore",\
              "lapis_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 4.5f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 1.125f },\
              { blocks: "emerald_ore", correct_for_drops: 1b, speed: 1.125f },\
              { blocks: "lapis_ore", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 2.5f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 1.875f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.375f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 2.1f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 10,\
        cost: [{ type: "wood", amount: 25000 }, { type: "iron", amount: 350 }],\
        components: {\
          custom_name: "§f훌륭한 철 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7 즉시 파괴 가능",\
            "§6* §8석탄§7을 파괴하기까지 §f1§7초 소요됨",\
            ["§6* ", "§6구리", "§7, ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7을 파괴하기까지 §f2§7초 소요됨"],\
            ["§6* ", "§f철", "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f3§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f3§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f4§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f2§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "emerald_ore",\
              "lapis_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 4.5f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "emerald_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "lapis_ore", correct_for_drops: 1b, speed: 1.125f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 3.75f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 2.5f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.375f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 2.1f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 11,\
        cost: [{ type: "diamond", amount: 5 }, { type: "lapis", amount: 25 }],\
        components: {\
          custom_name: "§f신성 철 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능",\
            "§6* §6구리§7를 파괴하기까지 §f1§7초 소요됨",\
            ["§6* ", "§f철", "§7, ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f2§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f2§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f3§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f1§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "emerald_ore",\
              "lapis_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "magma_block",\
              "blue_ice",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 4.5f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "emerald_ore", correct_for_drops: 1b, speed: 2.25f },\
              { blocks: "lapis_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 3.75f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 3.75f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 4.2f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 12,\
        cost: [{ type: "diamond", amount: 20 }, { type: "lapis", amount: 100 }],\
        components: {\
          custom_name: "§f수동 드릴",\
          item_model: "netherite_spear",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7, §8석탄§7, §6구리§7 즉시 파괴 가능",\
            ["§6* ", "§f철", "§7, ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f1§7초 소요됨"],\
            "§6* §8외계 자원§7을 파괴하기까지 §f8§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "yellow_glazed_terracotta",\
              "blue_glazed_terracotta",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 4.5f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 7.5f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 7.5f },\
              { blocks: "yellow_glazed_terracotta", correct_for_drops: 1b, speed: 0.2625f },\
              { blocks: "blue_glazed_terracotta", correct_for_drops: 1b, speed: 0.2625f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 13,\
        cost: [{ type: "diamond", amount: 50 }, { type: "emerald", amount: 100 }, { type: "lapis", amount: 250 }],\
        components: {\
          custom_name: "§f전동 드릴",\
          item_model: "mace",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f일반 자원§7 즉시 파괴 가능",\
            "§6* §8외계 자원§7을 파괴하기까지 §f4§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "yellow_glazed_terracotta",\
              "blue_glazed_terracotta",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "yellow_glazed_terracotta", correct_for_drops: 1b, speed: 0.525f },\
              { blocks: "blue_glazed_terracotta", correct_for_drops: 1b, speed: 0.525f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 14,\
        cost: [{ type: "diamond", amount: 150 }, { type: "emerald", amount: 300 }, { type: "lapis", amount: 750 }],\
        components: {\
          custom_name: "§f굴착기",\
          item_model: "mace",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f일반 자원§7 즉시 파괴 가능",\
            "§6* §8외계 자원§7을 파괴하기까지 §f2§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "yellow_glazed_terracotta",\
              "blue_glazed_terracotta",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "yellow_glazed_terracotta", correct_for_drops: 1b, speed: 1.05f },\
              { blocks: "blue_glazed_terracotta", correct_for_drops: 1b, speed: 1.05f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 15,\
        cost: [{ type: "diamond", amount: 500 }, { type: "emerald", amount: 1000 }, { type: "lapis", amount: 2500 }],\
        components: {\
          custom_name: "§f중력 채굴기",\
          item_model: "ender_pearl",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f일반 자원§7 즉시 파괴 가능",\
            "§6* §8외계 자원§7을 파괴하기까지 §f1§7초 소요됨",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "yellow_glazed_terracotta",\
              "blue_glazed_terracotta",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "yellow_glazed_terracotta", correct_for_drops: 1b, speed: 2.1f },\
              { blocks: "blue_glazed_terracotta", correct_for_drops: 1b, speed: 2.1f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 16,\
        components: {\
          custom_name: "§f신성",\
          item_model: "breeze_rod",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f일반 자원§7 즉시 파괴 가능",\
            "§6* §2보석 자원§7 즉시 파괴 가능",\
            "§6* §d특수 자원§7 즉시 파괴 가능",\
            "§6* §8외계 자원§7 즉시 파괴 가능",\
          ],\
          can_break: {\
            blocks: [\
              "oak_log",\
              "stone",\
              "coal_ore",\
              "copper_ore",\
              "iron_ore",\
              "emerald_ore",\
              "lapis_ore",\
              "raw_gold_block",\
              "diamond_block",\
              "magma_block",\
              "blue_ice",\
              "yellow_glazed_terracotta",\
              "blue_glazed_terracotta",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "emerald_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "lapis_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 150.0f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 15.0f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 84.0f },\
              { blocks: "yellow_glazed_terracotta", correct_for_drops: 1b, speed: 42.0f },\
              { blocks: "blue_glazed_terracotta", correct_for_drops: 1b, speed: 42.0f },\
            ]\
          },\
        }\
      },\
    ],\
    resource: {\
      wood: {item:"oak_log",\
        regen:[\
          {lvl:0,value:40,cost:[{type:"stone",amount:3}]},\
          {lvl:1,value:20,cost:[{type:"stone",amount:6}]},\
          {lvl:2,value:8,cost:[{type:"stone",amount:20}]},\
          {lvl:3,value:3,cost:[{type:"stone",amount:100}]},\
          {lvl:4,value:1}\
        ]\
      },\
      stone: {item:"stone",\
        unlock_cost:[{type:"wood",amount:30}],\
        regen:[\
          {lvl:0,value:3,cost:[{type:"stone",amount:400}]},\
          {lvl:1,value:2,cost:[{type:"stone",amount:25000}]},\
          {lvl:2,value:1}\
        ]\
      },\
      coal: {item:"deepslate_coal_ore",\
        unlock_cost:[{type:"wood",amount:100},{type:"stone",amount:10}],\
        regen:[\
          {lvl:0,value:100,cost:[{type:"copper",amount:20}]},\
          {lvl:1,value:60,cost:[{type:"iron",amount:50}]},\
          {lvl:2,value:25,cost:[{type:"gold",amount:100}]},\
          {lvl:3,value:6,cost:[{type:"diamond",amount:25}]},\
          {lvl:4,value:1}\
        ]\
      },\
      copper: {item:"deepslate_copper_ore",\
        unlock_cost:[{type:"wood",amount:200},{type:"coal",amount:20}],\
        regen:[\
          {lvl:0,value:160,cost:[{type:"stone",amount:100}]},\
          {lvl:1,value:100,cost:[{type:"coal",amount:100}]},\
          {lvl:2,value:50,cost:[{type:"iron",amount:150}]},\
          {lvl:3,value:15,cost:[{type:"gold",amount:100}]},\
          {lvl:4,value:3}\
        ]\
      },\
      iron: {item:"deepslate_iron_ore",\
        unlock_cost:[{type:"coal",amount:100},{type:"copper",amount:100}],\
        regen:[\
          {lvl:0,value:300,cost:[{type:"copper",amount:200}]},\
          {lvl:1,value:180,cost:[{type:"coal",amount:300}]},\
          {lvl:2,value:75,cost:[{type:"gold",amount:250}]},\
          {lvl:3,value:20,cost:[{type:"diamond",amount:50}]},\
          {lvl:4,value:5}\
        ]\
      },\
      gold: {item:"deepslate_gold_ore",\
        regen:[\
          {lvl:0,value:200,cost:[{type:"iron",amount:500}]},\
          {lvl:1,value:120,cost:[{type:"coal",amount:1000}]},\
          {lvl:2,value:60,cost:[{type:"emerald",amount:250}]},\
          {lvl:3,value:20,cost:[{type:"diamond",amount:100}]},\
          {lvl:4,value:5}\
        ]\
      },\
      diamond: {item:"deepslate_diamond_ore",\
        regen:[\
          {lvl:0,value:400,cost:[{type:"gold",amount:500}]},\
          {lvl:1,value:240,cost:[{type:"emerald",amount:500}]},\
          {lvl:2,value:100,cost:[{type:"lapis",amount:1000}]},\
          {lvl:3,value:30,cost:[{type:"information",amount:100}]},\
          {lvl:4,value:5}\
        ]\
      },\
      emerald: {item:"deepslate_emerald_ore",\
        unlock_cost:[{type:"iron",amount:300},{type:"copper",amount:300}],\
        regen:[\
          {lvl:0,value:800,cost:[{type:"gold",amount:300}]},\
          {lvl:1,value:500,cost:[{type:"lapis",amount:300}]},\
          {lvl:2,value:220,cost:[{type:"diamond",amount:75}]},\
          {lvl:3,value:70,cost:[{type:"information",amount:50}]},\
          {lvl:4,value:10}\
        ]\
      },\
      lapis: {item:"deepslate_lapis_ore",\
        unlock_cost:[{type:"emerald",amount:100}],\
        regen:[\
          {lvl:0,value:500,cost:[{type:"emerald",amount:100}]},\
          {lvl:1,value:320,cost:[{type:"gold",amount:400}]},\
          {lvl:2,value:150,cost:[{type:"diamond",amount:100}]},\
          {lvl:3,value:50,cost:[{type:"information",amount:75}]},\
          {lvl:4,value:10}\
        ]\
      },\
      heat: {item:"magma_block",\
        regen:[{lvl:0,value:1200}]\
      },\
      cold: {item:"blue_ice",\
        regen:[{lvl:0,value:1200}]\
      },\
      information: {item:"amethyst_shard"},\
      time: {item:"echo_shard"},\
      world_eye: {item:"ender_eye"},\
      yellow: {item:"yellow_glazed_terracotta",\
        regen:[\
          {lvl:0,value:1200,cost:[{type:"wood",amount:50},{type:"stone",amount:50}]},\
          {lvl:1,value:800,cost:[{type:"stone",amount:200},{type:"coal",amount:100}]},\
          {lvl:2,value:500,cost:[{type:"copper",amount:250},{type:"iron",amount:100}]},\
          {lvl:3,value:300,cost:[{type:"copper",amount:1000},{type:"iron",amount:500}]},\
          {lvl:4,value:160}\
        ]\
      },\
      blue: {item:"blue_glazed_terracotta",\
        regen:[\
          {lvl:0,value:1400,cost:[{type:"wood",amount:75},{type:"stone",amount:75}]},\
          {lvl:1,value:900,cost:[{type:"stone",amount:250},{type:"coal",amount:125}]},\
          {lvl:2,value:600,cost:[{type:"copper",amount:300},{type:"iron",amount:150}]},\
          {lvl:3,value:350,cost:[{type:"copper",amount:1200},{type:"iron",amount:600}]},\
          {lvl:4,value:180}\
        ]\
      }\
    },\
  }\
}

# 자원 상점 1층: 현재 레벨의 value가 실제 수급 배수이며 cost는 다음 단계 구매 비용이다.
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

data modify storage data const.factory set value \
[{id:"wood",\
  levels:[\
    {lvl:0,fuel:1,cost:[{type:"copper",amount:40},{type:"wood",amount:100}]},\
    {lvl:1,fuel:2,cost:[{type:"copper",amount:80},{type:"wood",amount:250}]},\
    {lvl:2,fuel:3,cost:[{type:"copper",amount:400},{type:"wood",amount:1250}]},\
    {lvl:3,fuel:4,cost:[{type:"copper",amount:3200},{type:"wood",amount:10000}]},\
    {lvl:4,fuel:5,cost:[{type:"copper",amount:25600},{type:"wood",amount:80000}]},\
    {lvl:5,fuel:6,cost:[{type:"copper",amount:204800},{type:"wood",amount:640000}]},\
    {lvl:6,fuel:7}\
  ]\
},\
{id:"stone",\
  levels:[\
    {lvl:0,fuel:1,cost:[{type:"copper",amount:50},{type:"stone",amount:120}]},\
    {lvl:1,fuel:3,cost:[{type:"copper",amount:100},{type:"stone",amount:300}]},\
    {lvl:2,fuel:4,cost:[{type:"copper",amount:500},{type:"stone",amount:1500}]},\
    {lvl:3,fuel:5,cost:[{type:"copper",amount:4000},{type:"stone",amount:12000}]},\
    {lvl:4,fuel:6,cost:[{type:"copper",amount:32000},{type:"stone",amount:96000}]},\
    {lvl:5,fuel:7,cost:[{type:"copper",amount:256000},{type:"stone",amount:768000}]},\
    {lvl:6,fuel:8}\
  ]\
},\
{id:"coal",\
  levels:[\
    {lvl:0,fuel:1,cost:[{type:"copper",amount:70},{type:"coal",amount:150}]},\
    {lvl:1,fuel:2,cost:[{type:"copper",amount:140},{type:"coal",amount:350}]},\
    {lvl:2,fuel:3,cost:[{type:"copper",amount:700},{type:"coal",amount:1750}]},\
    {lvl:3,fuel:4,cost:[{type:"copper",amount:5600},{type:"coal",amount:14000}]},\
    {lvl:4,fuel:5,cost:[{type:"copper",amount:44800},{type:"coal",amount:112000}]},\
    {lvl:5,fuel:6,cost:[{type:"copper",amount:358400},{type:"coal",amount:896000}]},\
    {lvl:6,fuel:7}\
  ]\
},\
{id:"copper",\
  levels:[\
    {lvl:0,fuel:2,cost:[{type:"copper",amount:180}]},\
    {lvl:1,fuel:3,cost:[{type:"copper",amount:300}]},\
    {lvl:2,fuel:4,cost:[{type:"copper",amount:1500}]},\
    {lvl:3,fuel:5,cost:[{type:"copper",amount:12000}]},\
    {lvl:4,fuel:6,cost:[{type:"copper",amount:96000}]},\
    {lvl:5,fuel:7,cost:[{type:"copper",amount:768000}]},\
    {lvl:6,fuel:8}\
  ]\
},\
{id:"iron",\
  levels:[\
    {lvl:0,fuel:2,cost:[{type:"copper",amount:90},{type:"iron",amount:100}]},\
    {lvl:1,fuel:4,cost:[{type:"copper",amount:180},{type:"iron",amount:250}]},\
    {lvl:2,fuel:5,cost:[{type:"copper",amount:900},{type:"iron",amount:1250}]},\
    {lvl:3,fuel:6,cost:[{type:"copper",amount:7200},{type:"iron",amount:10000}]},\
    {lvl:4,fuel:7,cost:[{type:"copper",amount:57600},{type:"iron",amount:80000}]},\
    {lvl:5,fuel:8,cost:[{type:"copper",amount:460800},{type:"iron",amount:640000}]},\
    {lvl:6,fuel:9}\
  ]\
},\
{id:"gold",\
  levels:[\
    {lvl:0,fuel:3,cost:[{type:"copper",amount:120},{type:"gold",amount:70}]},\
    {lvl:1,fuel:5,cost:[{type:"copper",amount:240},{type:"gold",amount:180}]},\
    {lvl:2,fuel:7,cost:[{type:"copper",amount:1200},{type:"gold",amount:900}]},\
    {lvl:3,fuel:9,cost:[{type:"copper",amount:9600},{type:"gold",amount:7200}]},\
    {lvl:4,fuel:11,cost:[{type:"copper",amount:76800},{type:"gold",amount:57600}]},\
    {lvl:5,fuel:13,cost:[{type:"copper",amount:614400},{type:"gold",amount:460800}]},\
    {lvl:6,fuel:15}\
  ]\
},\
{id:"diamond",\
  levels:[\
    {lvl:0,fuel:4,cost:[{type:"copper",amount:180},{type:"diamond",amount:30}]},\
    {lvl:1,fuel:7,cost:[{type:"copper",amount:360},{type:"diamond",amount:80}]},\
    {lvl:2,fuel:9,cost:[{type:"copper",amount:1800},{type:"diamond",amount:400}]},\
    {lvl:3,fuel:11,cost:[{type:"copper",amount:14400},{type:"diamond",amount:3200}]},\
    {lvl:4,fuel:13,cost:[{type:"copper",amount:115200},{type:"diamond",amount:25600}]},\
    {lvl:5,fuel:15,cost:[{type:"copper",amount:921600},{type:"diamond",amount:204800}]},\
    {lvl:6,fuel:17}\
  ]\
},\
{id:"emerald",\
  levels:[\
    {lvl:0,fuel:4,cost:[{type:"copper",amount:160},{type:"emerald",amount:40}]},\
    {lvl:1,fuel:6,cost:[{type:"copper",amount:320},{type:"emerald",amount:100}]},\
    {lvl:2,fuel:8,cost:[{type:"copper",amount:1600},{type:"emerald",amount:500}]},\
    {lvl:3,fuel:10,cost:[{type:"copper",amount:12800},{type:"emerald",amount:4000}]},\
    {lvl:4,fuel:12,cost:[{type:"copper",amount:102400},{type:"emerald",amount:32000}]},\
    {lvl:5,fuel:14,cost:[{type:"copper",amount:819200},{type:"emerald",amount:256000}]},\
    {lvl:6,fuel:16}\
  ]\
},\
{id:"lapis",\
  levels:[\
    {lvl:0,fuel:3,cost:[{type:"copper",amount:130},{type:"lapis",amount:70}]},\
    {lvl:1,fuel:5,cost:[{type:"copper",amount:260},{type:"lapis",amount:180}]},\
    {lvl:2,fuel:7,cost:[{type:"copper",amount:1300},{type:"lapis",amount:900}]},\
    {lvl:3,fuel:9,cost:[{type:"copper",amount:10400},{type:"lapis",amount:7200}]},\
    {lvl:4,fuel:11,cost:[{type:"copper",amount:83200},{type:"lapis",amount:57600}]},\
    {lvl:5,fuel:13,cost:[{type:"copper",amount:665600},{type:"lapis",amount:460800}]},\
    {lvl:6,fuel:15}\
  ]\
},\
{id:"cold",\
  levels:[\
    {lvl:0,fuel:4,cost:[{type:"copper",amount:180},{type:"cold",amount:40}]},\
    {lvl:1,fuel:7,cost:[{type:"copper",amount:360},{type:"cold",amount:100}]},\
    {lvl:2,fuel:9,cost:[{type:"copper",amount:1800},{type:"cold",amount:500}]},\
    {lvl:3,fuel:11,cost:[{type:"copper",amount:14400},{type:"cold",amount:4000}]},\
    {lvl:4,fuel:13,cost:[{type:"copper",amount:115200},{type:"cold",amount:32000}]},\
    {lvl:5,fuel:15,cost:[{type:"copper",amount:921600},{type:"cold",amount:256000}]},\
    {lvl:6,fuel:17}\
  ]\
},\
{id:"heat",\
  levels:[\
    {lvl:0,fuel:4,cost:[{type:"copper",amount:180},{type:"heat",amount:40}]},\
    {lvl:1,fuel:7,cost:[{type:"copper",amount:360},{type:"heat",amount:100}]},\
    {lvl:2,fuel:9,cost:[{type:"copper",amount:1800},{type:"heat",amount:500}]},\
    {lvl:3,fuel:11,cost:[{type:"copper",amount:14400},{type:"heat",amount:4000}]},\
    {lvl:4,fuel:13,cost:[{type:"copper",amount:115200},{type:"heat",amount:32000}]},\
    {lvl:5,fuel:15,cost:[{type:"copper",amount:921600},{type:"heat",amount:256000}]},\
    {lvl:6,fuel:17}\
  ]\
}]

# -----------------------------------------------------------------------------
# 입자가속기
# -----------------------------------------------------------------------------
data modify storage data const.accelerator set value {level:{"1":{production:1,production_interval:1200,experiment_cooldown:1200,failure_cooldown:600},"2":{production:2,production_interval:900,experiment_cooldown:600,failure_cooldown:300},"3":{production:4,production_interval:600,experiment_cooldown:300,failure_cooldown:150},"4":{production:8,production_interval:400,experiment_cooldown:180,failure_cooldown:90}},upgrade:{"0":{cost:[{type:"iron",amount:100000},{type:"time",amount:1}],broken:0},"1":{cost:[{type:"iron",amount:300000},{type:"time",amount:2}],broken:10},"2":{cost:[{type:"iron",amount:800000},{type:"time",amount:4}],broken:40},"3":{cost:[{type:"iron",amount:2000000},{type:"time",amount:8}],broken:120}},experiment:{quantum:{unlock_level:1,delay:60,failure_chance:10,cost:[{type:"iron",amount:50000},{type:"lapis",amount:500},{type:"gold",amount:250},{type:"diamond",amount:50},{type:"time",amount:1},{type:"no_obsidian",amount:1}]},heavy:{unlock_level:2,delay:80,failure_chance:16,cost:[{type:"iron",amount:150000},{type:"lapis",amount:1000},{type:"gold",amount:500},{type:"diamond",amount:100},{type:"time",amount:2},{type:"no_obsidian",amount:1}]},spacetime:{unlock_level:4,delay:100,failure_chance:25,cost:[{type:"iron",amount:500000},{type:"lapis",amount:2500},{type:"gold",amount:1000},{type:"diamond",amount:250},{type:"time",amount:4},{type:"no_obsidian",amount:1}],failure_loss:[{type:"information",amount:16},{type:"time",amount:1}]}},repair:{automatic_time:36000,manual_cost:[{type:"iron",amount:100000},{type:"time",amount:2}]}}

# -----------------------------------------------------------------------------
# 로드 시 기존 세이브 보정 및 도구 규칙 확장
# -----------------------------------------------------------------------------
execute unless score #yellow material = #yellow material run scoreboard players set #yellow material 0
execute unless score #blue material = #blue material run scoreboard players set #blue material 0
execute unless score #yellow_regen_lvl upgrade = #yellow_regen_lvl upgrade run scoreboard players set #yellow_regen_lvl upgrade 0
execute unless score #blue_regen_lvl upgrade = #blue_regen_lvl upgrade run scoreboard players set #blue_regen_lvl upgrade 0

# 구리 곡괭이(Lv.6)부터 노랑/파랑을 채굴할 수 있습니다.
data modify storage data const.tool[{lvl:6}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:6}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:6}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:6}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:7}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:7}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:7}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:7}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:8}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:8}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:8}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:8}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:9}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:9}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:9}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:9}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:10}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:10}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:10}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:10}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

data modify storage data const.tool[{lvl:11}].components.can_break.blocks append value "yellow_glazed_terracotta"
data modify storage data const.tool[{lvl:11}].components.can_break.blocks append value "blue_glazed_terracotta"
data modify storage data const.tool[{lvl:11}].components.tool.rules append value {blocks:"yellow_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}
data modify storage data const.tool[{lvl:11}].components.tool.rules append value {blocks:"blue_glazed_terracotta",correct_for_drops:1b,speed:0.2625f}

# -----------------------------------------------------------------------------
# 타임머신
# -----------------------------------------------------------------------------
# time_machine_level은 기존 연출과 호환되는 세대(1~4) 값으로 유지합니다.
# yellow/blue 연구는 upgrade objective의 가짜 플레이어로 누적합니다.
# 세대 상승 시 누적 연구 우세에 따라 yellow/blue/green 세대 특성을 확정합니다.
data modify storage data const.time_machine set value {base:[{lvl:1,amount:1,interval:1200},{lvl:2,amount:2,interval:1000},{lvl:3,amount:4,interval:800},{lvl:4,amount:8,interval:600}],research:[{step:1,color:50,broken:5,time:0},{step:2,color:75,broken:5,time:0},{step:3,color:100,broken:10,time:0},{step:4,color:150,broken:10,time:1},{step:5,color:200,broken:15,time:0},{step:6,color:250,broken:20,time:0},{step:7,color:300,broken:25,time:0},{step:8,color:400,broken:30,time:2},{step:9,color:500,broken:40,time:0},{step:10,color:650,broken:50,time:0},{step:11,color:800,broken:60,time:0},{step:12,color:1000,broken:80,time:4}],yellow_amount_bonus:1,blue_interval_reduction:25,milestone:{yellow_amount_bonus:2,blue_interval_reduction:75,green_amount_bonus:1,green_interval_reduction:15}}

# load/reload 시 현재 연구 상태에서 생산 성능 캐시를 한 번 복구합니다.
function time_machine/calculate
