
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/utils_1/imports/synth_1/alarm_main.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2n
lC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/utils_1/imports/synth_1/alarm_main.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
e
Command: %s
53*	vivadotcl24
2synth_design -top alarm_main -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
6520Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1300.309 ; gain = 440.656
h px� 
�
>possible infinite loop; process does not have a wait statement2551*oasys2q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
508@Z8-2551h px� 
�
synthesizing module '%s'638*oasys2

alarm_main2f
bC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/alarm_main.vhd2
288@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
password_checker2l
hC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/password_checker.vhd2
298@Z8-638h px� 
�
synthesizing module '%s'638*oasys2

PmodKYPD2c
_C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/keypad2.vhd2
188@Z8-638h px� 
�
synthesizing module '%s'638*oasys2	
Decoder2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/keypad.vhd2
158@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
Decoder2
02
12b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/keypad.vhd2
158@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
DisplayController2q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
188@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
reset2q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
268@Z8-614h px� 
�
synthesizing module '%s'638*oasys2
clkdiv2i
eC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/clock_divider.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clkdiv2
02
12i
eC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/clock_divider.vhd2
148@Z8-256h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2	
DispVal2q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
528@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

dispVal02q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
528@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

dispVal12q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
528@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

dispVal22q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
528@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DisplayController2
02
12q
mC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/seven_segment_display.vhd2
188@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

PmodKYPD2
02
12c
_C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/keypad2.vhd2
188@Z8-256h px� 
�
synthesizing module '%s'638*oasys2	
fsm_top2k
gC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/fsm_counter_top.vhd2
148@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
FSM2r
nC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/fsm_incorrect_password.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FSM2
02
12r
nC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/fsm_incorrect_password.vhd2
168@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
ssd_counter2g
cC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/ssd_counter.vhd2
138@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
clock2i
eC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/counter_10sec.vhd2
188@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clock2
02
12i
eC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/counter_10sec.vhd2
188@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
mux2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/an_mux.vhd2
198@Z8-638h px� 
�
default block is never used226*oasys2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/an_mux.vhd2
258@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
incorrect_count2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/an_mux.vhd2
238@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
num2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/an_mux.vhd2
238@Z8-614h px� 
�
synthesizing module '%s'638*oasys2

cdecoder2g
cC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/cat_decoder.vhd2
128@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
blank2g
cC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/cat_decoder.vhd2
148@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

cdecoder2
02
12g
cC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/cat_decoder.vhd2
128@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mux2
02
12b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/an_mux.vhd2
198@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ssd_counter2
02
12g
cC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/ssd_counter.vhd2
138@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
fsm_top2
02
12k
gC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/fsm_counter_top.vhd2
148@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
motion_sensor2i
eC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/motion_sensor.vhd2
198@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
sistema_maxsonar2d
`C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance.vhd2
178@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
control_maxsonar2s
qC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/ultrasonic_sensor_control.vhd2
52
Inst_control_maxsonar2
control_maxsonar2d
`C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance.vhd2
608@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
control_maxsonar2u
qC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/ultrasonic_sensor_control.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
control_maxsonar2
02
12u
qC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/ultrasonic_sensor_control.vhd2
168@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
bin2bcd2d
bC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/bin_to_dec.vhd2
62
Inst_bin2bcd2	
bin2bcd2d
`C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance.vhd2
698@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
bin2bcd2f
bC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/bin_to_dec.vhd2
158@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
bin2bcd2
02
12f
bC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/bin_to_dec.vhd2
158@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

visu7seg2f
dC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance_ssd.vhd2
62
Inst_visu7seg2

visu7seg2d
`C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance.vhd2
788@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

visu7seg2h
dC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance_ssd.vhd2
178@Z8-638h px� 
�
default block is never used226*oasys2h
dC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance_ssd.vhd2
318@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

