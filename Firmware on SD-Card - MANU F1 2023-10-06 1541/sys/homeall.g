; homeall.g
; MHI3D
G91                     ; relative positioning
G1 H1 Z215 F1500         ; move Z up stopping at the endstop
G1 H2 Z-0.5 F1200    ; go back a few mm
G1 H1 Z215 F600  ; move slowly to Z axis endstop once more (second pass)
G1 H1 X-205 Y-155 F5000 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y5 F3000       ; go back a few mm
G1 H1 X-205 Y-155 F600  ; move slowly to X and Y axis endstops once more (second pass)
G90                     ; absolute positioning
G92 X0 Y0 Z210                ; set Z position to axis maximum (you may want to adjust this)


; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Mon Oct 19 2020 17:24:09 GMT+0300 (Eastern European Summer Time)
;G91                     ; relative positioning
;G1 H2 Z215 F1800          ; lift Z relative to current position
;G1 H1 X-205 Y-155 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
;G1 H2 X5 Y5 F1800       ; go back a few mm
;G1 H1 X-205 Y-155 F360  ; move slowly to X and Y axis endstops once more (second pass)
;G90                     ; absolute positioning
;G1 X0 Y84.9 F1800       ; go to first bed probe point and home Z
;G30                     ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F30              ; lift Z relative to current position
;G90                    ; absolute positioning


