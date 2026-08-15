# 청금석(lapis) resource interaction.
execute if score #lapis unlock matches 1.. run function three_body:resource/lapis/ui/info
execute unless score #lapis unlock matches 1.. run function three_body:resource/lapis/ui/locked
