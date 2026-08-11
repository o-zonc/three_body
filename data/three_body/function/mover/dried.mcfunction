# 메마른 차원 이동기
execute if dimension three_body:polarnight run title @a actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute if dimension three_body:dried run title @a actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute unless dimension three_body:polarnight run function three_body:dried/move
