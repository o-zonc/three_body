execute if score #coal unlock matches 1 run function resource/material/coal/ui/info
execute unless score #coal unlock matches 1 if score #overworld civilization_age matches 2.. run function resource/unlockable_ui {id:"coal",name:"석탄",trigger:1102}
execute unless score #coal unlock matches 1 unless score #overworld civilization_age matches 2.. run function resource/material/coal/ui/locked
