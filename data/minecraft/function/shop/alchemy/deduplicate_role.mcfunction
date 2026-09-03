# 매크로 인수: role
# 같은 역할 태그를 가진 연금술 공방 interaction 중 하나만 보존한다.
$tag @e[type=interaction,tag=alchemy,tag=!item,tag=$(role),x=-40,y=-64,z=-40,dx=40,dy=32,dz=40,sort=arbitrary,limit=1] add alchemy_dedup_keep
$kill @e[type=interaction,tag=alchemy,tag=!item,tag=$(role),tag=!alchemy_dedup_keep,x=-40,y=-64,z=-40,dx=40,dy=32,dz=40]
