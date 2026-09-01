# load
# Resource constants

data modify storage data const.resource set value {\
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
        unlock_cost:[{type:"wood",amount:20}],\
        regen:[\
          {lvl:0,value:3,cost:[{type:"wood",amount:80},{type:"stone",amount:200}]},\
          {lvl:1,value:2,cost:[{type:"wood",amount:10000},{type:"stone",amount:5000}]},\
          {lvl:2,value:1,cost:[{type:"wood",amount:50000},{type:"stone",amount:25000}]},\
          {lvl:3,value:0,cost:[{type:"wood",amount:200000},{type:"stone",amount:100000}]},\
          {lvl:4,value:0,cost:[{type:"stone",amount:2500000}]},\
          {lvl:5,value:0}\
        ]\
      },\
      coal: {item:"deepslate_coal_ore",\
        unlock_cost:[{type:"wood",amount:80},{type:"stone",amount:3}],\
        regen:[\
          {lvl:0,value:75,cost:[{type:"wood",amount:120},{type:"copper",amount:10}]},\
          {lvl:1,value:60,cost:[{type:"iron",amount:50}]},\
          {lvl:2,value:25,cost:[{type:"gold",amount:100}]},\
          {lvl:3,value:6,cost:[{type:"diamond",amount:25}]},\
          {lvl:4,value:1}\
        ]\
      },\
      copper: {item:"deepslate_copper_ore",\
        unlock_cost:[{type:"wood",amount:120},{type:"coal",amount:6}],\
        regen:[\
          {lvl:0,value:120,cost:[{type:"wood",amount:160},{type:"stone",amount:50}]},\
          {lvl:1,value:100,cost:[{type:"coal",amount:100}]},\
          {lvl:2,value:50,cost:[{type:"iron",amount:150}]},\
          {lvl:3,value:15,cost:[{type:"gold",amount:100}]},\
          {lvl:4,value:3}\
        ]\
      },\
      iron: {item:"deepslate_iron_ore",\
        unlock_cost:[{type:"wood",amount:180},{type:"coal",amount:15},{type:"copper",amount:15}],\
        regen:[\
          {lvl:0,value:225,cost:[{type:"wood",amount:240},{type:"copper",amount:100}]},\
          {lvl:1,value:180,cost:[{type:"coal",amount:300}]},\
          {lvl:2,value:75,cost:[{type:"gold",amount:250}]},\
          {lvl:3,value:20,cost:[{type:"diamond",amount:50}]},\
          {lvl:4,value:5}\
        ]\
      },\
      gold: {item:"deepslate_gold_ore",\
        regen:[\
          {lvl:0,value:100,cost:[{type:"wood",amount:300},{type:"iron",amount:250}]},\
          {lvl:1,value:60,cost:[{type:"coal",amount:1000}]},\
          {lvl:2,value:25,cost:[{type:"emerald",amount:250}]},\
          {lvl:3,value:6,cost:[{type:"diamond",amount:100}]},\
          {lvl:4,value:1}\
        ]\
      },\
      diamond: {item:"deepslate_diamond_ore",\
        regen:[\
          {lvl:0,value:160,cost:[{type:"wood",amount:400},{type:"gold",amount:250}]},\
          {lvl:1,value:100,cost:[{type:"emerald",amount:500}]},\
          {lvl:2,value:50,cost:[{type:"lapis",amount:1000}]},\
          {lvl:3,value:15,cost:[{type:"information",amount:100}]},\
          {lvl:4,value:3}\
        ]\
      },\
      emerald: {item:"deepslate_emerald_ore",\
        unlock_cost:[{type:"wood",amount:400},{type:"iron",amount:40},{type:"copper",amount:40}],\
        regen:[\
          {lvl:0,value:700},\
          {lvl:1,value:420},\
          {lvl:2,value:220},\
          {lvl:3,value:70},\
          {lvl:4,value:10}\
        ]\
      },\
      lapis: {item:"deepslate_lapis_ore",\
        unlock_cost:[{type:"wood",amount:320},{type:"copper",amount:50},{type:"coal",amount:50}],\
        regen:[\
          {lvl:0,value:600},\
          {lvl:1,value:380},\
          {lvl:2,value:180},\
          {lvl:3,value:60},\
          {lvl:4,value:10}\
        ]\
      },\
      heat: {item:"magma_block",\
        regen:[{lvl:0,value:160}]\
      },\
      cold: {item:"blue_ice",\
        regen:[{lvl:0,value:160}]\
      },\
      information: {item:"amethyst_shard"},\
      time: {item:"echo_shard"},\
      world_eye: {item:"ender_eye"},\
      yellow: {item:"yellow_glazed_terracotta",\
        regen:[\
          {lvl:0,value:1200,cost:[{type:"information",amount:4}]},\
          {lvl:1,value:800,cost:[{type:"information",amount:8},{type:"time",amount:1}]},\
          {lvl:2,value:500,cost:[{type:"information",amount:16},{type:"time",amount:3}]},\
          {lvl:3,value:300,cost:[{type:"information",amount:32},{type:"time",amount:6},{type:"world_eye",amount:1}]},\
          {lvl:4,value:160}\
        ]\
      },\
      blue: {item:"blue_glazed_terracotta",\
        regen:[\
          {lvl:0,value:1400,cost:[{type:"information",amount:4}]},\
          {lvl:1,value:900,cost:[{type:"information",amount:8},{type:"time",amount:1}]},\
          {lvl:2,value:600,cost:[{type:"information",amount:16},{type:"time",amount:3}]},\
          {lvl:3,value:350,cost:[{type:"information",amount:32},{type:"time",amount:6},{type:"world_eye",amount:1}]},\
          {lvl:4,value:180}\
        ]\
      }\
}

