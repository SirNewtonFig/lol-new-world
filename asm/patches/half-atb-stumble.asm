org $C217AF           ; start of stumble routine
  JSL HalfATBStumble
  NOP

org !HalfTurnStumble_freespace
HalfATBStumble:
  PHX
  TYX
  JSL $C18A0E         ; set ATB to 50%
  PLX
  LDA $3EF8,Y         ; displaced from calling location
  AND #$FE            ; status byte without dance status
  RTL
