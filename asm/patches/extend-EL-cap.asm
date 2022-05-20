; extend EL cap to 30
; exp values modified to so that the max is 65535 (FFFF)
; which means it now breaks from BNW lvl values. Oh well

org $ED8BCA
DB $10,$00		; Level 1 = 16			Get Espers
DB $30,$00		; Level 2 = 48
DB $50,$00		; Level 3 = 80
DB $70,$00		; Level 4 = 112
DB $B0,$00		; Level 5 = 176
DB $FF,$00		; Level 6 = 255
DB $9C,$01		; Level 7 = 412
DB $80,$02		; Level 8 = 640			post-IMF				640
DB $39,$03		; Level 9 = 825
DB $29,$04		; Level 10 = 1065
DB $5E,$05		; Level 11 = 1374
DB $EC,$06		; Level 12 = 1772
DB $EE,$08		; Level 13 = 2286
DB $86,$0B		; Level 14 = 2950
DB $00,$0F		; Level 15 = 3840		World of Ruin			3840
DB $8C,$11		; Level 16 = 4492		
DB $88,$14		; Level 17 = 5256
DB $06,$18		; Level 18 = 6150
DB $1C,$1C		; Level 19 = 7196
DB $E4,$20		; Level 20 = 8420
DB $7A,$26		; Level 21 = 9850
DB $00,$2D		; Level 22 = 11520		Found Friends			11520
DB $08,$33		; Level 23 = 13064
DB $A0,$41		; Level 24 = 16800		
DB $6A,$4A		; Level 25 = 19050
DB $64,$54		; Level 26 = 21604
DB $B4,$5F		; Level 27 = 24500
DB $84,$6C		; Level 28 = 27780		Kefka's Tower			24320
DB $0E,$7B		; Level 29 = 31502
DB $8D,$8B		; Level 30 = 35725		


; modify CMP values in synchysi's esper_changes.asm so as to match the extended EL cap

org $C2A6E0
CMP #$1E

org $C3F34E
CMP #$1E