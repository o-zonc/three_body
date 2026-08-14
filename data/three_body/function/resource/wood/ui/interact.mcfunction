# Wood resource interaction.
execute if score #wood unlock matches 1.. run function three_body:resource/wood/ui/info
execute unless score #wood unlock matches 1.. run function three_body:resource/wood/ui/locked
