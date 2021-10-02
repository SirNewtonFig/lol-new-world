org $C229C5
  JSL HalfATBWeapon
  NOP

org !HalfTurnBrushes_freespace
HalfATBWeapon:
  LDA $3BA4,X       ; weapon properties
  PHA
  BIT #$10          ; half-atb flag
  BEQ +
  JSL $C18A0E       ; set ATB to 50%
+ PLA
  AND #$60          ; isolate "Same damage from back row" and "2-hand" properties (displaced from calling location)
  RTL               ; continue

; $D85013 = start of weapon flags
; $1E = block size
; $3D = Light Brush id
; $3E = Monet Brush id
; $3F = Dali Brush id
; $40 = Ross Brush id
; start + block size * id = address to modify
; $30 = $20 (no back row penalty) + $10 (new half ATB flag)

org $D85739         ; Light Brush weapon flags byte
  db $30
org $D85757         ; Monet Brush weapon flags byte
  db $30
org $D85775         ; Dali Brush weapon flags byte
  db $30
org $D85793         ; Ross Brush weapon flags byte
  db $30            

