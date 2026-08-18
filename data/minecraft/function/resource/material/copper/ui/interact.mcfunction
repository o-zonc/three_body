execute if score #copper unlock matches 1 run function resource/material/copper/ui/info
execute unless score #copper unlock matches 1 if score #overworld civilization_age matches 2.. run function resource/unlockable_ui {id:"copper",name:"구리",trigger:1103}
execute unless score #copper unlock matches 1 unless score #overworld civilization_age matches 2.. run function resource/material/copper/ui/locked
