hirom

; LNW EL Tweaks (based on esper-level-simplify.asm)
; May, 20, 2022
;
; For LNW, All HP and MP bonuses have been modified to give +15.
;		+20 = $50 for HP, $52 for MP
;		+15 ?= $3C for HP, $3E for MP
;
; HP/MP EL Byte: ppppppx0
;   p: amount to increase HP/MP
;   x: 1: MP, 0: HP
;   0: always 0
;
; Stat EL Byte: 00000ss1
;   0: always 0 (unused)
;   s: index to stat (0: Vigor, 1: Speed, 2: Stamina, 3: Magic)
;   1: always 1

org $C2614E
ELTable:
  dw $3C3C ; $00 - HP++ - Terrato, Crusader
  dw $3E3E ; $01 - MP++ - Ragnarok
  dw $3C3E ; $02 - HP/MP -  Phoenix, Seraph
  dw $013C ; $03 - HP/Vig - Golem
  dw $3E07 ; $04 - MP/Mag - Carbunkl
  dw $0103 ; $05 - Vig/Spd - Palidor, Alexander
  dw $0307 ; $06 - Mag/Spd - Siren
  dw $0105 ; $07 - Vig/Stm - Phantom
  dw $013E ; $08 - Vig/MP - Tritoch
  dw $0305 ; $09 - Spd/Stm - Odin
  dw $3C05 ; $0A - HP/Stm - Kirin, Unicorn, Stray
  dw $053E ; $0B - MP/Stm - Zoneseek
  dw $0101 ; $0C - Vig++ - Ramuh, Bismark
  dw $0303 ; $0D - Spd++ - Ifrit, Fenrir
  dw $0505 ; $0E - Stm++ - Starlet, Maduin
  dw $0707 ; $0F - Mag++ - Shiva, Shoat, Bahamut
  dw $0000 ; $10 - free - n/a
