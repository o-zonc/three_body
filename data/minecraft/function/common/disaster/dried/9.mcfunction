playsound entity.generic.eat master @s ~ ~ ~ 1.0 0.1

title @a subtitle [{"text": "제 ", "color": "gray"}, {"score": {name: "#GLOBAL", objective: "n_civil"}, color: red, bold: true}, {"text": "문명은 마인애플의 일용할 양식이 되었습니다.", "color": "gray"}]
execute unless entity @a[tag=accelerator_experiment_running] run title @a actionbar [{text:"",italic:false},{"text": "숨겨진 메세지를 발견!", "color": "gray"}]

execute if entity @a[advancements={6_disaster/31_dried_message=false}] run advancement grant @a only 6_disaster/31_dried_message
