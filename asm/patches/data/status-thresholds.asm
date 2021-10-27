; MSB to LSB for each byte

; These definitions may be re-ordered as you like, to
; make it easier to edit it an organized fashion.

; universals
!ST_Sap        = $80
!ST_Slow       = $80

; instant death
!ST_Death      = $78
!ST_Condemned  = $78

; death-like
!ST_Zombie     = $70
!ST_Petrify    = $70

; stop-like
!ST_Freeze     = $68
!ST_Stop       = $68

; loss of control
!ST_Muddle     = $60
!ST_Berserk    = $60
!ST_Dance      = $60
!ST_Rage       = $60

; nuisance
!ST_Poison     = $54
!ST_Sleep      = $54

; action denial
!ST_Mute       = $50
!ST_Blind      = $50

; piss off
!ST_Imp        = $48


; Everything else is either a positive status, or is not
; inflicted by anything. Default threshold, in either case.

!ST_Vanish     = $80
!ST_Magitek    = $80
!ST_Image      = $80
!ST_NearFatal  = $80
!ST_Reflect    = $80
!ST_Safe       = $80
!ST_Shell      = $80
!ST_Haste      = $80
!ST_Regen      = $80
!ST_Float      = $80
!ST_DogBlock   = $80
!ST_Hide       = $80
!ST_Control    = $80
!ST_Morph      = $80
!ST_Life3      = $80


; +===============================+
; | DO NOT REARRANGE THESE THOUGH |
; +===============================+

; Byte 1
db #!ST_Death
db #!ST_Petrify
db #!ST_Imp
db #!ST_Vanish
db #!ST_Magitek
db #!ST_Poison
db #!ST_Zombie
db #!ST_Blind

; Byte 2
db #!ST_Sleep
db #!ST_Sap
db #!ST_Muddle
db #!ST_Berserk
db #!ST_Mute
db #!ST_Image
db #!ST_NearFatal
db #!ST_Condemned

; Byte 3
db #!ST_Reflect
db #!ST_Safe
db #!ST_Shell
db #!ST_Stop
db #!ST_Haste
db #!ST_Slow
db #!ST_Regen
db #!ST_Dance

; Byte 4
db #!ST_Float
db #!ST_DogBlock
db #!ST_Hide
db #!ST_Control
db #!ST_Morph
db #!ST_Life3
db #!ST_Freeze
db #!ST_Rage
