;v1, 3.9.2021
;M104 S215 ;Set temperature
;M106 S102 ;Fan speed
M291 P"PID Tuning. Make sure Heater is connected, insulator installed, and fans connected." S3
G28
M303 H1 S45 ;PID Tune 45c
M291 P"PID Tuning started. Wait for ready, then save results
 with "M500"" S1 ;S1 non-blocking close button
;M400 ; wait (not working yet, RRF v 3.3)

;M291 P"PID Tuning ready. Press OK to save settings and continue" S3
;M500 ; Save config.override
;M400 ; wait
;M291 P"Done. Press OK to continue" S3

;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark
