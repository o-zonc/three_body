# 매크로 인수: id
# check 현황판은 제외하고 powered 상태를 보존한 채 lit 상태만 변경한다.
# 중복 interaction이 남아 있어도 주 공장 영역의 한 개만 대상으로 삼아 실행량을 제한한다.
$execute in overworld at @e[type=interaction,tag=factory,tag=$(id),tag=!check,x=-36,y=-64,z=0,dx=44,dy=32,dz=40,sort=nearest,limit=1] if score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=false] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=false]
$execute in overworld at @e[type=interaction,tag=factory,tag=$(id),tag=!check,x=-36,y=-64,z=0,dx=44,dy=32,dz=40,sort=nearest,limit=1] if score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=true] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=true]
$execute in overworld at @e[type=interaction,tag=factory,tag=$(id),tag=!check,x=-36,y=-64,z=0,dx=44,dy=32,dz=40,sort=nearest,limit=1] unless score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=false] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=false]
$execute in overworld at @e[type=interaction,tag=factory,tag=$(id),tag=!check,x=-36,y=-64,z=0,dx=44,dy=32,dz=40,sort=nearest,limit=1] unless score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=true] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=true]
