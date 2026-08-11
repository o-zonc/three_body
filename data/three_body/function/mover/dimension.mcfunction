# 기본 차원 이동기
# 극야에서는 이동을 차단하고, 그 외 차원에서는 멸망 이벤트를 실행한다.

execute if dimension three_body:polarnight run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute unless dimension three_body:polarnight run function three_body:common/disaster/do
