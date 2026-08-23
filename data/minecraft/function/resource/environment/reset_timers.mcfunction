# 차원에 새로 진입할 때 현재 업그레이드 기준으로 환경 자원 주기를 다시 잡습니다.
execute store result score #heat_environment_timer generate run function resource/environment/heat_interval
execute store result score #cold_environment_timer generate run function resource/environment/cold_interval
