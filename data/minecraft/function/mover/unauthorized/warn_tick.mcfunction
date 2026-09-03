execute unless entity @a[tag=accelerator_experiment_running] run title @a[tag=unauthorized_dim_warning] actionbar {text:"시간 흐름이 멈춘 다른 세계를 차원 이동기 없이 가는 행위는 스스로 감옥에 찾아가는 것과 같습니다.",color:"green",italic:false}
scoreboard players remove #unauthorized_warning_timer var 1
execute if score #unauthorized_warning_timer var matches 1.. run schedule function mover/unauthorized/warn_tick 20t replace
execute unless score #unauthorized_warning_timer var matches 1.. run tag @a remove unauthorized_dim_warning
