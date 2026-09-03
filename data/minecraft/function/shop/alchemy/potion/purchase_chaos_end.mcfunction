function shop/alchemy/potion/value/chaos_end_cost
execute store result score #alchemy_potion_cost_ok tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #alchemy_potion_cost_ok tmp matches 1 run title @s actionbar {text:"난세기 종료 물약을 양조할 재료가 부족합니다.",color:"red",italic:true}
execute unless score #alchemy_potion_cost_ok tmp matches 1 run return 0

function resource/cost/take
# 소비 감지는 potion_used 스코어로 처리하므로 바닐라 상태 효과는 부여하지 않는다.
give @s minecraft:potion[minecraft:custom_name={text:"난세기 종료 물약",color:"light_purple",italic:false},minecraft:lore=[{text:"물약 - 마시기로 사용",color:"blue",italic:false},{text:""},{text:"현재 세계의 난세기를 즉시 종료합니다.",color:"gray",italic:false},{text:"소지 중에는 차원 이동기를 사용할 수 없습니다.",color:"red",italic:false}],minecraft:potion_contents={custom_color:13353425},minecraft:custom_data={chaos_end_potion:1b}] 1
execute as @a at @s run playsound block.brewing_stand.brew master @s ~ ~ ~ 1 0.7
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar {text:"난세기 종료 물약을 양조했습니다.",color:"light_purple",italic:false}
return 1
