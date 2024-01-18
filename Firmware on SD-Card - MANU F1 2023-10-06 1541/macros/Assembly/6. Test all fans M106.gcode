;v1, 3.9.2021
M291 P"Testing fans. Press OK to turn OFF." S3
G28
G4 P200				;pause
M106 P0 S0	;Fan P=no. S=speed
M106 P1 S0	;Fan P=no. S=speed
M106 P2 S0	;Fan P=no. S=speed
M106 P3 S0	;Fan P=no. S=speed
M106 P4 S0	;Fan P=no. S=speed
M106 P5 S0	;Fan P=no. S=speed
M106 P6 S0	;Fan P=no. S=speed
M106 P7 S0	;Fan P=no. S=speed
M106 P8 S0	;Fan P=no. S=speed
M106 P9 S0	;Fan P=no. S=speed
M291 P"All software controlled fans are now turned OFF. Press OK to turn ON." S3
M106 P0 S255	;Fan P=no. S=speed
M106 P1 S255	;Fan P=no. S=speed
M106 P2 S255	;Fan P=no. S=speed
M106 P3 S255	;Fan P=no. S=speed
M106 P4 S255	;Fan P=no. S=speed
M106 P5 S255	;Fan P=no. S=speed
M106 P6 S255	;Fan P=no. S=speed
M106 P7 S255	;Fan P=no. S=speed
M106 P8 S255	;Fan P=no. S=speed
M106 P9 S255	;Fan P=no. S=speed
M291 P"All software controlled fans are now turned OK. Check function and click OK to continue. Restart printer after this test." S3

;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark
