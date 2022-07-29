org $C24383 : dw GPToss     ; special effect 0x51 (0xA2 via GP Toss command)

; GP Toss Special Effect
; Tossed = Lvl * 30
; Dmg = Tossed * Level / 2 / (#Targets + 2)

org $C23FB7
GPToss:
  LDA $3B18,Y     ; attacker's level
  STA $E8         ; save multiplicand for later
  JSR $2B63       ; multiply by 30
  REP #$20        ; 16-bit A
  CPY #$08        ; is attacker a monster
  BCS .monster    ; branch if monster
  JSR $37B6       ; reduce gold (amount reduced in A)
  BNE .throw      ; branch if had some gold to throw
.abort
  STZ $A4         ; make attack target nothing
  LDX #$08        ; "No Money" text ID
  STX $3401       ; set display text ^
  RTS
.monster
  STA $EE         ; save monster level * 30
  LDA $3D98,Y     ; monster's gold (when killed)
  BEQ .abort      ; branch to abort if no gold
  SBC $EE         ; subtract gold thrown (carry set by branch above)
  BCS .ok_monster ; branch if has enough gold to throw
  LDA $3D98,Y     ; else, use remaining gold
  STA $EE         ; update gold thrown
  TDC             ; zero A/B (remaining gold)
.ok_monster
  STA $3D98,Y     ; update monster's gold
  LDA $EE         ; get amount of gold thrown
.throw
  LSR	          ; divide gold thrown by 2
  JSR $47B7       ; $E8 multiplicand already holds level
  LDA $E8         ; $E8 = (level * 30 / 8) * level
  LDX $3EC9       ; number of targets
  INX #2          ; number of targets + 2
  JSR $4792       ; divide damage between targets
  STA $11B0       ; set damage
  RTS
warnpc $C23FFD
padbyte $FF
pad $C23FFC