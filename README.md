# Vitulus ups
 Vitulus Power module ROS controller.

## Node [/vitulus_ups]

## Publications: 

 * /diagnostics [diagnostic_msgs/DiagnosticArray]

 * /power_status [vitulus_ups/power_status]

    All published values.

 * /power_values [vitulus_ups/power_values]

    Raw power values (voltages, currents, etc).

 * /rosout [rosgraph_msgs/Log]

 * /ups [vitulus_ups/vitulus_ups]

    All published values. (deprecated) Use /power_status instead.


## Subscriptions: 

### Switches

* **** /set_19v_out_switch [std_msgs/Bool]

    Switch on/off (true/false) 19 V output of Power module. It is the power for NUC, so be sure what you are doing. You can power off the robot. It is for future use.

* /set_bat_out_switch [std_msgs/Bool]

 	Switch on/off (true/false) battery output of Power module. It is used for accessories e.g. mower unit.

* /set_charge_switch [std_msgs/Bool]

    Connect/disconnect (true/false) battery from the charger.	

* /set_discharge_switch [std_msgs/Bool]

	Switch on/off (true/false) battery output for everything (batt output, 19V output, motors). It is a deprecated function.

* /set_motor_switch [std_msgs/Bool]

	Switch on/off (true/false) battery output of Power module.

### Charging currents

* /set_charge_current_standby [std_msgs/Int16]

	Set charge current value in 1000 - 4000 mA for standby state of Power module. These values are for 26V/5A power input.

* /set_charge_current_running [std_msgs/Int16]
	
    Set charge current value in 1000 - 4000 mA for running state of Power module. Be sure you have got a strong enough power supply. For 26V/5A power input is 2000 mA maximum, because you need power for running NUC.


* /set_precharge_current_running [std_msgs/Int16]

	Set precharge current value in 500 - 1500 mA for charging in the running state of the Power module. This value of precharge current is used for charging current on a deeply discharged battery. This value is the same for cut-off current to finish charging. 

 * /set_precharge_current_standby [std_msgs/Int16]
	
	Set precharge current value in 500 - 1500 mA for charging in the standby state of the Power module. This value of precharge current is used for charging current on a deeply discharged battery. This value is the same for cut-off current to finish charging. 

### Robot sleep
There are two options. First is set time in milliseconds and let the robot sleep while this time and wake up when it exceeds. Second option is to let the robot sleep while it is charging and wake up when it is charged. 

For both options you can set time to wait before going to standby, to give the time to the Main unit shutdown itself. Power module turns off the power for the Main unit when this time exceeds. 

It is not absolute sleep. The robot is in standby state and Mega 2560 and some other components on the Power module are running.

* /set_sleep_wait_before_standby [std_msgs/UInt64]

	Set time in ms to wait before going to standby state. 

* /set_robot_sleep [std_msgs/Bool]

	Set to true to begin sleep mode for the time you set by set_sleep_time.
Set to false to cancel the sleep for the time.
	
* /set_sleep_time [std_msgs/UInt64]

	Set time in ms for sleep mode. 

* /set_sleep_until_charged [std_msgs/Bool]

	Set true, to begin sleep_until_charged mode.
    Set false to cancel the sleep_until_charged mode.


* /set_sleep_wait_charged_offset [std_msgs/UInt64]
	
	Set the time in ms to wait when charged before waking up. It is the time for the battery relax after charging.


* /set_standby_timeout_discharging [std_msgs/UInt64]
	
    Set timeout in [ms] to shut down the Power module when on battery in standby state and do nothing. 

### Temperature

* /set_temp_setpoint [std_msgs/Float64]

	Set the temperature in °C to start cooling by the external fan. Default 35 °C.

* /set_temp2_setpoint [std_msgs/Float64]

	Set the temperature in °C to start cooling by the internal fan. It is a temperature measured under the mosfets. Default 35 °C.



## Install

`cd ~/catkin_ws/src/vitulus`

`git clone https://github.com/lacina-dev/vitulus_ups.git`

`cd ~/catkin_ws`

`catkin build`

## Run

`roslaunch vitulus_ups vitulus_ups.launch`

## Info

 More about VITULUS? See my website.
 [https://lacina.dev](https://lacina.dev)

 Questions? Try Discord.
 [Discord channel](https://discord.gg/YqeNV5hEVN)
