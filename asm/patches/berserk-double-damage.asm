; needs to abort on Umaro and Gau
; alternatively, just have Clubs grant Berserk immunity

org $C2337C				; where Berserk's multiplier is found
	JSL BerserkDoubleMultiplier
	NOP
	
org !BerserkDoubleMultiplier_freespace
BerserkDoubleMultiplier:
	INC $BC			; (Add 50% damage if berserk and physical attack)
	INC $BC			; (Add 50% damage if berserk and physical attack)
	RTL
	
BerserkDoubleMultiplier_EOF: