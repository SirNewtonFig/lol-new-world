; Change counterattack rate from (STA + 32) / 129 to
; (SPD/2 + 48) / 128

org $C267F2
  LDA $3B19,X         ; Speed
  LSR                 ; Speed/2
  CLC
  ADC #$30            ; + 48
  STA $10
  JSR $4B5A           ; RNG {0..255}
  LSR                 ; {0..127}
  RTS
