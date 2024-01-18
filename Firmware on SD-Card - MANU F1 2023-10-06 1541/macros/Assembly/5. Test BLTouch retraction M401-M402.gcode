;v1, 3.9.2021
G28
M291 P"BLTouch - check that light is stable (not blinking) RED (behind nozzle) and probe is stowed (retracted). Click OK to continue." S3
G4 P200				;pause
M401				;Deploy probe
M291 P"BLTouch - Check that light is OFF and probe is Deployed (pushed down). Click OK to continue." S3
M402				;Retract probe
M291 P"BLTouch - Check that light is stable (not blinking) RED (behind nozzle) and probe is stowed (retracted). Click OK to continue." S3
M291 P"BLTouch - If all checks were fine, then BLTouch is working. Click OK to continue." S3

;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark
