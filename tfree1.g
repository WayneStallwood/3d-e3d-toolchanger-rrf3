; tfree1.g
; called when tool 1 is freed

;Drop the bed
G91
G1 Z4 F1000
G90

;Purge nozzle
;M98 P"purge.g"

;Move In
G53 G1 X76.8 Y150 F50000
G53 G1 X76.8 Y207 F50000
G53 G1 X76.8 Y220 F50000
G53 G1 X76.8 Y227 F2500

;Open Coupler
M98 P"/macros/Coupler - Unlock"

;fan off
M106 P4 S0

;Move Out
G53 G1 X76.8 Y175 F2500

