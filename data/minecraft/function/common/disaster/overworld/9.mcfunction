playsound block.smithing_table.use master @s ~ ~ ~ 1.0 0.5

title @a subtitle [{"text": "제 ", "color": "gray"}, {"score": {name: "#GLOBAL", objective: "n_civil"}, color: green, bold: true}, {"text": "문명은 카운터에게 개조당했습니다.", "color": "gray"}]
title @a actionbar [{text:"",italic:false},{"text": "숨겨진 메세지를 발견!", "color": "gray"}]

execute if entity @a[advancements={6_disaster/12_overworld_message=false}] run advancement grant @a only 6_disaster/12_overworld_message
