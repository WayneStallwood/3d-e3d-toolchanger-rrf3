; tpost2.g
; called after tool 2 has been selected

;heatup
M116 P2   ; Moved to pre for Simple Wiper

;prime nozzle
M98 P"prime.g"  ; Moved to pre for Simple Wiper

;Move Out
G1 Y150 F2500

M106 R2	; restore print cooling fan speed