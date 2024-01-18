;v1, 3.9.2021
;M104 S215 ;Set temperature
;M106 S102 ;Fan speed
M291 P"Extruder direction check. No filament. Extrude when cold" S3

M913 E20 ; set extruders 0 to 20% of their normal current
M302 P1 ;Allow Cold Extrudes P1=on, P0=off
M400

M291 P"Press OK to start extruding. Power OFF if wrong. Change in config.g" S3
G1 E100 F120
M291 P"Done. Press OK to continue" S3

M913 E100 ; set extruders 0 and 1 to 30% of their normal current
M302 P0 ;Allow Cold Extrudes P1=on, P0=off
M400

;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark

;https://duet3d.dozuki.com/Wiki/Gcode#Section_M913_Set_motor_percentage_of_normal_current
;M913, sets power to percentage of normal, for use when homing
;Set to 100% After done with macro
;Use M400 always after M913
;Example:
;M913 X50 Y50 Z50 ; set X Y Z motors to 50% of their normal current
;M913 E30:30 ; set extruders 0 and 1 to 30% of their normal current