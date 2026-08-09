# load
# 상수 선언

data remove storage data const
data merge storage data {\
  const:{\
    trial: {\
      exit: [\
        { id: 1, cost: [{ type: "trial_crystal", amount: 1 }] },\
        { id: 2, cost: [{ type: "spirit", amount: 1 }] },\
        { id: 3, cost: [{ type: "trial_crystal", amount: 1 }, { type: "spirit", amount: 1 }] },\
        { id: 4, cost: [{ type: "compressed_overworld_crystal", amount: 1 }, { type: "compressed_nether_crystal", amount: 1 }] },\
      ]\
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
              "minecraft:oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 1.0f }\
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
              "minecraft:oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 1.5f }\
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
              "minecraft:oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 3.0f }\
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
              "minecraft:oak_log",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 6.0f }\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 12.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 0.75f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 1.5f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 3.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 0.9f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 3.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 1.5f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 9.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 3.0f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 9.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 15.0f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 30.0f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
              "minecraft:nether_quartz_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 50.0f },\
              { blocks: "minecraft:nether_quartz_ore", correct_for_drops: 1b, speed: 0.5625f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
              "minecraft:nether_quartz_ore",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 100.0f },\
              { blocks: "minecraft:nether_quartz_ore", correct_for_drops: 1b, speed: 0.75f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
              "minecraft:nether_quartz_ore",\
              "minecraft:gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 300.0f },\
              { blocks: "minecraft:nether_quartz_ore", correct_for_drops: 1b, speed: 1.5f },\
              { blocks: "minecraft:gilded_blackstone", correct_for_drops: 1b, speed: 1.5f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
              "minecraft:nether_quartz_ore",\
              "minecraft:gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 1500.0f },\
              { blocks: "minecraft:nether_quartz_ore", correct_for_drops: 1b, speed: 3f },\
              { blocks: "minecraft:gilded_blackstone", correct_for_drops: 1b, speed: 2.25f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
              "minecraft:nether_quartz_ore",\
              "minecraft:gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 1500.0f },\
              { blocks: "minecraft:nether_quartz_ore", correct_for_drops: 1b, speed: 90f },\
              { blocks: "minecraft:gilded_blackstone", correct_for_drops: 1b, speed: 4.5f },\
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
              "minecraft:oak_log",\
              "minecraft:stone",\
              "minecraft:coal_ore",\
              "minecraft:iron_ore",\
              "minecraft:obsidian",\
              "minecraft:nether_quartz_ore",\
              "minecraft:gilded_blackstone",\
            ]\
          },\
          tool: {\
            rules: [\
              { blocks: "minecraft:oak_log", correct_for_drops: 1b, speed: 60.0f },\
              { blocks: "minecraft:stone", correct_for_drops: 1b, speed: 45.0f },\
              { blocks: "minecraft:coal_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:iron_ore", correct_for_drops: 1b, speed: 90.0f },\
              { blocks: "minecraft:obsidian", correct_for_drops: 1b, speed: 1500.0f },\
              { blocks: "minecraft:nether_quartz_ore", correct_for_drops: 1b, speed: 90f },\
              { blocks: "minecraft:gilded_blackstone", correct_for_drops: 1b, speed: 90f },\
            ]\
          },\
        }\
      },\
    ],\
    product: {\
      wood: {\
        regen:[\
          { lvl: 0, value: 40, cost: [{ type: "stone", amount: 3 }] },\
          { lvl: 1, value: 20, cost: [{ type: "stone", amount: 6 }] },\
          { lvl: 2, value: 10, cost: [{ type: "stone", amount: 20 }] },\
          { lvl: 3, value: 4, cost: [{ type: "stone", amount: 100 }] },\
          { lvl: 4, value: 1 },\
        ],\
      },\
      stone: {\
        unlock_cost: [{ type: "wood", amount: 30 }],\
        regen:[\
          { lvl: 0, value: 3, cost: [{ type: "stone", amount: 400 }] },\
          { lvl: 1, value: 2, cost: [{ type: "stone", amount: 25000 }] },\
          { lvl: 2, value: 1 },\
        ],\
      },\
      mob: {\
        unlock_cost: [{ type: "wood", amount: 50 }],\
        regen:[\
          { lvl: 0, value: 120, cost: [{ type: "stone", amount: 50 }] },\
          { lvl: 1, value: 80, cost: [{ type: "stone", amount: 250 }] },\
          { lvl: 2, value: 50, cost: [{ type: "stone", amount: 1250 }] },\
          { lvl: 3, value: 20, cost: [{ type: "stone", amount: 5000 }] },\
          { lvl: 4, value: 5 },\
        ],\
      },\
      gold: {\
        unlock_cost: [{ type: "quartz", amount: 10 }],\
        regen:[\
          { lvl: 0, value: 60, cost: [{ type: "stone", amount: 2000 }]},\
          { lvl: 1, value: 45, cost: [{ type: "stone", amount: 6000 }]},\
          { lvl: 2, value: 30, cost: [{ type: "stone", amount: 10000 }]},\
          { lvl: 3, value: 18, cost: [{ type: "stone", amount: 18000 }]},\
          { lvl: 4, value: 6, cost: [{ type: "stone", amount: 30000 }]},\
          { lvl: 5, value: 4, cost: [{ type: "stone", amount: 50000 }]},\
          { lvl: 6, value: 2, cost: [{ type: "stone", amount: 100000 }]},\
          { lvl: 7, value: 1 },\
        ],\
      },\
      blaze: {\
        unlock_cost: [{ type: "quartz", amount: 5 }],\
        drop:[\
          { lvl: 0, value: 1, cost: [{ type: "wood", amount: 30000 }, { type: "quartz", amount: 3 } ] },\
          { lvl: 1, value: 2, cost: [{ type: "wood", amount: 60000 }, { type: "quartz", amount: 12 } ] },\
          { lvl: 2, value: 4, cost: [{ type: "wood", amount: 100000 }, { type: "quartz", amount: 28 } ] },\
          { lvl: 3, value: 8, cost: [{ type: "wood", amount: 150000 }, { type: "quartz", amount: 45 } ] },\
          { lvl: 4, value: 16, cost: [{ type: "wood", amount: 240000 }, { type: "quartz", amount: 82 } ] },\
          { lvl: 5, value: 32, cost: [{ type: "wood", amount: 400000 }, { type: "quartz", amount: 210 } ] },\
          { lvl: 6, value: 64, cost: [{ type: "wood", amount: 750000 }, { type: "quartz", amount: 450 } ] },\
          { lvl: 7, value: 128 },\
        ],\
      },\
    },\
  }\
}
