# 강제 로드 요청 후 모인 엔드 수정 설치 작업을 한 번에 처리합니다.
execute if score #crystal_overworld_pending var matches 1 run function crying/crystal_place_apply {id:"overworld",x:11,z:11}
execute if score #crystal_dried_pending var matches 1 run function crying/crystal_place_apply {id:"dried",x:-11,z:11}
execute if score #crystal_frozen_pending var matches 1 run function crying/crystal_place_apply {id:"frozen",x:11,z:-11}
execute if score #crystal_dawn_pending var matches 1 run function crying/crystal_place_apply {id:"dawn",x:-11,z:-11}

execute in minecraft:polarnight run tag @e[type=minecraft:end_crystal,tag=crying_crystal_keeper] remove crying_crystal_keeper

# 드물게 청크 엔티티 로드가 늦어 생성 확인에 실패하면 강제 로드를 유지한 채 다시 시도합니다.
execute if score #crystal_overworld_pending var matches 1 run schedule function crying/crystal_place_finish 2t replace
execute if score #crystal_dried_pending var matches 1 run schedule function crying/crystal_place_finish 2t replace
execute if score #crystal_frozen_pending var matches 1 run schedule function crying/crystal_place_finish 2t replace
execute if score #crystal_dawn_pending var matches 1 run schedule function crying/crystal_place_finish 2t replace

# 완료된 요청이 직접 추가한 강제 로드만 해제합니다. 재시도 중인 요청의 청크는 유지합니다.
execute unless score #crystal_overworld_pending var matches 1 if score #crystal_overworld_forceload_owned var matches 1 in minecraft:polarnight run forceload remove 11 11
execute unless score #crystal_dried_pending var matches 1 if score #crystal_dried_forceload_owned var matches 1 in minecraft:polarnight run forceload remove -11 11
execute unless score #crystal_frozen_pending var matches 1 if score #crystal_frozen_forceload_owned var matches 1 in minecraft:polarnight run forceload remove 11 -11
execute unless score #crystal_dawn_pending var matches 1 if score #crystal_dawn_forceload_owned var matches 1 in minecraft:polarnight run forceload remove -11 -11
execute unless score #crystal_overworld_pending var matches 1 run scoreboard players set #crystal_overworld_forceload_owned var 0
execute unless score #crystal_dried_pending var matches 1 run scoreboard players set #crystal_dried_forceload_owned var 0
execute unless score #crystal_frozen_pending var matches 1 run scoreboard players set #crystal_frozen_forceload_owned var 0
execute unless score #crystal_dawn_pending var matches 1 run scoreboard players set #crystal_dawn_forceload_owned var 0
