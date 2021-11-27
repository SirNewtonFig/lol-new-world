org $C242FF
  dw #$3E8A                   ; Dead-end the unused special effect $0F (the other MP crit)
                              ; It is already dummied out in BNW, and we're gonna steal
                              ; its bytes.

org $C23F29
  BNE Return                  ; Exit function if "No Critical and Ignore True Knight" is set

org $C23F2E
  BEQ Return                  ; Exit function if no targets

org $C23F41
  BCC Return                  ; Exit function if weapon would drain more MP than the wielder currently has

org $C23F4D                   ; This is where MP gets updated on an MP Crit
  rep 2 : LSR                 ; Shift #$0200 -> #$0080
  JMP $464C                   ; Set bit on $3204,Y and return
Return:
  RTS                         ; Target of the branches in preceding code
  NOP                         ; Just dummying out this lone byte