# 인터렉션 한 칸 위의 푸른 얼음 유무에 따라 전용 UI를 표시한다.
execute at @s if block ~ ~1 ~ blue_ice run function resource/material/cold/ui/alt_available
execute at @s if block ~ ~1 ~ air run function resource/material/cold/ui/alt_harvested
