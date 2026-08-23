execute if score #emerald unlock matches 1 run function resource/material/emerald/ui/info
execute unless score #emerald unlock matches 1 if score #overworld civilization_age matches 4.. run function resource/unlockable_ui {id:"emerald",name:"에메랄드",trigger:1105}
execute unless score #emerald unlock matches 1 unless score #overworld civilization_age matches 4.. run function resource/material/emerald/ui/locked
