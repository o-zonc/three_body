playsound entity.generic.drink master @a ~ ~ ~ 1.0 0.1

title @a subtitle [{"text": "제 ", "color": "gray"}, {"score": {name: "#GLOBAL", objective: "n_civil"}, color: blue, bold: true}, {"text": "문명은 파크모가 홀라당 마셔버렸습니다.", color: "gray"}]
title @a actionbar [{"text": "숨겨진 메세지를 발견!", "color": "gray", italic: true}]

execute if entity @a[advancements={three_body:1_frozen/30_hidden=false}] run advancement grant @a only three_body:1_frozen/30_hidden