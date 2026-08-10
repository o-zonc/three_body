playsound block.beacon.activate master @a ~ ~ ~ 1.0 0.5
playsound block.sculk_sensor.clicking master @a ~ ~ ~ 1.0 0.1

title @a title {"text": "문명 재구성", "color": "#9EF971", "bold": true}
title @a subtitle [{"text": "제 ", "color": "gray"}, {"score": {name: "#GLOBAL", objective: "n_civil"}, color: "#C0C0C0", bold: true}, {"text": "문명은 새로운 세계로 나아갈 준비를 마쳤습니다.", color: "gray"}]

return 1