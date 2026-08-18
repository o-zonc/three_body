# load
# 상수 선언

data remove storage data const
data merge storage data {\
  const:{\
    structure: {\
      alchemy_workshop: [\
        { stage: 0, required_age: 5, cost: [{ type: "iron", amount: 250 }, { type: "emerald", amount: 100 }] },\
        { stage: 1, required_age: 6, cost: [{ type: "iron", amount: 500 }, { type: "emerald", amount: 250 }, { type: "lapis", amount: 100 }] },\
        { stage: 2, required_age: 7, cost: [{ type: "iron", amount: 2000 }, { type: "emerald", amount: 1000 }, { type: "lapis", amount: 500 }] },\
      ],\
    },\
    dimensions: {\
      overworld: {\
        drill: {\
          speed:[\
            { lvl: 0, value: 5, cost: [{ type: "stone", amount: 100 }] },\
            { lvl: 1, value: 7, cost: [{ type: "stone", amount: 200 }] },\
            { lvl: 2, value: 10, cost: [{ type: "stone", amount: 300 }] },\
            { lvl: 3, value: 12, cost: [{ type: "stone", amount: 400 }] },\
            { lvl: 4, value: 15, cost: [{ type: "stone", amount: 500 }] },\
            { lvl: 5, value: 17, cost: [{ type: "stone", amount: 600 }] },\
            { lvl: 6, value: 20, cost: [{ type: "stone", amount: 700 }] },\
            { lvl: 7, value: 22, cost: [{ type: "stone", amount: 800 }] },\
            { lvl: 8, value: 25 },\
          ],\
          limit:[\
            { lvl: 0, value: 20000, cost: [{ type: "iron", amount: 5 }] },\
            { lvl: 1, value: -5000, cost: [{ type: "iron", amount: 25 }] },\
            { lvl: 2, value: -32000, cost: [{ type: "iron", amount: 150 }] },\
            { lvl: 3, value: -64000 },\
          ],\
        },\
        entrance: [\
          { id: "cave", cost: [{ type: "exp_lvl", amount: 5 }] },\
          { id: "material_shop", cost: [{ type: "exp_lvl", amount: 5 }] },\
          { id: "nether_portal", cost: [{ type: "exp_lvl", amount: 25 }] },\
          { id: "nether_entrance", cost: [{ type: "obsidian", amount: 16 }] }\
        ],\
        shop: {\
          material_shop: [\
            {\
              type: "wood",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 5 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 25 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 50 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 100 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 200 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 500 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "stone",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 30 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 150 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 600 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 2400 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 12000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 25000 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "coal",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 10 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 30 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 50 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 400 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 3000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 7500 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "iron",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 20 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 50 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 100 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 2000 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 13000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 30000 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "copper",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 20 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 60 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 200 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 1500 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 10000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 25000 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "gold",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 100 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 500 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 2000 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 8000 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 30000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 100000 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "diamond",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 250 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 1000 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 5000 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 20000 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 75000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 250000 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "emerald",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 200 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 800 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 4000 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 16000 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 60000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 200000 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "lapis",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "coal", amount: 150 }] },\
                { lvl: 1, value: 2, cost: [{ type: "coal", amount: 600 }] },\
                { lvl: 2, value: 4, cost: [{ type: "coal", amount: 3000 }] },\
                { lvl: 3, value: 8, cost: [{ type: "coal", amount: 12000 }] },\
                { lvl: 4, value: 16, cost: [{ type: "coal", amount: 50000 }] },\
                { lvl: 5, value: 32, cost: [{ type: "coal", amount: 150000 }] },\
                { lvl: 6, value: 64 },\
              ]\
            },\
            {\
              type: "xp",\
              costs: [\
                { lvl: 0, value: 5, cost: [{ type: "coal", amount: 30 }] },\
                { lvl: 1, value: 12, cost: [{ type: "coal", amount: 500 }] },\
                { lvl: 2, value: 36, cost: [{ type: "coal", amount: 2500 }] },\
                { lvl: 3, value: 145, cost: [{ type: "coal", amount: 5000 }] },\
                { lvl: 4, value: 442 },\
              ]\
            },\
          ],\
          crystal_shop: [\
            {\
              type: "obsidian_max_up",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "compressed_overworld_crystal", amount: 1 }] },\
                { lvl: 1, value: 2, cost: [{ type: "compressed_overworld_crystal", amount: 2 }] },\
                { lvl: 2, value: 4, cost: [{ type: "compressed_overworld_crystal", amount: 8 }] },\
                { lvl: 3, value: 8, cost: [{ type: "compressed_overworld_crystal", amount: 64 }] },\
                { lvl: 4, value: 16 },\
              ]\
            },\
            {\
              type: "dig_speed_up",\
              costs: [\
                { lvl: 0, value: 0, cost: [{ type: "compressed_overworld_crystal", amount: 1 }] },\
                { lvl: 1, value: 0.5, cost: [{ type: "compressed_overworld_crystal", amount: 4 }] },\
                { lvl: 2, value: 1, cost: [{ type: "compressed_overworld_crystal", amount: 8 }] },\
                { lvl: 3, value: 1.5, cost: [{ type: "compressed_overworld_crystal", amount: 16 }] },\
                { lvl: 4, value: 2, cost: [{ type: "compressed_overworld_crystal", amount: 32 }] },\
                { lvl: 5, value: 2.5, cost: [{ type: "compressed_overworld_crystal", amount: 64 }] },\
                { lvl: 6, value: 3 },\
              ]\
            },\
            {\
              type: "drill_speed_up",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "compressed_overworld_crystal", amount: 1 }] },\
                { lvl: 1, value: 2.5, cost: [{ type: "compressed_overworld_crystal", amount: 4 }] },\
                { lvl: 2, value: 5, cost: [{ type: "compressed_overworld_crystal", amount: 8 }] },\
                { lvl: 3, value: 10, cost: [{ type: "compressed_overworld_crystal", amount: 16 }] },\
                { lvl: 4, value: 25, cost: [{ type: "compressed_overworld_crystal", amount: 32 }] },\
                { lvl: 5, value: 50 },\
              ]\
            },\
            {\
              type: "cave_material_regen_speed_up",\
              costs: [\
                { lvl: 0, value: 0, cost: [{ type: "compressed_overworld_crystal", amount: 2 }] },\
                { lvl: 1, value: 0.20, cost: [{ type: "compressed_overworld_crystal", amount: 12 }] },\
                { lvl: 2, value: 0.45, cost: [{ type: "compressed_overworld_crystal", amount: 48 }] },\
                { lvl: 3, value: 0.72, cost: [{ type: "compressed_overworld_crystal", amount: 192 }] },\
                { lvl: 4, value: 0.95 },\
              ]\
            },\
            {\
              type: "material_regen_upgrade_cost_down",\
              costs: [\
                { lvl: 0, value: 0, cost: [{ type: "compressed_overworld_crystal", amount: 2 }] },\
                { lvl: 1, value: 0.05, cost: [{ type: "compressed_overworld_crystal", amount: 4 }] },\
                { lvl: 2, value: 0.10, cost: [{ type: "compressed_overworld_crystal", amount: 8 }] },\
                { lvl: 3, value: 0.18, cost: [{ type: "compressed_overworld_crystal", amount: 16 }] },\
                { lvl: 4, value: 0.28, cost: [{ type: "compressed_overworld_crystal", amount: 32 }] },\
                { lvl: 5, value: 0.40, cost: [{ type: "compressed_overworld_crystal", amount: 64 }] },\
                { lvl: 6, value: 0.55, cost: [{ type: "compressed_overworld_crystal", amount: 128 }] },\
                { lvl: 7, value: 0.70 },\
              ]\
            },\
            {\
              type: "material_shop_cost_down",\
              costs: [\
                { lvl: 0, value: 0, cost: [{ type: "compressed_overworld_crystal", amount: 2 }] },\
                { lvl: 1, value: 0.12, cost: [{ type: "compressed_overworld_crystal", amount: 12 }] },\
                { lvl: 2, value: 0.25, cost: [{ type: "compressed_overworld_crystal", amount: 24 }] },\
                { lvl: 3, value: 0.37, cost: [{ type: "compressed_overworld_crystal", amount: 48 }] },\
                { lvl: 4, value: 0.50, cost: [{ type: "compressed_overworld_crystal", amount: 96 }] },\
                { lvl: 5, value: 0.75 },\
              ]\
            },\
            {\
              type: "compressed_overworld_crystal_multiple",\
              costs: [\
                { lvl: 0, value: 1, cost: [{ type: "compressed_overworld_crystal", amount: 2 }] },\
                { lvl: 1, value: 1.5, cost: [{ type: "compressed_overworld_crystal", amount: 15 }] },\
                { lvl: 2, value: 2, cost: [{ type: "compressed_overworld_crystal", amount: 40 }] },\
                { lvl: 3, value: 4, cost: [{ type: "compressed_overworld_crystal", amount: 100 }] },\
                { lvl: 4, value: 8 },\
              ]\
            },\
          ],\
        },\
      },\
      nether: {\
        workshop: [\
          { id: "1_1", tier: 1, previous_tier: 0, cost: 600 },\
          { id: "2_1", tier: 2, previous_tier: 1, cost: 5000 },\
          { id: "2_2", tier: 2, previous_tier: 1, cost: 5000 },\
          { id: "3_1", tier: 3, previous_tier: 2, cost: 16000 },\
          { id: "4_1", tier: 4, previous_tier: 3, cost: 25000 },\
          { id: "4_2", tier: 4, previous_tier: 3, cost: 25000 },\
          { id: "5_1", tier: 5, previous_tier: 4, cost: 55000 },\
          { id: "6_1", tier: 6, previous_tier: 5, cost: 100000 },\
          { id: "7_1", tier: 7, previous_tier: 6, cost: 350000 },\
          { id: "8_1", tier: 8, previous_tier: 7, cost: 700000 },\
          { id: "9_1", tier: 9, previous_tier: 8, cost: 3000000 },\
          { id: "9_2", tier: 9, previous_tier: 8, cost: 3000000 },\
          { id: "10_1", tier: 10, previous_tier: 9, cost: 12000000 },\
          { id: "11_1", tier: 11, previous_tier: 10, cost: 25000000 },\
          { id: "11_2", tier: 11, previous_tier: 10, cost: 25000000 },\
          { id: "12_1", tier: 12, previous_tier: 11, cost: 50000000 },\
        ],\
        piglin_head: {\
          piglin_shop: [\
            { lvl: 0, cost: [{ type: "gold", amount: 10 }] },\
            { lvl: 1, cost: [{ type: "gold", amount: 25 }] },\
            { lvl: 2, cost: [{ type: "gold", amount: 40 }] },\
            { lvl: 3, cost: [{ type: "gold", amount: 80 }] },\
            { lvl: 4, cost: [{ type: "gold", amount: 150 }] },\
            { lvl: 5, cost: [{ type: "gold", amount: 250 }] },\
            { lvl: 6, cost: [{ type: "gold", amount: 400 }] },\
            { lvl: 7, cost: [{ type: "gold", amount: 600 }] },\
            { lvl: 8 },\
          ],\
          speed_up: [\
            { lvl: 0, value: 60, cost: [{ type: "blaze_powder", amount: 15 }] },\
            { lvl: 1, value: 40, cost: [{ type: "blaze_powder", amount: 35 }] },\
            { lvl: 2, value: 20, cost: [{ type: "blaze_powder", amount: 60 }] },\
            { lvl: 3, value: 10, cost: [{ type: "blaze_powder", amount: 120 }] },\
            { lvl: 4, value: 5, cost: [{ type: "blaze_powder", amount: 200 }] },\
            { lvl: 5, value: 2, cost: [{ type: "blaze_powder", amount: 300 }] },\
            { lvl: 6, value: 1 },\
          ],\
        },\
      },\
    },\
    tool: [\
      {\
        lvl: 0,\
        cost: [{ type: "wood", amount: 5 }],\
        components: {\
          custom_name: "§f낡은 막대기",\
          lore: [\
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
        cost: [{ type: "quartz", amount: 5 }],\
        components: {\
          custom_name: "§f이건 진짜로 대단한 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
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
        cost: [{ type: "quartz", amount: 25 }],\
        components: {\
          custom_name: "§f영혼이 스민 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
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
        cost: [{ type: "quartz", amount: 35 }, { type: "gold", amount: 5 }],\
        components: {\
          custom_name: "§f영혼에 잠식된 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
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
        cost: [{ type: "quartz", amount: 80 }, { type: "gold", amount: 15 }],\
        components: {\
          custom_name: "§f영혼에 잠식된 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
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
        cost: [{ type: "quartz", amount: 300 }],\
        components: {\
          custom_name: "§f영혼과 동화된 곡괭이",\
          item_model: "diamond_pickaxe",\
          lore: [\
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
      diamond: {item:"deepslate_diamond_block",regen:[{lvl:0,value:1200,cost:[{type:"gold",amount:500}]},{lvl:1,value:900,cost:[{type:"emerald",amount:500}]},{lvl:2,value:600,cost:[{type:"lapis",amount:1000}]},{lvl:3,value:350,cost:[{type:"information",amount:100}]},{lvl:4,value:160}]},\
      emerald: {item:"deepslate_emerald_ore",unlock_cost:[{type:"iron",amount:300},{type:"copper",amount:300}],regen:[{lvl:0,value:800,cost:[{type:"gold",amount:300}]},{lvl:1,value:600,cost:[{type:"lapis",amount:300}]},{lvl:2,value:400,cost:[{type:"diamond",amount:75}]},{lvl:3,value:240,cost:[{type:"information",amount:50}]},{lvl:4,value:100}]},\
      lapis: {item:"deepslate_lapis_ore",unlock_cost:[{type:"emerald",amount:100}],regen:[{lvl:0,value:500,cost:[{type:"emerald",amount:100}]},{lvl:1,value:360,cost:[{type:"gold",amount:400}]},{lvl:2,value:240,cost:[{type:"diamond",amount:100}]},{lvl:3,value:140,cost:[{type:"information",amount:75}]},{lvl:4,value:60}]},\
      heat: {item:"fire_charge"},\
      cold: {item:"snowball"},\
      information: {item:"amethyst_shard"},\
      time: {item:"echo_shard"},\
      world_eye: {item:"ender_eye"}\
    },\
  }\
}
