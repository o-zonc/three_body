execute if score #lapis unlock matches 1 run function resource/material/lapis/ui/info
execute unless score #lapis unlock matches 1 if score #overworld civilization_age matches 5.. run function resource/unlockable_ui {id:"lapis",name:"청금석",trigger:1106}
execute unless score #lapis unlock matches 1 unless score #overworld civilization_age matches 5.. run function resource/material/lapis/ui/locked
