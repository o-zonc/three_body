# 자원 노드 청크는 상시 로드된다. 1틱 지연은 정산 복원 스코어가 모두
# 확정된 다음 실제 블록을 배치하도록 하는 상태 적용 경계로 유지한다.
schedule function reckoning/vault/restore_nodes_apply 1t replace
