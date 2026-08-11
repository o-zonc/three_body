# Resource sidebar - initialize display objective

scoreboard objectives add material_display dummy
scoreboard objectives modify material_display displayname {"text":"자원","color":"gold"}
scoreboard objectives setdisplay sidebar material_display

function three_body:resource/sidebar/clear
