# load
# Tool constants

data modify storage data const.tool set value [\
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
        cost: [{ type: "wood", amount: 5 }],\
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
        cost: [{ type: "wood", amount: 10 }],\
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
        cost: [{ type: "wood", amount: 15 }, { type: "stone", amount: 3 }],\
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
        cost: [{ type: "wood", amount: 30 }, { type: "stone", amount: 3 }],\
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
              { blocks: "stone", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "coal_ore", correct_for_drops: 1b, speed: 0.75f },\
              { blocks: "copper_ore", correct_for_drops: 1b, speed: 0.5625f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.15625f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 0.875f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 5,\
        cost: [{ type: "wood", amount: 25 }, { type: "stone", amount: 6 }, { type: "copper", amount: 3 }],\
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
            "§6* §d특수 자원§7을 파괴하기까지 §f4§7초 소요됨",\
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
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.1875f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 1.05f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 6,\
        cost: [{ type: "wood", amount: 60 }, { type: "copper", amount: 3 }],\
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
            "§6* §f철§7을 파괴하기까지 §f8§7초 소요됨",\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f6.4§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f8§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f3.2§7초 소요됨",\
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
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 1.171875f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 1.171875f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.234375f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 1.3125f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 7,\
        cost: [{ type: "wood", amount: 150 }, { type: "iron", amount: 10 }],\
        components: {\
          custom_name: "§f좋은 구리 곡괭이",\
          item_model: "copper_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7 즉시 파괴 가능",\
            "§6* §7돌§7을 파괴하기까지 §f1§7초 소요됨",\
            "§6* §8석탄§7을 파괴하기까지 §f2§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f4§7초 소요됨",\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f3.2§7초 소요됨"],\
            "§6* §f철§7을 파괴하기까지 §f7§7초 소요됨",\
            "§6* §a에메랄드§7를 파괴하기까지 §f7§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f8§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f2.4§7초 소요됨",\
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
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 2.34375f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 2.34375f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.3125f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 1.75f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 8,\
        cost: [{ type: "wood", amount: 300 }, { type: "iron", amount: 25 }],\
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
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f3.2§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f6§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f7§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f2.4§7초 소요됨",\
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
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 2.34375f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 2.34375f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.3125f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 1.75f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 9,\
        cost: [{ type: "wood", amount: 1200 }, { type: "iron", amount: 150 }],\
        components: {\
          custom_name: "§f좋은 철 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7 즉시 파괴 가능",\
            "§6* §8석탄§7을 파괴하기까지 §f1§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f2§7초 소요됨",\
            "§6* §f철§7을 파괴하기까지 §f4§7초 소요됨",\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7을 파괴하기까지 §f2.4§7초 소요됨"],\
            ["§6* ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f3.2§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f4§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f6§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f1.6§7초 소요됨",\
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
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 3.125f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 2.34375f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.46875f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 2.625f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 10,\
        cost: [{ type: "wood", amount: 6000 }, { type: "iron", amount: 500 }, { type: "gold", amount: 5 }],\
        components: {\
          custom_name: "§f훌륭한 철 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7 즉시 파괴 가능",\
            "§6* §8석탄§7을 파괴하기까지 §f1§7초 소요됨",\
            "§6* §6구리§7를 파괴하기까지 §f2§7초 소요됨",\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7을 파괴하기까지 §f1.6§7초 소요됨"],\
            "§6* §f철§7을 파괴하기까지 §f3§7초 소요됨",\
            ["§6* ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f2.4§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f3§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f4§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f1.6§7초 소요됨",\
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
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 4.6875f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 3.125f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.46875f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 2.625f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 11,\
        cost: [{ type: "wood", amount: 15000 }, { type: "iron", amount: 1000 }, { type: "gold", amount: 15 }, { type: "diamond", amount: 5 }],\
        components: {\
          custom_name: "§f신성 철 곡괭이",\
          item_model: "iron_pickaxe",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능",\
            "§6* §6구리§7를 파괴하기까지 §f1§7초 소요됨",\
            "§6* §f철§7을 파괴하기까지 §f2§7초 소요됨",\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f1.6§7초 소요됨"],\
            "§6* §a에메랄드§7를 파괴하기까지 §f2§7초 소요됨",\
            "§6* §9청금석§7을 파괴하기까지 §f3§7초 소요됨",\
            "§6* §d특수 자원§7을 파괴하기까지 §f0.8§7초 소요됨",\
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
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 4.6875f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 4.6875f },\
              { blocks: "magma_block", correct_for_drops: 1b, speed: 0.9375f },\
              { blocks: "blue_ice", correct_for_drops: 1b, speed: 5.25f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 12,\
        cost: [{ type: "wood", amount: 30000 }, { type: "iron", amount: 2000 }, { type: "gold", amount: 30 }, { type: "heat", amount: 5 }, { type: "cold", amount: 5 }],\
        components: {\
          custom_name: "§f수동 드릴",\
          item_model: "netherite_spear",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §e나무§7, §7돌§7, §8석탄§7, §6구리§7 즉시 파괴 가능",\
            "§6* §f철§7을 파괴하기까지 §f1§7초 소요됨",\
            ["§6* ", { text: "금", color: "gold", shadow_color: -7710208, italic:false }, "§7, ", { text: "다이아몬드", color: "aqua", shadow_color: -16741750, italic:false }, "§7를 파괴하기까지 §f0.8§7초 소요됨"],\
            {text:"도구가 보석을 채굴하기에는 섬세하지 못한 것 같다...",color:"dark_gray",italic:true},\
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
              { blocks: "raw_gold_block", correct_for_drops: 1b, speed: 9.375f },\
              { blocks: "diamond_block", correct_for_drops: 1b, speed: 9.375f },\
              { blocks: "yellow_glazed_terracotta", correct_for_drops: 1b, speed: 0.2625f },\
              { blocks: "blue_glazed_terracotta", correct_for_drops: 1b, speed: 0.2625f },\
            ]\
          },\
        }\
      },\
      {\
        lvl: 13,\
        cost: [{ type: "wood", amount: 60000 }, { type: "iron", amount: 4000 }, { type: "diamond", amount: 30 }, { type: "heat", amount: 10 }, { type: "cold", amount: 10 }],\
        components: {\
          custom_name: "§f전동 드릴",\
          item_model: "mace",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f일반 자원§7 즉시 파괴 가능",\
            {text:"도구가 보석을 채굴하기에는 섬세하지 못한 것 같다...",color:"dark_gray",italic:true},\
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
        cost: [{ type: "wood", amount: 120000 }, { type: "iron", amount: 8000 }, { type: "diamond", amount: 80 }, { type: "heat", amount: 20 }, { type: "cold", amount: 20 }],\
        components: {\
          custom_name: "§f굴착기",\
          item_model: "mace",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f일반 자원§7 즉시 파괴 가능",\
            {text:"도구가 보석을 채굴하기에는 섬세하지 못한 것 같다...",color:"dark_gray",italic:true},\
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
        cost: [{ type: "wood", amount: 240000 }, { type: "gold", amount: 400 }, { type: "diamond", amount: 200 }, { type: "information", amount: 32 }, { type: "time", amount: 8 }],\
        components: {\
          custom_name: "§f중력 채굴기",\
          item_model: "ender_pearl",\
          lore: [\
            "§4도구 - 파괴",\
            "",\
            "§6* §f일반 자원§7 즉시 파괴 가능",\
            {text:"도구가 보석을 채굴하기에는 섬세하지 못한 것 같다...",color:"dark_gray",italic:true},\
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
]

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

# Active tool balance values
# -----------------------------------------------------------------------------
# 초반 채굴 도구 밸런스 상수
# -----------------------------------------------------------------------------
# 돌/석탄은 같은 채굴 시간, 구리/철은 같은 채굴 시간이 되도록 맞춘다.
# 노랑/파랑은 숨김용 append(Lv6~11) 및 본문 규칙(Lv12+)에 별도로 존재하며 이번 변경 대상 자원과 중복되지 않는다.

# Lv4 돌 곡괭이: 돌/석탄 3초, 구리 6초
data modify storage data const.tool[{lvl:4}].components.tool.rules[{blocks:"stone"}].speed set value 0.75f
data modify storage data const.tool[{lvl:4}].components.tool.rules[{blocks:"coal_ore"}].speed set value 1.5f
data modify storage data const.tool[{lvl:4}].components.tool.rules[{blocks:"copper_ore"}].speed set value 0.75f
data modify storage data const.tool[{lvl:4}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7를 파괴하기까지 §f1§7초 소요됨","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f3§7초 소요됨","§6* §6구리§7를 파괴하기까지 §f6§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f5§7초 소요됨"]

# Lv5 좋은 돌 곡괭이: 돌/석탄 2초, 구리 5초
data modify storage data const.tool[{lvl:5}].components.tool.rules[{blocks:"stone"}].speed set value 1.125f
data modify storage data const.tool[{lvl:5}].components.tool.rules[{blocks:"coal_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:5}].components.tool.rules[{blocks:"copper_ore"}].speed set value 0.9f
data modify storage data const.tool[{lvl:5}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7를 파괴하기까지 §f1§7초 소요됨","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f2§7초 소요됨","§6* §6구리§7를 파괴하기까지 §f5§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f4§7초 소요됨"]

# Lv6 구리 곡괭이: 돌/석탄 2초, 구리/철 4초
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"stone"}].speed set value 1.125f
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"coal_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"copper_ore"}].speed set value 1.125f
data modify storage data const.tool[{lvl:6}].components.tool.rules[{blocks:"iron_ore"}].speed set value 1.125f
data modify storage data const.tool[{lvl:6}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7 즉시 파괴 가능","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f2§7초 소요됨","§6* §6구리§7, §f철§7을 파괴하기까지 §f4§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f6.4§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f8§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f3.2§7초 소요됨"]

# Lv7 좋은 구리 곡괭이: 돌/석탄 1초, 구리/철 3초
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"stone"}].speed set value 2.25f
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"coal_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"copper_ore"}].speed set value 1.5f
data modify storage data const.tool[{lvl:7}].components.tool.rules[{blocks:"iron_ore"}].speed set value 1.5f
data modify storage data const.tool[{lvl:7}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7 즉시 파괴 가능","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f1§7초 소요됨","§6* §6구리§7, §f철§7을 파괴하기까지 §f3§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f3.2§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f7§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f8§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f2.4§7초 소요됨"]

# Lv8 철 곡괭이: 돌/석탄 1초, 구리/철 2초
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"stone"}].speed set value 2.25f
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"coal_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"copper_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:8}].components.tool.rules[{blocks:"iron_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:8}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7 즉시 파괴 가능","§6* §7돌§7, §8석탄§7을 파괴하기까지 §f1§7초 소요됨","§6* §6구리§7, §f철§7을 파괴하기까지 §f2§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f3.2§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f6§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f7§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f2.4§7초 소요됨"]

# Lv9 좋은 철 곡괭이: 돌/석탄 즉시, 구리/철 2초
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"copper_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:9}].components.tool.rules[{blocks:"iron_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:9}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능","§6* §6구리§7, §f철§7을 파괴하기까지 §f2§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7을 파괴하기까지 §f2.4§7초 소요됨"],["§6* ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f3.2§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f4§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f6§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f1.6§7초 소요됨"]

# Lv10 훌륭한 철 곡괭이: 돌/석탄 즉시, 구리/철 2초
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"copper_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:10}].components.tool.rules[{blocks:"iron_ore"}].speed set value 2.25f
data modify storage data const.tool[{lvl:10}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능","§6* §6구리§7, §f철§7을 파괴하기까지 §f2§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7을 파괴하기까지 §f1.6§7초 소요됨"],["§6* ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f2.4§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f3§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f4§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f1.6§7초 소요됨"]

# Lv11 신성 철 곡괭이: 돌/석탄 즉시, 구리/철 1초
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"copper_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:11}].components.tool.rules[{blocks:"iron_ore"}].speed set value 4.5f
data modify storage data const.tool[{lvl:11}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7 즉시 파괴 가능","§6* §6구리§7, §f철§7을 파괴하기까지 §f1§7초 소요됨",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f1.6§7초 소요됨"],"§6* §a에메랄드§7를 파괴하기까지 §f2§7초 소요됨","§6* §9청금석§7을 파괴하기까지 §f3§7초 소요됨","§6* §d특수 자원§7을 파괴하기까지 §f0.8§7초 소요됨"]

# Lv12 수동 드릴: 돌/석탄/구리/철 즉시
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"stone"}].speed set value 45.0f
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"coal_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"copper_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:12}].components.tool.rules[{blocks:"iron_ore"}].speed set value 90.0f
data modify storage data const.tool[{lvl:12}].components.lore set value ["§4도구 - 파괴","","§6* §e나무§7, §7돌§7, §8석탄§7, §6구리§7, §f철§7 즉시 파괴 가능",["§6* ",{text:"금",color:"gold",shadow_color:-7710208,italic:false},"§7, ",{text:"다이아몬드",color:"aqua",shadow_color:-16741750,italic:false},"§7를 파괴하기까지 §f0.8§7초 소요됨"],{text:"도구가 보석을 채굴하기에는 섬세하지 못한 것 같다...",color:"dark_gray",italic:true},"§6* §8외계 자원§7을 파괴하기까지 §f8§7초 소요됨"]

# /reload 직후 기존 도구도 새 상수/툴팁으로 교체되도록 한다.
scoreboard players set #tool_created_lvl var -1
