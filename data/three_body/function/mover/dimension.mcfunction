# 기본 차원 이동기
execute if dimension three_body:polarnight run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute if dimension three_body:dawn run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute unless dimension three_body:polarnight unless dimension three_body:dawn run function three_body:common/disaster/do
