scoreboard players operation #second_heat_lvl tmp = #heat_second_lvl upgrade
scoreboard players operation #second_cold_lvl tmp = #cold_second_lvl upgrade
scoreboard players operation #second_gold_lvl tmp = #gold_second_lvl upgrade
scoreboard players operation #second_diamond_lvl tmp = #diamond_second_lvl upgrade
scoreboard players operation #second_special_lvl tmp = #special_second_lvl upgrade
scoreboard players operation #second_get_lvl tmp = #get_second_lvl upgrade
execute store result score #second_heat_interval tmp run function resource/environment/heat_interval
execute store result score #second_cold_interval tmp run function resource/environment/cold_interval
execute store result score #second_get_bonus tmp run function resource/production/base
scoreboard players remove #second_get_bonus tmp 1

scoreboard players set #second_special_bonus tmp 0
scoreboard players set #second_gold_bonus tmp 0
scoreboard players set #second_diamond_bonus tmp 0
execute if score #special_second_lvl upgrade matches 1 run scoreboard players set #second_special_bonus tmp 1
execute if score #special_second_lvl upgrade matches 2 run scoreboard players set #second_special_bonus tmp 2
execute if score #special_second_lvl upgrade matches 3 run scoreboard players set #second_special_bonus tmp 5
execute if score #special_second_lvl upgrade matches 4.. run scoreboard players set #second_special_bonus tmp 10
execute if score #gold_second_lvl upgrade matches 1 run scoreboard players set #second_gold_bonus tmp 1
execute if score #gold_second_lvl upgrade matches 2 run scoreboard players set #second_gold_bonus tmp 2
execute if score #gold_second_lvl upgrade matches 3 run scoreboard players set #second_gold_bonus tmp 5
execute if score #gold_second_lvl upgrade matches 4.. run scoreboard players set #second_gold_bonus tmp 10
execute if score #diamond_second_lvl upgrade matches 1 run scoreboard players set #second_diamond_bonus tmp 1
execute if score #diamond_second_lvl upgrade matches 2 run scoreboard players set #second_diamond_bonus tmp 2
execute if score #diamond_second_lvl upgrade matches 3 run scoreboard players set #second_diamond_bonus tmp 5
execute if score #diamond_second_lvl upgrade matches 4.. run scoreboard players set #second_diamond_bonus tmp 10

# 금·다이아몬드 최종 증가량 = 전용 보너스 + (공통 보너스 × 극한 환경 수급 수치)
scoreboard players operation #second_common_effective tmp = #second_get_bonus tmp
scoreboard players operation #second_common_effective tmp *= #second_special_bonus tmp
scoreboard players operation #second_gold_bonus tmp += #second_common_effective tmp
scoreboard players operation #second_diamond_bonus tmp += #second_common_effective tmp

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 자원 상점 2층 - 생산 강화 ]",color:"gold",bold:true},{text:"\n\n  • 열기 자연 지급: ",color:"red",bold:false},{score:{name:"#second_heat_interval",objective:"tmp"},color:"white"},{text:"틱  (Lv. ",color:"gray"},{score:{name:"#second_heat_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n  • 냉기 자연 지급: ",color:"aqua"},{score:{name:"#second_cold_interval",objective:"tmp"},color:"white"},{text:"틱  (Lv. ",color:"gray"},{score:{name:"#second_cold_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n  • 금 추가 생산량: +",color:"gold"},{score:{name:"#second_gold_bonus",objective:"tmp"},color:"white"},{text:"  (Lv. ",color:"gray"},{score:{name:"#second_gold_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n  • 다이아몬드 추가 생산량: +",color:"aqua"},{score:{name:"#second_diamond_bonus",objective:"tmp"},color:"white"},{text:"  (Lv. ",color:"gray"},{score:{name:"#second_diamond_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n  • 열기·냉기 추가 수급량: +",color:"light_purple"},{score:{name:"#second_special_bonus",objective:"tmp"},color:"white"},{text:"  (Lv. ",color:"gray"},{score:{name:"#second_special_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:" ★",color:"gold"},{text:" 추천",color:"white"},{text:"\n  • 공통 기본 생산량: +",color:"green"},{score:{name:"#second_get_bonus",objective:"tmp"},color:"white"},{text:"  (Lv. ",color:"gray"},{score:{name:"#second_get_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n"}]
