# 매크로 인수: role
# 같은 역할 태그를 가진 interaction 중 하나만 보존한다.
$tag @e[type=interaction,tag=factory,tag=!shop,tag=$(role),x=-36,y=-64,z=0,dx=44,dy=32,dz=40,sort=arbitrary,limit=1] add factory_dedup_keep
$kill @e[type=interaction,tag=factory,tag=!shop,tag=$(role),tag=!factory_dedup_keep,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