# -----------------------------------------------------------------------------
# 로드 시 기존 세이브 보정 및 도구 규칙 확장
# -----------------------------------------------------------------------------
execute unless score #yellow material = #yellow material run scoreboard players set #yellow material 0
execute unless score #blue material = #blue material run scoreboard players set #blue material 0
execute unless score #yellow_regen_lvl upgrade = #yellow_regen_lvl upgrade run scoreboard players set #yellow_regen_lvl upgrade 0
execute unless score #blue_regen_lvl upgrade = #blue_regen_lvl upgrade run scoreboard players set #blue_regen_lvl upgrade 0

# Active resource balance values
# -----------------------------------------------------------------------------
# 초반 자원 밸런스 상수
# -----------------------------------------------------------------------------
# 오버월드 광산 자원 7종의 초기 재생 쿨타임은 최대 500틱으로 제한한다.

# 돌
data modify storage data const.resource.stone.regen[{lvl:0}].value set value 3
data modify storage data const.resource.stone.regen[{lvl:1}].value set value 2
data modify storage data const.resource.stone.regen[{lvl:0}].cost set value [{type:"stone",amount:240}]
data modify storage data const.resource.stone.regen[{lvl:1}].cost set value [{type:"wood",amount:6000},{type:"stone",amount:3000}]

# 석탄
data modify storage data const.resource.coal.regen[{lvl:0}].value set value 60
data modify storage data const.resource.coal.regen[{lvl:1}].value set value 36
data modify storage data const.resource.coal.regen[{lvl:2}].value set value 16
data modify storage data const.resource.coal.regen[{lvl:3}].value set value 4
data modify storage data const.resource.coal.regen[{lvl:0}].cost set value [{type:"copper",amount:12}]
data modify storage data const.resource.coal.regen[{lvl:1}].cost set value [{type:"copper",amount:30}]
data modify storage data const.resource.coal.regen[{lvl:2}].cost set value [{type:"iron",amount:25}]
data modify storage data const.resource.coal.regen[{lvl:3}].cost set value [{type:"copper",amount:500},{type:"iron",amount:100}]

# 구리
data modify storage data const.resource.copper.regen[{lvl:0}].value set value 100
data modify storage data const.resource.copper.regen[{lvl:1}].value set value 60
data modify storage data const.resource.copper.regen[{lvl:2}].value set value 30
data modify storage data const.resource.copper.regen[{lvl:3}].value set value 10
data modify storage data const.resource.copper.regen[{lvl:0}].cost set value [{type:"stone",amount:60}]
data modify storage data const.resource.copper.regen[{lvl:1}].cost set value [{type:"coal",amount:60}]
data modify storage data const.resource.copper.regen[{lvl:2}].cost set value [{type:"stone",amount:1000},{type:"coal",amount:200}]
data modify storage data const.resource.copper.regen[{lvl:3}].cost set value [{type:"stone",amount:2000},{type:"coal",amount:350}]

# 철
data modify storage data const.resource.iron.regen[{lvl:0}].value set value 180
data modify storage data const.resource.iron.regen[{lvl:1}].value set value 110
data modify storage data const.resource.iron.regen[{lvl:2}].value set value 45
data modify storage data const.resource.iron.regen[{lvl:3}].value set value 15
data modify storage data const.resource.iron.regen[{lvl:0}].cost set value [{type:"copper",amount:120}]
data modify storage data const.resource.iron.regen[{lvl:1}].cost set value [{type:"coal",amount:180}]
data modify storage data const.resource.iron.regen[{lvl:2}].cost set value [{type:"coal",amount:1000},{type:"copper",amount:250}]
data modify storage data const.resource.iron.regen[{lvl:3}].cost set value [{type:"gold",amount:40},{type:"diamond",amount:40}]

