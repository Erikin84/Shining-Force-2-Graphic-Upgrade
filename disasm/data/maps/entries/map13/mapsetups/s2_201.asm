
; ASM FILE data\maps\entries\map13\mapsetups\s2_201.asm :
; 0x5814C..0x5822A : 
ms_map13_flag201_EntityEvents:
		msEntityEvent 128, UP, sub_58184-ms_map13_flag201_EntityEvents
		msEntityEvent 129, UP, sub_5818A-ms_map13_flag201_EntityEvents
		msEntityEvent 130, RIGHT, (sub_58078-ms_map13_flag201_EntityEvents) & $FFFF
		msEntityEvent 131, UP, (sub_58090-ms_map13_flag201_EntityEvents) & $FFFF
		msEntityEvent 132, UP, (sub_5809E-ms_map13_flag201_EntityEvents) & $FFFF
		msEntityEvent 133, DOWN, sub_58190-ms_map13_flag201_EntityEvents
		msEntityEvent 134, DOWN, (sub_580C6-ms_map13_flag201_EntityEvents) & $FFFF
		msEntityEvent 135, UP, sub_58196-ms_map13_flag201_EntityEvents
		msEntityEvent 136, UP, sub_5819C-ms_map13_flag201_EntityEvents
		msEntityEvent 137, RIGHT, sub_581A2-ms_map13_flag201_EntityEvents
		msEntityEvent 138, DOWN, sub_58218-ms_map13_flag201_EntityEvents
		msEntityEvent 139, UP, sub_5821E-ms_map13_flag201_EntityEvents
		msEntityEvent 140, UP, sub_58224-ms_map13_flag201_EntityEvents
		msDefaultEntityEvent 0, (nullsub_116-ms_map13_flag201_EntityEvents) & $FFFF

; =============== S U B R O U T I N E =======================================

sub_58184:
		 
		txt $59F                ; "I've been to a desolate{N}port town in the south....{W1}"
		rts

	; End of function sub_58184


; =============== S U B R O U T I N E =======================================

sub_5818A:
		 
		txt $5A0                ; "They say, a huge monster{N}lives in the river.{W1}"
		rts

	; End of function sub_5818A


; =============== S U B R O U T I N E =======================================

sub_58190:
		 
		txt $5A1                ; "You saw Volcanon?{N}Are you serious?{W2}{N}I've never met him, though{N}I've lived here all my life.{W1}"
		rts

	; End of function sub_58190


; =============== S U B R O U T I N E =======================================

sub_58196:
		 
		txt $5A2                ; "There's a desert in the south.{W2}{N}Ancient ruins lay in the{N}desert.{W1}"
		rts

	; End of function sub_58196


; =============== S U B R O U T I N E =======================================

sub_5819C:
		 
		txt $5A3                ; "I could help you if I were{N}younger.{W2}{N}But now I'm too darn old.{N}Drat!{W1}"
		rts

	; End of function sub_5819C


; =============== S U B R O U T I N E =======================================

sub_581A2:
		 
		chkFlg $2CE             ; set after Oddler runs after you as you leave Polca, and tags along
		bne.s   byte_58212      
		chkFlg $2CD             ; set after the mayor first tries to have you take Oddler with you (Peter declines)
		bne.s   byte_5820C      
		chkFlg $2CC             ; set after your raft-giving conversation with the mayor in Polca
		bne.s   byte_58206      
		chkFlg $104             ; Temporary map setup flag 04
		bne.s   byte_581C4      
		txt $5A8                ; "Pl...please...take that boy{N}with you!{W1}"
		setFlg $104             ; Temporary map setup flag 04
		bra.s   loc_58204
byte_581C4:
		chkFlg $105             ; Temporary map setup flag 05
		bne.s   byte_581D4      
		txt $5A9                ; "Ddddd...don't kill me!{W1}"
		setFlg $105             ; Temporary map setup flag 05
		bra.s   loc_58204
byte_581D4:
		chkFlg $106             ; Temporary map setup flag 06
		bne.s   byte_581E4
		txt $5AA                ; "Please, take him!{W1}"
		setFlg $106             ; Temporary map setup flag 06
		bra.s   loc_58204
byte_581E4:
		script  cs_58856
		setFlg $2CC             ; set after your raft-giving conversation with the mayor in Polca
		setFlg $40              ; Raft is unlocked (0x05264)
		move.b  #$48,((RAFT_MAP_INDEX-$1000000)).w 
		move.b  #$2B,((RAFT_X-$1000000)).w 
		move.b  #$30,((RAFT_Y-$1000000)).w 
loc_58204:
		bra.s   loc_5820A
byte_58206:
		txt $5E8                ; "Why don't you take a look{N}at it right now?{W1}"
loc_5820A:
		bra.s   loc_58210
byte_5820C:
		txt $5AB                ; "Do I have to ask you to{N}take him with you again?{W1}"
loc_58210:
		bra.s   return_58216
byte_58212:
		txt $5A4                ; "Before we knew...we tried{N}to avoid the fighting....{W1}"
return_58216:
		rts

	; End of function sub_581A2


; =============== S U B R O U T I N E =======================================

sub_58218:
		 
		txt $5A5                ; "Clank!  Clank!{W2}{N}I heard that blacksmiths in{N}ancient times made special{N}weapons from a rare metal.{W1}"
		rts

	; End of function sub_58218


; =============== S U B R O U T I N E =======================================

sub_5821E:
		 
		txt $5A6                ; "I need more hair and more{N}courage!{W2}{N}I couldn't move when I{N}saw the devils....{W1}"
		rts

	; End of function sub_5821E


; =============== S U B R O U T I N E =======================================

sub_58224:
		 
		txt $5A7                ; "Who are you?{N}Excuse me, but...{N}I'm blind.{W1}"
		rts

	; End of function sub_58224

