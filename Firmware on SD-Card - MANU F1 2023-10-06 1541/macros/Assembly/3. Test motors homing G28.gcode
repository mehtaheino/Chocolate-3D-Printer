;v1, 3.9.2021
;M104 S215 ;Set temperature
;M106 S102 ;Fan speed
M913 X30 Y30 Z30 ; set X Y Z motors to 20% of their normal current
M400

M291 P"Press ok to home X. Power OFF if wrong direction and change in config.g. Motors power reduced to 20%. " S3
G28 X
M291 P"Press ok to home Y. Power OFF if wrong direction and change in config.g." S3
G28 Y
M291 P"Press ok to home Z. Power OFF if wrong direction and change in config.g." S3
G28 Z
M291 P"Done. Press OK to continue" S3
M913 X100 Y100 Z100 ; set X Y Z motors to 100% of their normal current
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