#################################
## Vitulus Power status message
#################################

Header  header
string  version
string  charger_status
string  supply_status
string  module_status
int16 battery_capacity
int16 charge_current_setpoint_run
int16 charge_current_setpoint_standby
int16 precharge_current_setpoint_run
int16 precharge_current_setpoint_standby
float32 input_voltage
float32 input_current
float32 input_power
float32 battery_voltage
float32 battery_current
float32 battery_power
float32 battery_charge_current
float32 battery_charge_power
float32 battery_discharge_current
float32 battery_discharge_power
float32 out19_voltage
float32 out19_current
float32 out19_power
float32 temp_setpoint
float32 temp2_setpoint
float32 temp
float32 temp2
int16 fan_rpm
int16 fan2_rpm
bool charge_switch
bool discharge_switch
bool bat_out_switch
bool motor_out_switch
bool out19v_switch
bool enable19v_switch
uint64 standby_timeout
bool sleep_status
bool sleep_charged_status
uint64 sleep_wait_standby
uint64 sleep_time_interval
uint64 sleep_wait_charged
string debug_info