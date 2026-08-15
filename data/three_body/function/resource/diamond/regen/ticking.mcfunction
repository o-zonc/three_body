# Diamond regeneration ticking
# TODO: map coordinates for diamond are not yet decided.
# Safe no-op until a node position is configured; mirror stone/regen/ticking.mcfunction
# once the coordinates and block id are fixed.
execute unless score #diamond unlock matches 1.. run return 0
