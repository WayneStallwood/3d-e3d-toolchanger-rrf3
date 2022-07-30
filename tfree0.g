; tfree0.g
; called when tool 0 is freed

;Drop the bed
G91
G1 Z4 F1000
G90

;Purge nozzle
;M98 P"purge.g"

;Move In
G53 G1 X-12.7 Y150 F50000
G53 G1 X-12.7 Y207.7 F50000
G53 G1 X-12.7 Y220.0 F50000
G53 G1 X-12.7 Y227.0 F2500

;Open Coupler
M98 P"/macros/Coupler - Unlock"

;fan off
M106 P2 S0

;Move Out
G53 G1 X-12.7 Y175 F2500
