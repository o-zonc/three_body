# 현재 위치 목록
# --- 아래 목록에 직육면체 공간을 추가하면 사이드바의 "현재 위치"에 자동으로 표시된다. ---
# 먼저 적힌 공간이 우선 적용된다. 작은 공간을 큰 공간보다 위에 적는다.
# 필드:
# - dimension: 차원 ID
# - x, y, z: 직육면체의 최소 꼭짓점
# - dx, dy, dz: 최소 꼭짓점에서 각 축으로 늘어나는 블록 수
# - name: 사이드바에 표시할 JSON 텍스트를 문자열로 기록
# --- 두 꼭짓점이 (10, 20, 30), (19, 24, 39)라면 ---
# x:10, y:20, z:30, dx:9, dy:4, dz:9이다.
# 음의 방향으로 범위를 적고 싶다면 dx/dy/dz에 음수를 사용할 수도 있다.
# 예시:
# data modify storage data location.areas set value [\
# {dimension:"minecraft:overworld",x:-10,y:60,z:-10,dx:20,dy:20,dz:20,name:'{"text":"중앙 광장","color":"aqua"}'},\
# {dimension:"minecraft:frozen",x:-34,y:51,z:-34,dx:68,dy:8,dz:68,name:'{"text":"지하 미로","color":"light_purple"}'}\
# ]

