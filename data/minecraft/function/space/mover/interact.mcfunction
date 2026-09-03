# 연금술 공방의 우주 이동기 단말
# 시간축 개방 이전에는 소리, UI, 메시지 없이 완전히 무반응이다.
execute unless score #time_axis_open var matches 1 run return 0

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 1.4
function util/blank

tellraw @s ["",{"text":"  [ 우주 이동기 ]","color":"dark_aqua","bold":true},{"text":"\n\n  시간축 외부에서 관측된 좌표로 이동하기 위한 단말입니다.","color":"gray","bold":false},{"text":"\n  목적지: ","color":"dark_gray","bold":false},{"text":"우주","color":"aqua","bold":false},{"text":"\n\n  시간축 연결 상태: ","color":"dark_gray","bold":false},{"text":"연결됨","color":"green","bold":false},{"text":"\n"}]
