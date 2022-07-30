G91 					; use relative positioning
G1 S2 Z5 F5000			; lift Z 5mm
G90 					; back to absolute positioning
G1 X-10 Y200 F50000		; move out the way.

M568 P0 R0 ; set tool standby temp
M568 P1 R0
M568 P2 R0
M568 P3 R0