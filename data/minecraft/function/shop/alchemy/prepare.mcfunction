# 현재 해금 상태와 레벨을 구매 단계로 변환한다.
execute unless score #level alchemy_workshop = #level alchemy_workshop run scoreboard players set #level alchemy_workshop 0
scoreboard players operation #alchemy_stage tmp = #level alchemy_workshop
scoreboard players add #alchemy_stage tmp 1
execute unless score #alchemy_workshop unlock matches 1 run scoreboard players set #alchemy_stage tmp 0
execute store result storage data tmp.alchemy_shop.stage int 1 run scoreboard players get #alchemy_stage tmp
function shop/alchemy/read with storage data tmp.alchemy_shop
