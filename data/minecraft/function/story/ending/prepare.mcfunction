# 두 엔딩이 공유하는 감상 환경과 복귀 상태를 준비한다.
scoreboard players set #ending_credit_tick var 0
scoreboard objectives setdisplay sidebar

# 엔딩 중에는 시대 전환과 멸망 이벤트가 진행되지 않도록 기존 정지 상태를 보관한다.
scoreboard players operation #ending_era_paused era_paused = #GLOBAL era_paused
scoreboard players set #GLOBAL era_paused 1

# 엔딩 전 daylight cycle 설정을 보관하고 오버월드 정오에 고정한다.
execute store result score #ending_advance_time var run gamerule advance_time
gamerule advance_time false

# 모든 플레이어의 현재 위치·시선과 차원을 저장한다.
tag @a add ending_active
execute as @a[tag=ending_active] run function mover/local/save
tag @a[tag=ending_active] remove ending_from_overworld
tag @a[tag=ending_active] remove ending_from_dried
tag @a[tag=ending_active] remove ending_from_frozen
tag @a[tag=ending_active] remove ending_from_polarnight
tag @a[tag=ending_active] remove ending_from_dawn
execute as @a[tag=ending_active,nbt={Dimension:"minecraft:overworld"}] run tag @s add ending_from_overworld
execute as @a[tag=ending_active,nbt={Dimension:"minecraft:dried"}] run tag @s add ending_from_dried
execute as @a[tag=ending_active,nbt={Dimension:"minecraft:frozen"}] run tag @s add ending_from_frozen
execute as @a[tag=ending_active,nbt={Dimension:"minecraft:polarnight"}] run tag @s add ending_from_polarnight
execute as @a[tag=ending_active,nbt={Dimension:"minecraft:dawn"}] run tag @s add ending_from_dawn

# 엔딩 화면을 방해하는 모든 게임 보스바를 잠시 숨긴다.
bossbar set shield_charge visible false
bossbar set bossbar_frozen visible false
bossbar set bossbar_frozen_maze visible false
bossbar set bossbar_dried visible false
bossbar set bossbar_overworld visible false
bossbar set catalyst_fever visible false

# 인트로와 같은 오버월드 전용 감상 무대를 생성한다.
kill @e[tag=story_ending]
execute in minecraft:overworld run time set 6000
execute in minecraft:overworld run tp @a[tag=ending_active] 0 100 0
gamemode spectator @a[tag=ending_active]
execute in minecraft:overworld run summon item_display 0 100 0 {Tags:["ending_camera","story_ending"],teleport_duration:1,Rotation:[0.0f,0.0f],item:{id:"barrier",count:1}}
execute as @a[tag=ending_active] run spectate @e[tag=ending_camera,limit=1]
execute in minecraft:overworld as @e[type=item_display,tag=ending_camera,limit=1] at @s run summon item_display ~ ~ ~10 {Tags:["ending_bg","story_ending"],item:{id:"black_concrete",count:1},transformation:[48f,0f,0f,0f, 0f,24f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],billboard:"fixed",Glowing:0b}
