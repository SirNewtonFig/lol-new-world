org $C215A5
  JSL BlitzSlice
  NOP

org !HalfTurnBlitz_freespace
BlitzSlice:
  LDA #$43
  STA $3401         ; Set to display text "Incorrect Blitz input!"
  PHX
  TYX
  JSL $C18A0E       ; Reimburse half ATB
  PLX
  RTL
