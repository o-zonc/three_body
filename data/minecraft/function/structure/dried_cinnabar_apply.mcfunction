# 청크가 활성화된 뒤 마지막으로 요청된 진사 구조물 상태를 적용합니다.
execute if score #dried_cinnabar_structure_pending var matches 0 run function dried/structure/cinnabar/apply_off
execute if score #dried_cinnabar_structure_pending var matches 1 run function dried/structure/cinnabar/apply_on
schedule function structure/dried_cinnabar_release 1t replace
