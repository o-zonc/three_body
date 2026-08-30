function shop/alchemy/prepare
execute unless data storage data tmp.alchemy_shop.now run title @s actionbar {text:"더 이상 업그레이드할 수 없습니다.",color:"red",italic:true}
execute unless data storage data tmp.alchemy_shop.now run return 0

execute store result score #alchemy_required_age tmp run data get storage data tmp.alchemy_shop.now.required_age
execute unless score #overworld civilization_age >= #alchemy_required_age tmp run title @s actionbar [{text:"",italic:true},{text:"문명 단계가 부족합니다. ",color:"red"},{text:"(필요 단계: ",color:"gray"},{score:{name:"#alchemy_required_age",objective:"tmp"},color:"white"},{text:")",color:"gray"}]
execute unless score #overworld civilization_age >= #alchemy_required_age tmp run return 0

data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data tmp.alchemy_shop.now.cost
execute store result score #alchemy_shop_cost_check tmp run function resource/check_cost
execute unless score #alchemy_shop_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #alchemy_shop_cost_check tmp matches 1 run return 0
function resource/cost/take

execute if score #alchemy_stage tmp matches 0 run scoreboard players set #alchemy_workshop unlock 1
execute if score #alchemy_stage tmp matches 0 run function common/structure/alchemy_workshop/on
execute if score #alchemy_stage tmp matches 0 unless entity @s[advancements={0_overworld/21_alchemy_workshop=true}] run advancement grant @s only 0_overworld/21_alchemy_workshop
execute if score #alchemy_stage tmp matches 0 run function story/overworld/age/check_medieval_age
execute if score #alchemy_stage tmp matches 0 run function item/give/altar_mover
execute if score #alchemy_stage tmp matches 1..2 run scoreboard players add #level alchemy_workshop 1
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function shop/alchemy/interact
return 1
