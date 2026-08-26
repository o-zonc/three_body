execute store result score #recycle_dimension_roll tmp run random value 0..2
execute if score #recycle_dimension_roll tmp matches 0 store result score #recycle_resource_roll tmp run random value 0..6
execute if score #recycle_dimension_roll tmp matches 1 store result score #recycle_resource_roll tmp run random value 0..1
execute if score #recycle_dimension_roll tmp matches 2 store result score #recycle_resource_roll tmp run random value 0..1

# 오버월드: 7종
execute if score #recycle_dimension_roll tmp matches 0 if score #recycle_resource_roll tmp matches 0 run function dried/recycle/reward {id:"wood",name:"나무",color:"yellow",shadow:-16777216}
execute if score #recycle_dimension_roll tmp matches 0 if score #recycle_resource_roll tmp matches 1 run function dried/recycle/reward {id:"stone",name:"돌",color:"gray",shadow:-16777216}
execute if score #recycle_dimension_roll tmp matches 0 if score #recycle_resource_roll tmp matches 2 run function dried/recycle/reward {id:"coal",name:"석탄",color:"dark_gray",shadow:-16777216}
execute if score #recycle_dimension_roll tmp matches 0 if score #recycle_resource_roll tmp matches 3 run function dried/recycle/reward {id:"copper",name:"구리",color:"gold",shadow:-16777216}
execute if score #recycle_dimension_roll tmp matches 0 if score #recycle_resource_roll tmp matches 4 run function dried/recycle/reward {id:"iron",name:"철",color:"white",shadow:-16777216}
execute if score #recycle_dimension_roll tmp matches 0 if score #recycle_resource_roll tmp matches 5 run function dried/recycle/reward {id:"emerald",name:"에메랄드",color:"green",shadow:-16777216}
execute if score #recycle_dimension_roll tmp matches 0 if score #recycle_resource_roll tmp matches 6 run function dried/recycle/reward {id:"lapis",name:"청금석",color:"blue",shadow:-16777216}

# 메마른 세계: 2종
execute if score #recycle_dimension_roll tmp matches 1 if score #recycle_resource_roll tmp matches 0 run function dried/recycle/reward {id:"gold",name:"금",color:"gold",shadow:-7710208}
execute if score #recycle_dimension_roll tmp matches 1 if score #recycle_resource_roll tmp matches 1 run function dried/recycle/reward {id:"heat",name:"열기",color:"red",shadow:-16777216}

# 얼어붙은 세계: 2종
execute if score #recycle_dimension_roll tmp matches 2 if score #recycle_resource_roll tmp matches 0 run function dried/recycle/reward {id:"diamond",name:"다이아몬드",color:"aqua",shadow:-16741750}
execute if score #recycle_dimension_roll tmp matches 2 if score #recycle_resource_roll tmp matches 1 run function dried/recycle/reward {id:"cold",name:"냉기",color:"aqua",shadow:-16777216}
