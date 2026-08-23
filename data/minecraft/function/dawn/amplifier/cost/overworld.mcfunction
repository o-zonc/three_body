# 오버월드 자원 증폭기 비용
# 0=잠김 → Lv.0, 1=Lv.0 → Lv.1, 2=Lv.1 → Lv.2
execute if score #dawn_overworld_amp meta matches 0 run data modify storage data tmp.cost set value [{type:"information",amount:8},{type:"time",amount:2}]
execute if score #dawn_overworld_amp meta matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:1000},{type:"emerald",amount:100},{type:"lapis",amount:200},{type:"information",amount:16},{type:"time",amount:4}]
execute if score #dawn_overworld_amp meta matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:5000},{type:"emerald",amount:500},{type:"lapis",amount:1000},{type:"information",amount:32},{type:"time",amount:8}]
execute if score #dawn_overworld_amp meta matches 3.. run data modify storage data tmp.cost set value []
