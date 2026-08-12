# 우주 이동기
execute if entity @s[nbt={Dimension:"three_body:cosmos"}] run return run title @a actionbar {"text":"이미 우주에 있습니다!","color":"white","bold":false,"italic":true}
execute if entity @s[nbt={Dimension:"three_body:polarnight"}] run return run title @a actionbar {"text":"머리 위의 별들을 바라보세요.","color":"white",bold:false,"italic":true}
execute unless entity @s[nbt={Dimension:"three_body:dawn"}] run return run title @a actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
function three_body:cosmos/move
