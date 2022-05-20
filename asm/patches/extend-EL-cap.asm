; extend EL cap to 30
; exp values modified to so that the max is 65535 (FFFF)
; which means it now breaks from BNW lvl values. Oh well

org $ED8BCA
DB $18,$00		; Level 1 = 24
DB $30,$00		; Level 2 = 48
DB $90,$00		; Level 3 = 144
DB $20,$01		; Level 4 = 288
DB $E0,$01		; Level 5 = 480
DB $00,$03		; Level 6 = 768
DB $80,$04		; Level 7 = 1152
DB $57,$06		; Level 8 = 1632
DB $A0,$08		; Level 9 = 2208
DB $40,$0B		; Level 10 = 2880
DB $40,$11		; Level 11 = 4416
DB $40,$14		; Level 12 = 5184
DB $00,$18		; Level 13 = 6144
DB $80,$1C		; Level 14 = 7296
DB $C0,$21		; Level 15 = 8640
DB $C0,$27		; Level 16 = 10176
DB $80,$2E		; Level 17 = 11904
DB $00,$36		; Level 18 = 13824
DB $40,$3E		; Level 19 = 15936
DB $40,$47		; Level 20 = 18240
DB $40,$59		; Level 21 = 22848
DB $C0,$63		; Level 22 = 25536
DB $C0,$6F		; Level 23 = 28608
DB $40,$7D		; Level 24 = 32064
DB $40,$8C		; Level 25 = 35904
DB $40,$9E		; Level 26 = 40512
DB $40,$B3		; Level 27 = 45888
DB $40,$CB		; Level 28 = 52032
DB $40,$E6		; Level 29 = 58944
DB $FF,$FF		; Level 30 = 65535


; modify CMP values in synchysi's esper_changes.asm so as to match the extended EL cap

org $C2A6E0
CMP #$1E

org $C3F34E
CMP #$1E