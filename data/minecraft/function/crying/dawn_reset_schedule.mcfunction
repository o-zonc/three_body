# 여명 중앙 청크를 다음 틱까지 유지해 spear와 디스플레이를 확실히 초기화합니다.
execute in minecraft:dawn run forceload add -16 -16 16 16
schedule function crying/dawn_reset_finish 2t replace
