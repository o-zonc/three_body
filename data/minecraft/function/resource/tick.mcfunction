# Independent resource system tick.
function resource/material/wood/tick
function resource/material/stone/tick
function resource/material/coal/tick
function resource/material/copper/tick
function resource/material/iron/tick
function resource/material/gold/tick
function resource/material/diamond/tick
function resource/material/emerald/tick
function resource/material/lapis/tick

# 중입자 충돌 실험에서 발견되는 색채 자원
function resource/material/yellow/tick
function resource/material/blue/tick

# 특수 환경 자원
execute in dried run function resource/material/heat/tick
function resource/material/cold/tick
function resource/material/cold/alt_tick
function resource/environment/tick

# 스크롤 엔딩 이후 등장하는 일회성 석영 블록
function resource/material/end/world_star/tick

# 잠긴 자원과 다른 장소에서 발생한 채굴 통계도 같은 tick 끝에 폐기한다.
function resource/block/reset_mined_stats
