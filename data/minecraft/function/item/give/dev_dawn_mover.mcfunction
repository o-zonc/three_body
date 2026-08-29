# DEV 전용 여명 차원 이동기
# test/give_all_mover 등에서 호출해도 dev 태그 플레이어에게만 지급합니다.
execute as @a[tag=dev] run function item/give/to_inventory {item:'yellow_dye[custom_name={"text":"[DEV] 여명 이동기",color:"gold",italic:false},custom_data={"dev_dawn_move":1b},lore=[{"text":"DEV 기계 - 웅크리기로 사용",color:"red",italic:false},{"text":""},{"text":"여명 차원으로 즉시 이동합니다.",color:"gray",italic:false},{"text":"dev 태그 플레이어만 사용할 수 있습니다.",color:"dark_gray",italic:true}],item_model="spire_armor_trim_smithing_template"]',amount:1}
