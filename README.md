# Vitulus ups
 Vitulus Power module ROS controller.

## Node [/vitulus_ups]

Publications: 

 * /diagnostics [diagnostic_msgs/DiagnosticArray]

 * /power_status [vitulus_ups/power_status]

    All published values.

 * /power_values [vitulus_ups/power_values]
    Raw power values (voltages, currents, etc).

 * /rosout [rosgraph_msgs/Log]

 * /ups [vitulus_ups/vitulus_ups]
    All published values. (deprecated) Use /power_status instead.


Subscriptions: 

 * /set_19v_out_switch [std_msgs/Bool]
 * /set_bat_out_switch [std_msgs/Bool]
 * /set_charge_current_running [std_msgs/Int16]
 * /set_charge_current_standby [std_msgs/Int16]
 * /set_charge_switch [std_msgs/Bool]
 * /set_discharge_switch [std_msgs/Bool]
 * /set_motor_switch [std_msgs/Bool]
 * /set_precharge_current_running [std_msgs/Int16]
 * /set_precharge_current_standby [std_msgs/Int16]
 * /set_robot_sleep [std_msgs/Bool]
 * /set_sleep_time [std_msgs/UInt64]
 * /set_sleep_until_charged [std_msgs/Bool]
 * /set_sleep_wait_before_standby [std_msgs/UInt64]
 * /set_sleep_wait_charged_offset [std_msgs/UInt64]
 * /set_standby_timeout_discharging [std_msgs/UInt64]
 * /set_temp2_setpoint [std_msgs/Float64]
 * /set_temp_setpoint [std_msgs/Float64]

