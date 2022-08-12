G91                          
G1 Z0.25 F9000                	; Drop Z 0.25mm for Safety
G90                           

M106 S0.33						; Cooling 33%

M106 P9 S.56					; Set Servo Position for Wipe

G1 A35 F3600					; Move Pebble Wiper Down For Clearance

;G1 X325.3 Y139.1 F30000			; Set Up for Vertical Purge with Nozzle Closer to Purge Platform
G1 X316 Y132 F24000	

G1 A22 F3000					; Move Pebble Wiper For Purge

;G1 E3 F600						; Initial Vertical Purge
;G4 P200							; Dwell for .20s
;G1 X316 Y132 F24000	    	    ; Position Nozzle for Initial Purge

G1 E8 F360						; Vertical Pebble Purge

G1 A23.45 F1500					; Move Nozzle Away From Purge Platform
M106 S1							; Cooling 
G1 E4 F360	 					; Pebble Purge
G1 E1 F240						; Final Slow Pebble Purge
G4 P4000						; Dwell for 4s
G1 E-.40						; Retract
M106 P9 S0.3					; Servo Wipe
G4 P200							; Dwell for .20s
G1 X315 Y165 A24 F24000			; Move Nozzle Across Silicone Brush

M106 R2							; Cooling Off

G1 A35 F3600
; Shake it off
M106 P9 S.56
G4 P200
M106 P9 S0.3
G4 P200	
M106 P9 S.56					; Clear servo arm
G4 P200
M106 P9 S0						; Turn Stepper off (generating the pulses was overloading the MCU during prints)

G92 E0							; Reset Extrusion