visu7seg2
02
12h
dC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance_ssd.vhd2
178@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
sistema_maxsonar2
02
12d
`C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/distance.vhd2
178@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
motion_sensor2
02
12i
eC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/motion_sensor.vhd2
198@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
password_checker2
02
12l
hC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/password_checker.vhd2
298@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

alarm_main2
02
12f
bC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/alarm_main.vhd2
288@Z8-256h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
clock2
muxZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
muxZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
num[15]2
muxZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
num[14]2
muxZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
num[13]2
muxZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
num[12]2
muxZ8-7129h px� 
i
9Port %s in module %s is either unconnected or has no load4866*oasys2
sec2
muxZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1411.922 ; gain = 552.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1411.922 ; gain = 552.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1411.922 ; gain = 552.270
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

1411.9222
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2

is_entered2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
58@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
58@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

is_entered2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
68@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
68@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

is_k_reset2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
78@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
78@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

is_k_reset2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
88@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
88@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2b
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2`
^C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/constrs_1/new/keypad.xdc2
.Xil/alarm_main_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1473.5272
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0032

1473.5272
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
FSMZ8-802h px� 
n
3inferred FSM for state register '%s' in module '%s'802*oasys2
P1.state_reg2	
bin2bcdZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 state_0 |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                 state_1 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                 state_2 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_            state_2_hold |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_               wait_lock |                              100 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2

sequential2
FSMZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
reset_alarm_reg2r
nC:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.srcs/sources_1/new/fsm_incorrect_password.vhd2
418@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    load |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                 replace |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                   compr |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                   ready |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
P1.state_reg2	
one-hot2	
bin2bcdZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 5     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               20 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               13 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 9     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   8 Input   20 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   13 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  13 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  16 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   5 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
�
%s*synth2�
�+------------+--------------------------------------------------------------------------------+---------------+----------------+
h px� 
�
%s*synth2�
�|Module Name | RTL Object                                                                     | Depth x Width | Implemented As | 
h px� 
�
%s*synth2�
�+------------+--------------------------------------------------------------------------------+---------------+----------------+
h px� 
�
%s*synth2�
�|cdecoder    | cathode                                                                        | 32x7          | LUT            | 
h px� 
�
%s*synth2�
�|alarm_main  | password_checker_inst/incorrect_password/ssd_count/four_to_one_mux/led/cathode | 32x7          | LUT            | 
h px� 
�
%s*synth2�
�+------------+--------------------------------------------------------------------------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    33|
h px� 
2
%s*synth2
|3     |LUT1   |    10|
h px� 
2
%s*synth2
|4     |LUT2   |    56|
h px� 
2
%s*synth2
|5     |LUT3   |    26|
h px� 
2
%s*synth2
|6     |LUT4   |    52|
h px� 
2
%s*synth2
|7     |LUT5   |    69|
h px� 
2
%s*synth2
|8     |LUT6   |    99|
h px� 
2
%s*synth2
|9     |FDCE   |    66|
h px� 
2
%s*synth2
|10    |FDPE   |    25|
h px� 
2
%s*synth2
|11    |FDRE   |   183|
h px� 
2
%s*synth2
|12    |FDSE   |     2|
h px� 
2
%s*synth2
|13    |LD     |     1|
h px� 
2
%s*synth2
|14    |IBUF   |    13|
h px� 
2
%s*synth2
|15    |OBUF   |    20|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 1473.527 ; gain = 552.270
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1473.527 ; gain = 613.875
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0042

1473.5272
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
34Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1473.5272
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2G
E  A total of 1 instances were transformed.
  LD => LDCE: 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

487bf5fbZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
642
222
42
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:222

00:00:312

1473.5272

1005.000Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1473.5272
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2^
\C:/VivadoProjects/EEE_102_Project_Final_Demo/project_1/project_1.runs/synth_1/alarm_main.dcpZ17-1381h px� 
�
%s4*runtcl2l
jExecuting : report_utilization -file alarm_main_utilization_synth.rpt -pb alarm_main_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat Dec 28 13:59:20 2024Z17-206h px� 


End Record