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
  dw $3C3C ; $00 - 40HP - Terrato, Crusader
  dw $3E3E ; $01 - 40MP - Ragnarok
  dw $3C3E ; $02 - 20HP/20MP -  Phoenix
  dw $013C ; $03 - 20HP/Vig - Golem
  dw $3E07 ; $04 - 20MP/Mag - Carbunkl
  dw $0103 ; $05 - Vig/Spd - Palidor
  dw $0307 ; $06 - Mag/Spd - Siren
  dw $0105 ; $07 - Vig/Stm - Phantom
  dw $013E ; $08 - Vig/20MP - Tritoch
  dw $073C ; $09 - 20HP/Mag - Alexander
  dw $3C05 ; $0A - 20HP/Stm - Kirin, Unicorn, Stray
  dw $053E ; $0B - 20MP/Stm - Zoneseek, Seraph
  dw $0101 ; $0C - 2Vig - Ramuh, Bismark
  dw $0303 ; $0D - 2Spd - Ifrit, Fenrir
  dw $0505 ; $0E - 2Stm - Starlet, Maduin
  dw $0707 ; $0F - 2Mag - Shiva, Shoat, Bahamut
  dw $0000 ; $10 - null - Raiden?
