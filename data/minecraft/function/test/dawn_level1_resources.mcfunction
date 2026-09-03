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

# 정보/시간은 자동 인출이 가능한 보관 임계치까지 올린다.
# 이미 임계치를 넘었다면 기존 보관량은 유지한다.
execute unless score #information_bank meta matches 500.. run scoreboard players set #information_bank meta 500
execute unless score #time_bank meta matches 250.. run scoreboard players set #time_bank meta 250
scoreboard players set #information_auto_withdraw meta 1
scoreboard players set #time_auto_withdraw meta 1

# 세 증폭기의 공통 메타 자원 누적 비용은 즉시 결제 테스트가 가능하도록 실제 소지 아이템으로도 지급한다.
function meta/information/give_item {amount:72}
function meta/time/give_item {amount:18}
function meta/sync

function util/blank
tellraw @s ["",{text:"  [ 여명 Lv.1 테스트 자원 지급 ]",color:"aqua",bold:true},{text:"\n\n  세 자원 증폭기를 모두 Lv.1까지 강화할 수 있는 누적 자원을 지급했습니다.",color:"gray"},{text:"\n  정보 보관 500+ / 시간 보관 250+ §7(자동 인출 해금)",color:"light_purple"},{text:"\n  소지 정보 72 / 시간 18",color:"light_purple"},{text:"\n  철 1000 / 에메랄드 100 / 청금석 200",color:"white"},{text:"\n  금 250 / 열기 100 / 다이아몬드 100 / 냉기 100",color:"white"},{text:"\n"}]
