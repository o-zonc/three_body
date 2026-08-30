# 엘리베이터 Lv. 1: 1층과 2층 사이를 이동할 수 있다.
scoreboard players set #GLOBAL elevator_unlocked 1
title @a actionbar {"text":"엘리베이터가 Lv. 1로 해금되었습니다. 2층으로 이동할 수 있습니다.","color":"green",italic:false}

function common/structure/beacon/on
