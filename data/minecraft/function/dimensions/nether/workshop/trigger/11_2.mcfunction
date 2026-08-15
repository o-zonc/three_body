execute store result score #nether_workshop_purchase_success tmp run function dimensions/nether/workshop/toggle_from_const {id:"11_2"}
execute if score #nether_workshop_purchase_success tmp matches 1 run function dimensions/nether/workshop/on_purchase/11_2
scoreboard players reset #nether_workshop_purchase_success tmp