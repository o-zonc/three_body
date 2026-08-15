# 철(iron) resource interaction.
execute if score #iron unlock matches 1.. run function three_body:resource/iron/ui/info
execute unless score #iron unlock matches 1.. run function three_body:resource/iron/ui/locked
