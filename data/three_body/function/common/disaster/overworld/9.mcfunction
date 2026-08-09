title @a subtitle [{"text": "제 ", "color": "gray"}, {"score": {name: "#GLOBAL", objective: "n_civil"}, color: green, bold: true}, {"text": "문명은 카운터에게 개조당했습니다.", color: "gray"}]
title @a actionbar [{"text": "숨겨진 메세지를 발견!", "color": "gray", italic: true}]

execute if entity @a[advancements={three_body:0_overworld/12_hidden=false}] run advancement grant @a only three_body:0_overworld/12_hidden