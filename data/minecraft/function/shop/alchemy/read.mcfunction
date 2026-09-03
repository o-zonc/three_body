# 매크로 인수: stage
data remove storage data tmp.alchemy_shop.now
$data modify storage data tmp.alchemy_shop.now set from storage data const.structure.alchemy_workshop[{stage:$(stage)}]
