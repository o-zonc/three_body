# 이 함수는 tick에서 factory_trigger 값이 들어온 플레이어를 @s로 지정한 뒤 호출합니다.

execute if score @s factory_trigger matches 1701 run function factory/purchase {id:"wood",unlock:"wood",name:"나무",color:"yellow",purchase:1701,toggle:1711}
execute if score @s factory_trigger matches 1702 run function factory/purchase {id:"stone",unlock:"stone",name:"돌",color:"gray",purchase:1702,toggle:1712}
execute if score @s factory_trigger matches 1703 run function factory/purchase {id:"coal",unlock:"coal",name:"석탄",color:"dark_gray",purchase:1703,toggle:1713}
execute if score @s factory_trigger matches 1704 run function factory/purchase {id:"copper",unlock:"copper",name:"구리",color:"gold",purchase:1704,toggle:1714}
execute if score @s factory_trigger matches 1705 run function factory/purchase {id:"iron",unlock:"iron",name:"철",color:"white",purchase:1705,toggle:1715}
execute if score @s factory_trigger matches 1706 run function factory/purchase {id:"gold",unlock:"gold",name:"금",color:"gold",purchase:1706,toggle:1716}
execute if score @s factory_trigger matches 1707 run function factory/purchase {id:"diamond",unlock:"diamond",name:"다이아몬드",color:"aqua",purchase:1707,toggle:1717}
execute if score @s factory_trigger matches 1708 run function factory/purchase {id:"emerald",unlock:"emerald",name:"에메랄드",color:"green",purchase:1708,toggle:1718}
execute if score @s factory_trigger matches 1709 run function factory/purchase {id:"lapis",unlock:"lapis",name:"청금석",color:"blue",purchase:1709,toggle:1719}
execute if score @s factory_trigger matches 1710 run function factory/purchase {id:"cold",unlock:"cold",name:"냉기",color:"aqua",purchase:1710,toggle:1720}
execute if score @s factory_trigger matches 1711 run function factory/toggle {id:"wood",unlock:"wood",name:"나무",color:"yellow",purchase:1701,toggle:1711}
execute if score @s factory_trigger matches 1712 run function factory/toggle {id:"stone",unlock:"stone",name:"돌",color:"gray",purchase:1702,toggle:1712}
execute if score @s factory_trigger matches 1713 run function factory/toggle {id:"coal",unlock:"coal",name:"석탄",color:"dark_gray",purchase:1703,toggle:1713}
execute if score @s factory_trigger matches 1714 run function factory/toggle {id:"copper",unlock:"copper",name:"구리",color:"gold",purchase:1704,toggle:1714}
execute if score @s factory_trigger matches 1715 run function factory/toggle {id:"iron",unlock:"iron",name:"철",color:"white",purchase:1705,toggle:1715}
execute if score @s factory_trigger matches 1716 run function factory/toggle {id:"gold",unlock:"gold",name:"금",color:"gold",purchase:1706,toggle:1716}
execute if score @s factory_trigger matches 1717 run function factory/toggle {id:"diamond",unlock:"diamond",name:"다이아몬드",color:"aqua",purchase:1707,toggle:1717}
execute if score @s factory_trigger matches 1718 run function factory/toggle {id:"emerald",unlock:"emerald",name:"에메랄드",color:"green",purchase:1708,toggle:1718}
execute if score @s factory_trigger matches 1719 run function factory/toggle {id:"lapis",unlock:"lapis",name:"청금석",color:"blue",purchase:1709,toggle:1719}
execute if score @s factory_trigger matches 1720 run function factory/toggle {id:"cold",unlock:"cold",name:"냉기",color:"aqua",purchase:1710,toggle:1720}
execute if score @s factory_trigger matches 1721 run function factory/toggle_all
execute if score @s factory_trigger matches 1722 run function factory/purchase {id:"heat",unlock:"heat",name:"열기",color:"red",purchase:1722,toggle:1723}
execute if score @s factory_trigger matches 1723 run function factory/toggle {id:"heat",unlock:"heat",name:"열기",color:"red",purchase:1722,toggle:1723}

# 처리한 플레이어만 초기화하고 다음 /trigger 입력을 허용합니다.
scoreboard players reset @s factory_trigger
scoreboard players enable @s factory_trigger
