# 현대 진입 이후 1회차 엔딩(시간축 개방)까지 정상 비용으로 진행하기 위한 테스트 자원 지급
# 기준: 공장 미건설 상태도 허용 / 입자가속기 Lv.4 / 3종 실험 각 1회 / 미래 진입 / 타임머신 건설
# 흑요석 비용 대체는 사용하지 않는다.

# 공장 + 입자가속기 + 타임머신 건설비
# 입자가속기 0->4 업그레이드비
# 양자/중입자/시공간 붕괴 실험 1회 비용
scoreboard players add #copper material 700
scoreboard players add #iron material 3900700
scoreboard players add #emerald material 350
scoreboard players add #lapis material 4350
scoreboard players add #gold material 1750
scoreboard players add #diamond material 400

# 입자가속기 Lv.2~4 업그레이드에 필요한 깨진 양자 얽힘 파편: 10 + 40 + 120 = 170
function quantum/give_broken {amount:170}

# 입자가속기 업그레이드 시간: 1+2+4+8 = 15
# 실험 시간: 1+2+4 = 7
# 합계 22. 테스트 함수이므로 휴대 한도와 무관하게 직접 지급한다.
function meta/time/give_item {amount:22}

# 미래 시대 진입에 필요한 커스텀 흑요석 1개
function meta/obsidian/give_item {amount:1}

tellraw @s ["",{"text":"[테스트] ","color":"dark_gray","bold":false},{"text":"현대 → 시간축 개방 진행용 자원을 지급했습니다.","color":"gray","bold":false}]
