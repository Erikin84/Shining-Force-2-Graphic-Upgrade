
; ASM FILE data\maps\entries\map05\mapsetups\s2_212.asm :
; 0x6043A..0x604C8 : 
ms_map5_flag212_EntityEvents:
		msEntityEvent 28, DOWN, sub_60452-ms_map5_flag212_EntityEvents
		msEntityEvent 27, UP, sub_60458-ms_map5_flag212_EntityEvents
		msEntityEvent 128, DOWN, sub_60460-ms_map5_flag212_EntityEvents
		msEntityEvent 129, DOWN, sub_60468-ms_map5_flag212_EntityEvents
		msEntityEvent 130, RIGHT, sub_60476-ms_map5_flag212_EntityEvents
		msDefaultEntityEvent 0, return_604C6-ms_map5_flag212_EntityEvents

; =============== S U B R O U T I N E =======================================

sub_60452:
		 
		txt     $D9B            ; "I can't believe it!{N}I want to die, but I can't!{W1}"
		rts

	; End of function sub_60452


; =============== S U B R O U T I N E =======================================

sub_60458:
		 
		script  cs_60F18
		rts

	; End of function sub_60458


; =============== S U B R O U T I N E =======================================

sub_60460:
		jsr     j_ChurchActions
		rts

	; End of function sub_60460


; =============== S U B R O U T I N E =======================================

sub_60468:
		move.b  #$1D,((CURRENT_SHOP_INDEX-$1000000)).w
		jsr     j_ShopActions
		rts

	; End of function sub_60468


; =============== S U B R O U T I N E =======================================

sub_60476:
		 
		chkFlg  $1C             ; Lemon joined
		beq.s   byte_60494      
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		clr.w   ((CURRENT_SPEAK_SOUND-$1000000)).w
		clr.w   ((TEXT_NAME_INDEX_1-$1000000)).w
		txt     $1A7            ; "{NAME} investigated{N}the area.{W2}{CLEAR}"
		txt     $FF2            ; "A hole.{W1}"
		bra.s   return_604C6
byte_60494:
		chkFlg  $3B1            ; set after recruiting Lemon in Yeel
		bne.s   return_604C6
		script  cs_6060E
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$1C,d0
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		jsr     LoadAndDisplayCurrentPortrait
		txt     $D9B            ; "I can't believe it!{N}I want to die, but I can't!{W1}"
		setFlg  $3B1            ; set after recruiting Lemon in Yeel
return_604C6:
		rts

	; End of function sub_60476