# 오버월드 광산 자원 초기 쿨타임 상한 보정
data modify storage data const.resource.gold.regen[{lvl:0}].value set value 100
data modify storage data const.resource.diamond.regen[{lvl:0}].value set value 160
data modify storage data const.resource.emerald.regen[{lvl:0}].value set value 490
data modify storage data const.resource.lapis.regen[{lvl:0}].value set value 420

# 에메랄드 / 청금석 해금 비용
data modify storage data const.resource.emerald.unlock_cost set value [{type:"coal",amount:100},{type:"copper",amount:50},{type:"wood",amount:300}]
data modify storage data const.resource.lapis.unlock_cost set value [{type:"iron",amount:40},{type:"copper",amount:80},{type:"wood",amount:400}]

# -----------------------------------------------------------------------------
# 오버월드 자원 비용 진행 보정
# -----------------------------------------------------------------------------
# 나무/돌 자체의 재생 및 상점 업그레이드 비용은 변경하지 않는다.
# 그 외 재생 업그레이드는 나무+돌 -> 석탄 -> 구리 순서로 상위 자원을 추가한다.

# 석탄
data modify storage data const.resource.coal.regen[{lvl:0}].cost set value [{type:"wood",amount:120},{type:"stone",amount:60}]
data modify storage data const.resource.coal.regen[{lvl:1}].cost set value [{type:"wood",amount:300},{type:"stone",amount:150}]
data modify storage data const.resource.coal.regen[{lvl:2}].cost set value [{type:"wood",amount:1000},{type:"stone",amount:500},{type:"coal",amount:25}]
data modify storage data const.resource.coal.regen[{lvl:3}].cost set value [{type:"wood",amount:2000},{type:"stone",amount:1000},{type:"coal",amount:500},{type:"copper",amount:100}]

# 구리
data modify storage data const.resource.copper.regen[{lvl:0}].cost set value [{type:"wood",amount:160},{type:"stone",amount:60}]
data modify storage data const.resource.copper.regen[{lvl:1}].cost set value [{type:"wood",amount:400},{type:"stone",amount:200}]
data modify storage data const.resource.copper.regen[{lvl:2}].cost set value [{type:"wood",amount:1000},{type:"stone",amount:500},{type:"coal",amount:200}]
data modify storage data const.resource.copper.regen[{lvl:3}].cost set value [{type:"wood",amount:2000},{type:"stone",amount:1000},{type:"coal",amount:350},{type:"copper",amount:100}]

# 철
data modify storage data const.resource.iron.regen[{lvl:0}].cost set value [{type:"wood",amount:240},{type:"stone",amount:120}]
data modify storage data const.resource.iron.regen[{lvl:1}].cost set value [{type:"wood",amount:600},{type:"stone",amount:300}]
data modify storage data const.resource.iron.regen[{lvl:2}].cost set value [{type:"wood",amount:2000},{type:"stone",amount:1000},{type:"coal",amount:250}]
data modify storage data const.resource.iron.regen[{lvl:3}].cost set value [{type:"wood",amount:4000},{type:"stone",amount:2000},{type:"coal",amount:1000},{type:"copper",amount:250}]

# 금
data modify storage data const.resource.gold.regen[{lvl:0}].cost set value [{type:"wood",amount:300},{type:"stone",amount:150}]
data modify storage data const.resource.gold.regen[{lvl:1}].cost set value [{type:"wood",amount:1000},{type:"stone",amount:500}]
data modify storage data const.resource.gold.regen[{lvl:2}].cost set value [{type:"wood",amount:3000},{type:"stone",amount:1500},{type:"coal",amount:500}]
data modify storage data const.resource.gold.regen[{lvl:3}].cost set value [{type:"wood",amount:6000},{type:"stone",amount:3000},{type:"coal",amount:1000},{type:"copper",amount:500}]

# 다이아몬드
data modify storage data const.resource.diamond.regen[{lvl:0}].cost set value [{type:"wood",amount:400},{type:"stone",amount:200}]
data modify storage data const.resource.diamond.regen[{lvl:1}].cost set value [{type:"wood",amount:1500},{type:"stone",amount:750}]
data modify storage data const.resource.diamond.regen[{lvl:2}].cost set value [{type:"wood",amount:4000},{type:"stone",amount:2000},{type:"coal",amount:750}]
data modify storage data const.resource.diamond.regen[{lvl:3}].cost set value [{type:"wood",amount:8000},{type:"stone",amount:4000},{type:"coal",amount:1500},{type:"copper",amount:750}]
