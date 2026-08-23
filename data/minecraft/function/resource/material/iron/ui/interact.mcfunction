execute if score #iron unlock matches 1 run function resource/material/iron/ui/info
execute unless score #iron unlock matches 1 if score #overworld civilization_age matches 3.. run function resource/unlockable_ui {id:"iron",name:"철",trigger:1104}
execute unless score #iron unlock matches 1 unless score #overworld civilization_age matches 3.. run function resource/material/iron/ui/locked
