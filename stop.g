; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
M140 R0 ; set bed standby temp
M144; Put bed into standby
M568 P0 R0 ; set tool standby temp
M568 P1 R0
M568 P2 R0
M568 P3 R0