# 게임 로직이 존재하는 고정 청크를 진행 상태와 무관하게 상시 로드한다.
# 좌표는 블록 좌표이며, 겹치는 범위는 forceload가 중복 없이 관리한다.

# 오버월드: 중앙 시설, 연금술 공방, 공장, 타임머신 궤도, 관측소/신호기, 자원 노드
execute in minecraft:overworld run forceload add -16 -16 31 31
execute in minecraft:overworld run forceload add -37 -37 -4 -4
execute in minecraft:overworld run forceload add -36 4 4 36
execute in minecraft:overworld run forceload add -16 -48 15 -33
execute in minecraft:overworld run forceload add -48 -16 -33 15

# 메마른 세계: 중앙 자원 노드/발굴기/유적지와 유황·진사 확장 시설
execute in minecraft:dried run forceload add -32 -16 31 15

# 얼어붙은 세계: 다리/중앙 시설, 상점, 미로 제어 영역, 다이아몬드·냉기 노드
execute in minecraft:frozen run forceload add -1 6 1 30
execute in minecraft:frozen run forceload add 6 -1 20 1
execute in minecraft:frozen run forceload add -21 26 -19 34
execute in minecraft:frozen run forceload add 0 48

# 극야: 중앙 보관소
execute in minecraft:polarnight run forceload add -16 0 15 15

# 여명: 증폭기와 우는 흑요석 이벤트 중심
execute in minecraft:dawn run forceload add 0 0
