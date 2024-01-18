;v1, 3.9.2021
;M104 S215 ;Set temperature
;M106 S102 ;Fan speed
M291 P"Calibrate BLTouch. Make sure Heater is connected, insulator installed, and fans connected." S3
;M104 S200 ;Heat nozzle
;M106 S102 ;Fan
G28
G1 X125 Y100 Z100 F9000 ;Brushing position

M291 P"Heating nozzle. Brush nozzle clean. Click OK when ready." S3

;BLTOUCH TEST MACRO: MANU E1: APPROACH
G1 X125 Y75 Z55 F6000

M291 P"Remove build-late and place polished metal plate under nozzle. Press OK when ready." S3
M291 P"Move Z down and use steel shim gauge 0.05mm to ensure it almost touches. Press OK when ready." S3 Z1
G92 Z0
;BLTOUCH TEST MACRO: MANU E1: MEASURE
G91 ;Relative moves mode
G1 Y-40 F6000 ;Y position -40mm
G90
;Probe 1
G1 Z55 F6000
G4 S-1
G30 S-1
;Probe 2
G1 Z55 F6000
G30 S-1
G4 S2
;Probe 3
;G1 Z15 F6000
;G30 S-1
;G4 S2
;M400 ; wait
G1 Z55 F6000


;Home Z
G90 ;Absolute mode
G28 Z ; Home z
G31 ; Report current probe settings
;M291 P"Ready. Press OK to save settings and continue" S3
;TO-DO
;M500 ; Save config.override with the probe offset value
;M400 ; wait
;M291 P"Done. Press OK to continue" S3




;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark
