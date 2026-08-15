# ==========================================
# 보스바 갱신
# ==========================================
# 현재 플레이어가 존재하는 차원의 보스바만 표시하고,
# 각 차원의 state에 따라 제목과 색상을 갱신합니다.

# ==========================================
# 1. 얼음 차원 (frozen)
# ==========================================

execute store result bossbar bossbar_frozen value run scoreboard players get #GLOBAL timer_frozen

bossbar set bossbar_frozen visible false
bossbar set bossbar_frozen players @a[nbt={Dimension:"minecraft:frozen"}]

execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if entity @a[advancements={0_overworld/01_chaos=true}] run bossbar set bossbar_frozen visible true

execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL state_frozen matches 0 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 다음 난세기까지","color":"aqua"}
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL state_frozen matches 0 run bossbar set bossbar_frozen color blue

execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL state_frozen matches 1 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 난세기!","color":"dark_red"}
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL state_frozen matches 1 run bossbar set bossbar_frozen color red

execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL state_frozen matches 2 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 멸망","color":"dark_aqua"}
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL state_frozen matches 2 run bossbar set bossbar_frozen color blue

execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 지속 포기","color":"white"}
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_frozen color white

# ==========================================
# 2. 건조 차원 (dried)
# ==========================================

execute store result bossbar bossbar_dried value run scoreboard players get #GLOBAL timer_dried

bossbar set bossbar_dried visible false
bossbar set bossbar_dried players @a[nbt={Dimension:"minecraft:dried"}]

execute if entity @a[nbt={Dimension:"minecraft:dried"}] if entity @a[advancements={0_overworld/01_chaos=true}] run bossbar set bossbar_dried visible true

execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL state_dried matches 0 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 다음 난세기까지","color":"gold"}
execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL state_dried matches 0 run bossbar set bossbar_dried color yellow

execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL state_dried matches 1 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 난세기!","color":"dark_red"}
execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL state_dried matches 1 run bossbar set bossbar_dried color red

execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL state_dried matches 2 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 멸망","color":"#D48E00"}
execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL state_dried matches 2 run bossbar set bossbar_dried color yellow

execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 지속 포기","color":"white"}
execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_dried color white

# ==========================================
# 3. 오버월드 (overworld)
# ==========================================

execute store result bossbar bossbar_overworld value run scoreboard players get #GLOBAL timer_overworld

bossbar set bossbar_overworld visible false
bossbar set bossbar_overworld players @a[nbt={Dimension:"minecraft:overworld"}]

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if entity @a[advancements={0_overworld/01_chaos=true}] run bossbar set bossbar_overworld visible true

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 0 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 다음 난세기까지","color":"dark_green"}
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 0 run bossbar set bossbar_overworld color green

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 난세기!","color":"dark_red"}
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 run bossbar set bossbar_overworld color red

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 2 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 멸망","color":"#006300"}
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 2 run bossbar set bossbar_overworld color green

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 지속 포기","color":"white"}
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_overworld color white
