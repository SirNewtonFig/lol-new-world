org $C23B23				; where Sketch and Control are setting "missed"
	JSL SketchSlice
	NOP
	
org !HalfTurnSketch_freespace
SketchSlice:
	TSB $3A5A			; (Set target as missed)
	TRB $A4				; (Miss target)
	JSR HalfATBY		; set ATB to 50%
	RTL
	
HalfTurnSketchFailure_EOF:

