# 다이아몬드(diamond) resource interaction.
execute if score #diamond unlock matches 1.. run function three_body:resource/diamond/ui/info
execute unless score #diamond unlock matches 1.. run function three_body:resource/diamond/ui/locked
