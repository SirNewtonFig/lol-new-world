org $C219DD       ; Command pointer table entries
  dw Runic
org $C219EF
  dw Row
org $C219F1
  dw Defend

org $C2194C       ; Start of Row command

Row:
  TYX
  LDA $3AA1,X
  EOR #$20
  STA $3AA1,X    ; Toggle Row
  BRA ATBRefund
  
Runic:
  TYX
  LDA $3E4C,X
  ORA #$04
  STA $3E4C,X    ; Set Runic
  LDA #$02
  JSR $5BAB      ; set Defending flag
  BRA WrapUp

Defend:
  TYX
  JSL $C18B9A    ; Load Defending flag (weapon swap stuff also goes through here)
  JSR $5BAB      ; set Defending flag
ATBRefund:
  JSL $C18A0E    ; Refund half ATB
WrapUp:
  JSR $298A      ; Clear special effect, magic power, etc.
  JMP $3167
