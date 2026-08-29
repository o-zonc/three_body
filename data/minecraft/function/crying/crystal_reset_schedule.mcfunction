# 극야 엔드 수정 청크를 다음 틱까지 유지해 엔티티 데이터가 확실히 로드되게 합니다.
execute in minecraft:polarnight store success score #crystal_reset_forceload_added tmp run forceload add -16 -16 16 16
schedule function crying/crystal_reset_finish 2t replace
