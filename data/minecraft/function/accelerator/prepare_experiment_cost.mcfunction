# Macro args: type, id
data remove storage data tmp.cost_original
data remove storage data tmp.shop_advancement_cost_original
$data modify storage data tmp.cost set from storage data const.accelerator.experiment.$(type).cost
execute if score #factory_energy_level upgrade matches 3.. run data modify storage data tmp.shop_advancement_cost_original set from storage data tmp.cost
function factory/energy/apply_experiment_discount
$function resource/convert_discount_cost_to_text_named {id:"$(id)",insertion:", "}
