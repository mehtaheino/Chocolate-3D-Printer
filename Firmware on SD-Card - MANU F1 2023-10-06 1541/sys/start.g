G29 S2                  ; clear pervious height map
G21			; units to mm
G90			; absolute positioning;
;M83                    ;relative positioning
M82			; set extruder to absolute
M400
;M280 P3 S160 I1         ; reset bl touch
G28			; home all

;****BLTouch routine****
;G1 X10 Y0 Z20 F9000	; probe one point 1/2
;G30	              		; probe one point 2/2
;G29	                	; Option: probe heightmap

;set zero level
G1 X0 Y0 F1200
G1 F600 Z8.5 ; Measured 6-10-2023, with 1mm nozzle
G92 Z0