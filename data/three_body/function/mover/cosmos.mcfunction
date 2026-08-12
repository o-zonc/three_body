# 우주 이동기
execute if entity @s[nbt={Dimension:"three_body:cosmos"}] run return run function three_body:mover/restricted/cosmos
execute if entity @s[nbt={Dimension:"three_body:polarnight"}] run return run function three_body:mover/restricted/polar
execute unless entity @s[nbt={Dimension:"three_body:dawn"}] run return run function three_body:mover/restricted/common
function three_body:cosmos/move
