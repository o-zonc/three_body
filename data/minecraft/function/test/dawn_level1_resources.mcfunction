# 여명 차원 자원 증폭기 3종을 모두 화면상 Lv.1까지 올리기 위한 개발용 자원 지급
# 누적 비용: 각 증폭기의 미해금 -> Lv.0 + Lv.0 -> Lv.1

# 오버월드 증폭기
scoreboard players add #iron material 1000
scoreboard players add #emerald material 100
scoreboard players add #lapis material 200

# 메마른 세계 증폭기
scoreboard players add #gold material 250
scoreboard players add #heat material 100

# 얼어붙은 세계 증폭기
scoreboard players add #diamond material 100
scoreboard players add #cold material 100

# 세 증폭기의 공통 메타 자원 누적 비용
# 상점 결제는 보관소가 아니라 실제 소지 아이템을 사용하므로 직접 지급합니다.
function meta/information/give_item {amount:72}
function meta/time/give_item {amount:18}
function meta/sync

function util/blank
tellraw @s ["",{text:"  [ 여명 Lv.1 테스트 자원 지급 ]",color:"aqua",bold:true},{text:"\n\n  세 자원 증폭기를 모두 Lv.1까지 강화할 수 있는 누적 자원을 지급했습니다.",color:"gray"},{text:"\n  정보 72 / 시간 18",color:"light_purple"},{text:"\n  철 1000 / 에메랄드 100 / 청금석 200",color:"white"},{text:"\n  금 250 / 열기 100 / 다이아몬드 100 / 냉기 100",color:"white"},{text:"\n"}]
