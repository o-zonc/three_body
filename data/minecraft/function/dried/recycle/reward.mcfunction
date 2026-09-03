scoreboard players operation #material_add_value tmp = #recycle_amount tmp
$function resource/add_material/$(id)
$execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar [{text:"",italic:false},{text:"재활용하여 ",color:"gray"},{text:"$(name) ",color:"$(color)",shadow_color:$(shadow)},{score:{name:"#recycle_amount",objective:"tmp"},color:"$(color)",shadow_color:$(shadow)},{text:" 개",color:"$(color)",shadow_color:$(shadow)},{text:"를 획득했습니다.",color:"gray"}]
