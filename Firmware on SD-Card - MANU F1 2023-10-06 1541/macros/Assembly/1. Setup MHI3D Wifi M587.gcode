;v1, 3.9.2021
;M104 S215 ;Set temperature
;M106 S102 ;Fan speed
M552 S0					;stop wifi
G4 P500				;pause
M587 S"MHI3D Wi-Fi" P"12345678!"  ;add my network and IP address,gateway,netmask 
;Use I to set IP, like I172.25.9.135 in the M587 command
G4 P500
M500 ;Save settings
M552 S1 ;start wifi again