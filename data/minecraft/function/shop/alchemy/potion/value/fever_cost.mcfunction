# 공방 단계에 맞는 카탈리스트 비용을 tmp.cost에 준비합니다.
# I: 6/9, II: 10/15, III: 16/24 (emerald/lapis)
data modify storage data tmp.cost set value [{type:"emerald",amount:6},{type:"lapis",amount:9}]
execute if score #level alchemy_workshop matches 1 run data modify storage data tmp.cost set value [{type:"emerald",amount:10},{type:"lapis",amount:15}]
execute if score #level alchemy_workshop matches 2.. run data modify storage data tmp.cost set value [{type:"emerald",amount:16},{type:"lapis",amount:24}]
