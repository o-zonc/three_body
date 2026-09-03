# 등록 목록의 복사본을 순회해 첫 번째로 일치하는 위치 이름을 선택한다.
data modify storage data tmp.location.queue set from storage data location.areas
data modify storage data tmp.location.name set value "§kunwn"
scoreboard players set #location_found tmp 0
function location/resolve_next
