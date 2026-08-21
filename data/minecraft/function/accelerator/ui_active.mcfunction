scoreboard players set #accelerator_info_amount tmp 1
scoreboard players set #accelerator_interval tmp 1200
scoreboard players set #accelerator_next_iron tmp 300000
scoreboard players set #accelerator_next_time tmp 2
scoreboard players set #accelerator_broken_required tmp 10

execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #accelerator_info_amount tmp 2
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #accelerator_interval tmp 900
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #accelerator_next_iron tmp 800000
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #accelerator_next_time tmp 4
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #accelerator_broken_required tmp 40

execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #accelerator_info_amount tmp 4
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #accelerator_interval tmp 600
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #accelerator_next_iron tmp 2000000
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #accelerator_next_time tmp 8
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #accelerator_broken_required tmp 120

execute store result score #accelerator_broken_count tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0

tellraw @s ["",{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  • 레벨: ",color:"gray"},{score:{name:"#GLOBAL",objective:"accelerator_level"},color:"white"},{text:" / 4",color:"gray"},{text:"\n  • 정보 생산량: ",color:"gray"},{score:{name:"#accelerator_info_amount",objective:"tmp"},color:"light_purple"},{text:"개",color:"gray"},{text:"\n  • 생산 주기: ",color:"gray"},{score:{name:"#accelerator_interval",objective:"tmp"},color:"white"},{text:"틱",color:"gray"},{text:"\n  • 다음 생산까지: ",color:"gray"},{score:{name:"#GLOBAL",objective:"accelerator_timer"},color:"white"},{text:"틱",color:"gray"},{text:"\n  • 실험 쿨다운: ",color:"gray"},{score:{name:"#GLOBAL",objective:"experiment_cooldown"},color:"white"},{text:"틱",color:"gray"},{text:"\n  • 실험 비용: 철 50,000 / 청금석 500 / 금 250 / 다이아몬드 50 / 소지한 시간 1",color:"dark_gray"},{text:"\n  • 다음 업그레이드: 철 ",color:"gray"},{score:{name:"#accelerator_next_iron",objective:"tmp"},color:"white"},{text:" / 소지한 시간 ",color:"gray"},{score:{name:"#accelerator_next_time",objective:"tmp"},color:"dark_aqua"},{text:" / 깨진 파편 ",color:"gray"},{score:{name:"#accelerator_broken_required",objective:"tmp"},color:"dark_gray"},{text:" (보유 ",color:"gray"},{score:{name:"#accelerator_broken_count",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n\n  [ 충돌 실험 ]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 2"}},{text:"\n  [ 다음 단계 업그레이드 ]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]