data modify storage data location.areas set value [\
    {dimension:"minecraft:overworld",x:-11,y:-64,z:-11,dx:22,dy:2,dz:22,name:{"text":"제단 아래","color":"#91D7FF",}},\
    {dimension:"minecraft:overworld",x:-11,y:-61,z:-11,dx:22,dy:3,dz:22,name:{"text":"천공의 제단","color":"#91D7FF",}},\
    {dimension:"minecraft:overworld",x:-38,y:-64,z:-4,dx:26,dy:7,dz:8,name:{"text":"자원 지대","color":"green",}},\
    {dimension:"minecraft:overworld",x:-4,y:-61,z:12,dx:8,dy:3,dz:26,name:{"text":"암석 지대","color":"green",}},\
    {dimension:"minecraft:overworld",x:12,y:-61,z:-4,dx:26,dy:3,dz:8,name:"§kunwn"},\
    {dimension:"minecraft:overworld",x:-4,y:-64,z:-38,dx:8,dy:7,dz:26,name:{"text":"광산 지대","color":"green",}},\
    {dimension:"minecraft:overworld",x:12,y:-64,z:12,dx:26,dy:30,dz:26,name:{"text":"관측소","color":"green",}},\
    {dimension:"minecraft:overworld",x:18,y:-64,z:-30,dx:12,dy:8,dz:12,name:{"text":"자원 상점 1층","color":"green",}},\
    {dimension:"minecraft:overworld",x:16,y:-51,z:-32,dx:16,dy:8,dz:16,name:{"text":"자원 상점 2층","color":"green",}},\
    {dimension:"minecraft:overworld",x:20,y:-43,z:-28,dx:8,dy:4,dz:8,name:{"text":"자원 상점 3층","color":"green",}},\
    {dimension:"minecraft:overworld",x:12,y:-64,z:-38,dx:26,dy:30,dz:26,name:{"text":"자원 상점","color":"green",}},\
    {dimension:"minecraft:overworld",x:-38,y:-64,z:-38,dx:26,dy:10,dz:26,name:{"text":"연금술 공방","color":"green",}},\
    {dimension:"minecraft:overworld",x:-38,y:-64,z:12,dx:26,dy:7,dz:26,name:{"text":"공장","color":"green",}},\
    {dimension:"minecraft:overworld",x:-34,y:-54,z:14,dx:20,dy:6,dz:20,name:{"text":"입자가속기","color":"green",}},\
    {dimension:"minecraft:overworld",x:-34,y:-48,z:14,dx:20,dy:6,dz:20,name:{"text":"타임머신","color":"green",}},\
    {dimension:"minecraft:overworld",x:-38,y:-64,z:-38,dx:76,dy:8,dz:76,name:{"text":"통로","color":"green",}},\
    {dimension:"minecraft:frozen",x:7,y:64,z:-2,dx:15,dy:5,dz:4,name:{"text":"얼어붙은 상점","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-10,y:64,z:-6,dx:16,dy:5,dz:12,name:{"text":"북쪽 탑 1층","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-5,y:72,z:-5,dx:10,dy:3,dz:10,name:{"text":"북쪽 탑 2층","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-4,y:78,z:-4,dx:8,dy:3,dz:8,name:{"text":"북쪽 탑 3층","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-3,y:84,z:-3,dx:6,dy:3,dz:6,name:{"text":"북쪽 탑 4층","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-10,y:64,z:-14,dx:32,dy:30,dz:20,name:{"text":"북쪽 구역","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-22,y:52,z:18,dx:15,dy:17,dz:20,name:{"text":"미로 가는 길","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-6,y:64,z:30,dx:12,dy:5,dz:12,name:{"text":"남쪽 탑 1층","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-6,y:64,z:30,dx:16,dy:5,dz:20,name:{"text":"남쪽 구역","color":"aqua",}},\
    {dimension:"minecraft:frozen",x:-2,y:64,z:7,dx:4,dy:5,dz:22,name:{"text":"얼어붙은 다리","color":"aqua",}},\
    {dimension:"minecraft:dried",x:-9,y:64,z:-9,dx:18,dy:5,dz:18,name:{"text":"메마른 세계","color":"gold",}},\
    {dimension:"minecraft:dried",x:-27,y:64,z:-9,dx:18,dy:5,dz:18,name:{"text":"확장 - 설퍼","color":"gold",}},\
    {dimension:"minecraft:dried",x:9,y:64,z:-9,dx:18,dy:5,dz:18,name:{"text":"확장 - 신나바","color":"gold",}},\
    {dimension:"minecraft:polarnight",x:-3,y:63,z:-21,dx:6,dy:9,dz:6,name:{"text":"구리 제단","color":"white",}},\
    {dimension:"minecraft:polarnight",x:-2,y:63,z:-14,dx:4,dy:9,dz:6,name:{"text":"계단","color":"white",}},\
    {dimension:"minecraft:polarnight",x:-5,y:63,z:11,dx:10,dy:7,dz:10,name:{"text":"정산소","color":"white",}},\
    {dimension:"minecraft:polarnight",x:11,y:63,z:-3,dx:6,dy:4,dz:6,name:{"text":"정보 보관소","color":"white",}},\
    {dimension:"minecraft:polarnight",x:-17,y:63,z:-3,dx:6,dy:4,dz:6,name:{"text":"시간 보관소","color":"white",}},\
    {dimension:"minecraft:polarnight",x:-10,y:63,z:-10,dx:20,dy:5,dz:20,name:{"text":"극야 홀","color":"white",}},\
    {dimension:"minecraft:dawn",x:-31,y:63,z:-6,dx:12,dy:7,dz:12,name:{"text":"얼어붙은 틈","color":"light_purple",}},\
    {dimension:"minecraft:dawn",x:-6,y:63,z:-31,dx:12,dy:7,dz:12,name:{"text":"오버월드 틈","color":"light_purple",}},\
    {dimension:"minecraft:dawn",x:19,y:63,z:-6,dx:12,dy:7,dz:12,name:{"text":"리액터","color":"light_purple",}},\
    {dimension:"minecraft:dawn",x:-6,y:63,z:19,dx:12,dy:7,dz:12,name:{"text":"메마른 틈","color":"light_purple",}},\
    {dimension:"minecraft:dawn",x:-9,y:63,z:-9,dx:18,dy:10,dz:18,name:{"text":"여명 홀","color":"light_purple",}},\
    {dimension:"minecraft:dawn",x:-31,y:63,z:-31,dx:62,dy:10,dz:62,name:{"text":"통로","color":"light_purple",}},\
    {dimension:"minecraft:cosmos",x:0,y:0,z:0,dx:0,dy:0,dz:0,name:{"text":"우주 공간","color":"dark_gray",}},\
]
