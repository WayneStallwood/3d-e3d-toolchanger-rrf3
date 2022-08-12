; called to home the A axis (Pebble)

G92 A60
M913 A50			; A MOTOR TO 30% CURRENT
G1 A-80 F4800
M913 A100			; A MOTOR TO 100% CURRENT
G1 A5 F4800
G92 A5

G1 A35 F3600 		; Move to safe position

M106 P9 S0.3
G4 P200
M106 P9 S.56        ; Wiggle the arm 
G4 P200
M106 P9 S0			; Turn Stepper off (generating the pulses was overloading the MCU during prints)

M400