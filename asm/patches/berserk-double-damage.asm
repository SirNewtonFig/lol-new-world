; needs to abort on Umaro and Gau
; The other thing you could do is put a little slice in where the berserk multiplier gets applied, and do a little if/elsif/else branch that checks for Rage status or Umaro actor ID and just leaves the multiplier alone. So they'd get zerked, but it does nothing useful for them.
; alternatively, just have Clubs grant Berserk immunity
; Umaro id = $300D
; Gau id = $300B
; $3A93 =? Rage

; C2/2dc1 is function for loading Rage's status immunities
; C2/04d4 is what commands a berserked character may use
; c2/163b determines umaro's attacks

org $C2337C				; where Berserk's multiplier is found
	JSL BerserkDoubleMultiplier
	NOP
	
org !BerserkDoubleMultiplier_freespace
BerserkDoubleMultiplier:
	INC $BC			; (Add 50% damage if berserk and physical attack)
	INC $BC			; (Add 50% damage if berserk and physical attack)
	RTL
	
BerserkDoubleMultiplier_EOF: