data modify storage data tmp.cost_text_context.upgrade set value 1
$function product/convert_cost_to_text_named {id:"$(id)",insertion:"$(insertion)"}
data remove storage data tmp.cost_text_context.upgrade