scoreboard players set #compressed_nether_crystal_max tmp 500000000
execute if score #compressed_nether_crystal material > #compressed_nether_crystal_max tmp run scoreboard players operation #compressed_nether_crystal material = #compressed_nether_crystal_max tmp
scoreboard players operation #nether_workshop_refund_limit tmp = #compressed_nether_crystal_max tmp
scoreboard players operation #nether_workshop_refund_limit tmp -= #compressed_nether_crystal material
execute unless score #nether_workshop_refund_limit tmp matches 1.. run return 0
execute if score #nether_workshop_refund_total tmp > #nether_workshop_refund_limit tmp run scoreboard players operation #nether_workshop_refund_total tmp = #nether_workshop_refund_limit tmp
scoreboard players operation #compressed_nether_crystal material += #nether_workshop_refund_total tmp
execute if score #compressed_nether_crystal material > #compressed_nether_crystal_max tmp run scoreboard players operation #compressed_nether_crystal material = #compressed_nether_crystal_max tmp
return 1