# Macro args: id
# 극야에서는 첫 자원 인터랙션이 정산을 시작한다. 그 외에는 기존 정보 UI를 연다.
execute if score #GLOBAL current_dim matches 3 if score #GLOBAL reckoning_ready matches 1.. run return run function reckoning/run
execute if score #GLOBAL current_dim matches 4 if score #GLOBAL dawn_bonus_shop matches 1.. run return run function dawn/bonus_shop/ui
$function resource/material/$(id)/ui/info
