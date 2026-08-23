# 마법 연구소 다음 연구 단계/비용 준비
execute unless score #alchemy_lab_level upgrade = #alchemy_lab_level upgrade run scoreboard players set #alchemy_lab_level upgrade 0
scoreboard players operation #alchemy_lab_next tmp = #alchemy_lab_level upgrade
scoreboard players add #alchemy_lab_next tmp 1

data remove storage data tmp.cost
data remove storage data tmp.alchemy_lab.next_effect
data remove storage data tmp.alchemy_lab.lock
scoreboard players set #alchemy_lab_available tmp 1

# 비용: 청금석 중심, 후반부에 정보/시간 추가
execute if score #alchemy_lab_next tmp matches 1 run data modify storage data tmp.cost set value [{type:"lapis",amount:100},{type:"emerald",amount:10}]
execute if score #alchemy_lab_next tmp matches 2 run data modify storage data tmp.cost set value [{type:"lapis",amount:250},{type:"emerald",amount:25}]
execute if score #alchemy_lab_next tmp matches 3 run data modify storage data tmp.cost set value [{type:"lapis",amount:500},{type:"emerald",amount:50}]
execute if score #alchemy_lab_next tmp matches 4 run data modify storage data tmp.cost set value [{type:"lapis",amount:1000},{type:"gold",amount:10}]
execute if score #alchemy_lab_next tmp matches 5 run data modify storage data tmp.cost set value [{type:"lapis",amount:2000},{type:"diamond",amount:5}]
execute if score #alchemy_lab_next tmp matches 6 run data modify storage data tmp.cost set value [{type:"lapis",amount:4000},{type:"gold",amount:25}]
execute if score #alchemy_lab_next tmp matches 7 run data modify storage data tmp.cost set value [{type:"lapis",amount:8000},{type:"diamond",amount:10}]
execute if score #alchemy_lab_next tmp matches 8 run data modify storage data tmp.cost set value [{type:"lapis",amount:16000},{type:"information",amount:4}]
execute if score #alchemy_lab_next tmp matches 9 run data modify storage data tmp.cost set value [{type:"lapis",amount:32000},{type:"information",amount:8}]
execute if score #alchemy_lab_next tmp matches 10 run data modify storage data tmp.cost set value [{type:"lapis",amount:64000},{type:"information",amount:16}]
execute if score #alchemy_lab_next tmp matches 11 run data modify storage data tmp.cost set value [{type:"lapis",amount:125000},{type:"information",amount:24},{type:"time",amount:2}]
execute if score #alchemy_lab_next tmp matches 12 run data modify storage data tmp.cost set value [{type:"lapis",amount:250000},{type:"information",amount:32},{type:"time",amount:4}]
execute if score #alchemy_lab_next tmp matches 13 run data modify storage data tmp.cost set value [{type:"lapis",amount:500000},{type:"information",amount:40},{type:"time",amount:8}]
execute if score #alchemy_lab_next tmp matches 14 run data modify storage data tmp.cost set value [{type:"lapis",amount:1000000},{type:"information",amount:48},{type:"time",amount:12}]
execute if score #alchemy_lab_next tmp matches 15 run data modify storage data tmp.cost set value [{type:"lapis",amount:2000000},{type:"information",amount:64},{type:"time",amount:16}]

# 발전과제 보상의 상점 비용 50% 할인을 연구 비용에도 적용합니다.
# 정보/시간 같은 메타 자원은 기존 할인 규칙대로 제외됩니다.
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount

# 다음 단계에서 증가하는 효과
execute if score #alchemy_lab_next tmp matches 1..5 run data modify storage data tmp.alchemy_lab.next_effect set value {text:"에메랄드·청금석 -10%p / 금·다이아몬드 -4%p",color:"aqua"}
execute if score #alchemy_lab_next tmp matches 6..10 run data modify storage data tmp.alchemy_lab.next_effect set value {text:"금·다이아몬드 -4%p / 열기·냉기 -3%p",color:"aqua"}
execute if score #alchemy_lab_next tmp matches 11..15 run data modify storage data tmp.alchemy_lab.next_effect set value {text:"열기·냉기 -3%p",color:"aqua"}

# 공방 Lv.1에서는 연구 Lv.5까지, 공방 Lv.2에서 Lv.15까지 진행 가능
execute if score #alchemy_lab_next tmp matches 6..15 unless score #level alchemy_workshop matches 2.. run scoreboard players set #alchemy_lab_available tmp 0
execute if score #alchemy_lab_next tmp matches 6..15 unless score #level alchemy_workshop matches 2.. run data modify storage data tmp.alchemy_lab.lock set value {text:"연금술 공방 Lv. 2가 필요합니다.",color:"red"}

# Lv.14/15는 보관소 자동 인출 해금 이후에만 진행 가능
execute if score #alchemy_lab_next tmp matches 14 unless score #information_auto_withdraw meta matches 1 run scoreboard players set #alchemy_lab_available tmp 0
execute if score #alchemy_lab_next tmp matches 14 unless score #information_auto_withdraw meta matches 1 run data modify storage data tmp.alchemy_lab.lock set value {text:"정보 보관소 자동 인출 기능이 필요합니다.",color:"red"}
execute if score #alchemy_lab_next tmp matches 15 unless score #information_auto_withdraw meta matches 1 run scoreboard players set #alchemy_lab_available tmp 0
execute if score #alchemy_lab_next tmp matches 15 unless score #information_auto_withdraw meta matches 1 run data modify storage data tmp.alchemy_lab.lock set value {text:"정보 보관소 자동 인출 기능이 필요합니다.",color:"red"}
execute if score #alchemy_lab_next tmp matches 15 if score #information_auto_withdraw meta matches 1 unless score #time_auto_withdraw meta matches 1 run scoreboard players set #alchemy_lab_available tmp 0
execute if score #alchemy_lab_next tmp matches 15 if score #information_auto_withdraw meta matches 1 unless score #time_auto_withdraw meta matches 1 run data modify storage data tmp.alchemy_lab.lock set value {text:"시간 보관소 자동 인출 기능이 필요합니다.",color:"red"}

execute if score #alchemy_lab_level upgrade matches 15.. run scoreboard players set #alchemy_lab_available tmp 0
execute if score #alchemy_lab_level upgrade matches 15.. run data modify storage data tmp.alchemy_lab.lock set value {text:"모든 연구가 완료되었습니다.",color:"green"}

execute if data storage data tmp.cost run function resource/convert_cost_to_text_named {id:"alchemy_lab",insertion:", "}
