;v1, 3.9.2021
;M104 S215 ;Set temperature
;M106 S102 ;Fan speed
M291 P"Move XYZ Motors manually to not touch the endstops." S3
M119				;Report endstops
M291 P"Console should now read: M119: Endstops - X: not stopped, Y: not stopped, Z: not stopped, Z probe: not stopped" S3

M291 P"Move XYZ Motors manually to touch the endstops." S3
M119				;Report endstops
M291 P"Console should now read: M119: Endstops - X: stopped, Y: stopped, Z: stopped, Z probe: not stopped" S3
M291 P"Check the console reports, they should match. Click OK to continue." S3

;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark
