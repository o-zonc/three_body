# 석탄(coal) resource interaction.
execute if score #coal unlock matches 1.. run function three_body:resource/coal/ui/info
execute unless score #coal unlock matches 1.. run function three_body:resource/coal/ui/locked
