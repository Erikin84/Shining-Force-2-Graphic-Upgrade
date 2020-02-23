
PROJECT_SF2GU:  equ 1
EXPANDED_ROM:   equ 1

; ---------------------------------------------------------------------------

; enum AllyBattleAnimations_Properties
DODGE_ANIMATIONS_START:     equ 59
SPECIAL_ANIMATIONS_START:   equ DODGE_ANIMATIONS_START*2
SPEARTHROW_ANIMATION_KNTE:  equ SPECIAL_ANIMATIONS_START
SPEARTHROW_ANIMATION_PLDN:  equ SPECIAL_ANIMATIONS_START+2
SPEARTHROW_ANIMATION_PGNT:  equ SPECIAL_ANIMATIONS_START+3

; ---------------------------------------------------------------------------

; enum AllyBattleSprites
ALLYBATTLESPRITE_BOWIE_BASE:        equ 0
ALLYBATTLESPRITE_BOWIE_PROMO:       equ 1
ALLYBATTLESPRITE_SARAH_BASE:        equ 2
ALLYBATTLESPRITE_SARAH_PROMO:       equ 3
ALLYBATTLESPRITE_SARAH_SPECIAL:     equ 4
ALLYBATTLESPRITE_CHESTER_BASE:      equ 5
ALLYBATTLESPRITE_CHESTER_PROMO:     equ 6
ALLYBATTLESPRITE_CHESTER_SPECIAL:   equ 7
ALLYBATTLESPRITE_JAHA_BASE:         equ 8
ALLYBATTLESPRITE_JAHA_PROMO:        equ 9
ALLYBATTLESPRITE_JAHA_SPECIAL:      equ 10
ALLYBATTLESPRITE_KAZIN_BASE:        equ 11
ALLYBATTLESPRITE_KAZIN_PROMO:       equ 12
ALLYBATTLESPRITE_KAZIN_SPECIAL:     equ 13
ALLYBATTLESPRITE_SLADE_BASE:        equ 14
ALLYBATTLESPRITE_SLADE_PROMO:       equ 15
ALLYBATTLESPRITE_KIWI_BASE:         equ 16
ALLYBATTLESPRITE_KIWI_PROMO:        equ 17
ALLYBATTLESPRITE_PETER_BASE:        equ 18
ALLYBATTLESPRITE_PETER_PROMO:       equ 19
ALLYBATTLESPRITE_MAY_BASE:          equ 20
ALLYBATTLESPRITE_MAY_PROMO:         equ 21
ALLYBATTLESPRITE_GERHALT_BASE:      equ 22
ALLYBATTLESPRITE_GERHALT_PROMO:     equ 23
ALLYBATTLESPRITE_LUKE_BASE:         equ 24
ALLYBATTLESPRITE_LUKE_PROMO:        equ 25
ALLYBATTLESPRITE_ROHDE_SPECIAL:     equ 26
ALLYBATTLESPRITE_RICK_BASE:         equ 27
ALLYBATTLESPRITE_RICK_PROMO:        equ 28
ALLYBATTLESPRITE_RICK_SPECIAL:      equ 29
ALLYBATTLESPRITE_ELRIC_BASE:        equ 30
ALLYBATTLESPRITE_ELRIC_PROMO:       equ 31
ALLYBATTLESPRITE_ELRIC_SPECIAL:     equ 32
ALLYBATTLESPRITE_ERIC_BASE:         equ 33
ALLYBATTLESPRITE_ERIC_PROMO:        equ 34
ALLYBATTLESPRITE_ERIC_SPECIAL:      equ 35
ALLYBATTLESPRITE_KARNA_BASE:        equ 36
ALLYBATTLESPRITE_KARNA_PROMO:       equ 37
ALLYBATTLESPRITE_KARNA_SPECIAL:     equ 38
ALLYBATTLESPRITE_RANDOLF_BASE:      equ 39
ALLYBATTLESPRITE_RANDOLF_PROMO:     equ 40
ALLYBATTLESPRITE_RANDOLF_SPECIAL:   equ 41
ALLYBATTLESPRITE_TYRIN_BASE:        equ 42
ALLYBATTLESPRITE_TYRIN_PROMO:       equ 43
ALLYBATTLESPRITE_TYRIN_SPECIAL:     equ 44
ALLYBATTLESPRITE_JANET_BASE:        equ 45
ALLYBATTLESPRITE_JANET_PROMO:       equ 46
ALLYBATTLESPRITE_JANET_SPECIAL:     equ 47
ALLYBATTLESPRITE_HIGINS_PROMO:      equ 48
ALLYBATTLESPRITE_SCREECH_PROMO:     equ 49
ALLYBATTLESPRITE_TAYA_SPECIAL:      equ 50
ALLYBATTLESPRITE_FRAYJA_PROMO:      equ 51
ALLYBATTLESPRITE_JARO_SPECIAL:      equ 52
ALLYBATTLESPRITE_GYAN_PROMO:        equ 53
ALLYBATTLESPRITE_SHEELA_SPECIAL:    equ 54
ALLYBATTLESPRITE_ZYNK:              equ 55
ALLYBATTLESPRITE_CHAZ_PROMO:        equ 56
ALLYBATTLESPRITE_LEMON:             equ 57
ALLYBATTLESPRITE_CLAUDE:            equ 58

; ---------------------------------------------------------------------------

; enum WeaponSprites_Properties
SPEAR_WEAPONSPRITES_START:  equ WEAPONSPRITE_SPEAR
SPEAR_WEAPONSPRITES_END:    equ WEAPONSPRITE_JAVELIN

; ---------------------------------------------------------------------------

    include sf2.asm