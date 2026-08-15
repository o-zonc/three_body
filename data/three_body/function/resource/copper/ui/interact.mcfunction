# 구리(copper) resource interaction.
execute if score #copper unlock matches 1.. run function three_body:resource/copper/ui/info
execute unless score #copper unlock matches 1.. run function three_body:resource/copper/ui/locked
