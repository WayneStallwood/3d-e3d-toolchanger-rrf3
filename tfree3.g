; tfree3.g
; called when tool 3 is freed

;Drop the bed
G91
G1 Z4 F1000
G90

;Purge nozzle
;M98 P"purge.g"

;Move In
G53 G1 X301.6 Y150 F50000
G53 G1 X301.6 Y207 F50000
G53 G1 X301.6 Y220 F50000
G53 G1 X301.6 Y228 F2500

;Open Coupler
M98 P"/macros/Coupler - Unlock"

;fan off
M106 P8 S0

;Move Out
G53 G1 X301.6 Y175 F2500

