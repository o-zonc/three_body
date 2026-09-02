# Macro args: id, dim, from_x, from_z, to_x, to_z, apply, release
# 대상 청크는 system_chunks/load가 상시 유지합니다. 1틱 지연은 같은 틱의 연속
# on/off 요청을 합치고 structure load 뒤 엔티티 후처리 순서를 보장하기 위해 유지합니다.
$schedule function structure/$(apply) 1t replace
