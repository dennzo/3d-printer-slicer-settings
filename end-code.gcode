M400 ; Wait for current moves to finish

M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)

G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G90 ; Absolute positioning
G1 X0 Y{machine_depth} F3000 ;Wipe out and Present print
G91 ;Relative positioning
G1 Z10 ;Raise Z more
G90 ;Absolute positioning

;G1 X0 Y{machine_depth} ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

G0 X0 Y{machine_depth} F5000 ; Move Heat Bed to the front for easy print removal

M84 X Y E ;Disable all steppers but Z
