title @a subtitle [{"text": "제 ", "color": "gray"}, {"score": {name: "#GLOBAL", objective: "n_civil"}, color: red, bold: true}, {"text": "문명은 마인애플의 일용할 양식이 되었습니다.", color: "gray"}]
title @a actionbar [{"text": "숨겨진 메세지를 발견!", "color": "gray", italic: true}]

execute if entity @a[advancements={three_body:2_dried/10_hidden=false}] run advancement grant @a only three_body:2_dried/10_hidden