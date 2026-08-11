# 오버월드 이동기
execute if dimension three_body:polarnight run return run title @a actionbar {"text":"초월하지 않아 사용할 수 없습니다!","color":"white","bold":false,"italic":true}
execute unless dimension three_body:dawn run return run title @a actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute if dimension three_body:dawn run function three_body:common/move
