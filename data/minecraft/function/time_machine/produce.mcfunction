execute store result storage data tmp.time_machine.produce.amount int 1 run scoreboard players get #time_machine_amount_cached var
function resource/add_material/time with storage data tmp.time_machine.produce

# 모든 마일스톤을 초록 발전 트리로 완성한 경우, 매 생산 주기마다 세계의 눈 1개를 추가 생성합니다.
execute if entity @s[advancements={0_overworld/25_green_time_machine=true}] run scoreboard players set #material_add_value tmp 1
execute if entity @s[advancements={0_overworld/25_green_time_machine=true}] run function resource/add_material/world_eye

scoreboard players operation #time_machine_timer generate = #time_machine_interval_cached var
playsound block.amethyst_block.chime weather @s ~ ~ ~ 0.35 1.6
