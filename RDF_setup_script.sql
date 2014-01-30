USE sunulator2;

DROP TABLE IF EXISTS RDF_proc_data;

CREATE TABLE RDF_proc_data
(
campaign_id int,
run_id int,
timestamp datetime PRIMARY KEY,
biomass_feedrate float,
space_time float,
pp_CO2 float,
pp_H2O float,
pp_Ar float,
bm_feed_sp float,
feed_aug_sp float,
quench_a_pos_con float,
mac_ent_flow_sp float,
degas_flow float,
entrainment_flow float,
entrainment float,
tracer_flow_con float,
rx_fur_z1_op float,
rx_fur_z2_op float,
rx_fur_z3_op float,
steam_flow_con float,
steam_bypass_con float,
steam_fur_z1_op float,
steam_fur_z2_op float,
steam_fur_z3_op float,
quench_b_pos_con float,
rx_press_con_op float,
TI_6180 float,
tube_temp_5 float,
tube_temp_1 float,
tube_temp_2 float,
tube_temp_3 float,
tube_temp_4 float,
zone1temp float,
zone2temp float,
zone3temp float,
producttemp float,
rx_out_b_temp float,
ash_ko_temp float,
bh_temp float,
TI_3231 float,
s_fur_z1_temp float,
s_fur_z2_temp float,
s_fur_z3_temp float,
steam_sh_out_temp float,
steam_fur_in_temp float,
s_pc_temp float,
analysis_gas_temp float,
quench_vessel_Temp float,
feed_temp float,
TI_4311 float,
steamtemp float,
ent_gas_flow float,
massflowrate float,
PI_9101 float,
sweep_supply_press float,
pi_1444 float,
PDI_6679 float,
PI_6601 float,
quench_supply_press float,
PI_1201 float,
lance_press float,
chiller_outlet_press float,
pressure float,
purge_n2_supply_press float,
PI_9148 float,
PI_9150 float,
PI_6166 float,
backup_quench_press float,
tracer_press float,
baghouse_dp float,
PDI_1201 float,
rx_outlet_press float,
FI_201 float,
FI_2202 float,
FI_2203 float,
FT_201 float,
degasser_flow float,
sweep_flow float,
tracer_flow float,
o2_perc float,
AI_4303 float,
AI_1201 float,
flare_temp float,
CO2_NDIR float,
CO_NDIR float,
CH4_NDIR float,
TI_2651 float,
WI_1201 float,
FI_1201 float,
comp_air_press float,
FI_9161 float,
analysis_inlet_press float,
analysis_discharge_press float,
flareline_press float,
steam_vent_flow float,
steam_pc_con_press float,
syngas_coriolis_flow float,
boiler_discharge_press float,
syngas_humidity float,
steamflowrate float,
zone1power float,
zone2power float,
zone3power float,
RPM float,
HS_1137 int,
HS_1138 int,
assist_valve int,
B_603 float,
DO_04 int,
XV_235 int,
XV_9101 int,
sweep_valve int,
tracer_valve int,
XV_1202 int,
sweep_steam_line int,
DO_11 int,
rx_feed_valve int,
3201a_run int,
3201b_run int,
XY_9000A int,
purge_n2_valve int,
XV_6614 int,
o2_samp_pump float,
P_4303 float,
emerg_quench_valve int,
XV_9000B int,
flare_valve int,
P_6602 float,
P_6603 float,
XV_6602 int,
fur_start int,
HS_9200 int,
sweep_valve2 int,
XV_6608 int,
gc_sample_pump int,
HS_6172 int,
flare_bypass int,
XV_SEL int,
XV_GAS int,
bm_permit int,
XV_2147 int,
dbl_bb_steam_2 int,
dbl_bb_steam_1 int,
emer_backup_steam int,
analysis_solenoid_1 int,
analysis_solenoid_2 int,
analysis_solenoid_4 int,
analysis_solenoid_3 int,
cal_gas_solenoid int,
analysis_discharge_solenoid int,
dbl_bb_steam_3 int,
superheater_switch int,
XV_3210 int,
valve_4320_bladder_switch int,
valve_3210_bladder_switch int,
di_flare_1 int,
flare_com_trouble int,
di_flare_2 int,
di_flare_3 int,
di_flare_4 int,
di_flare_5 int,
di_flare_6 int,
di_flare_7 int,
di_flare_8 int,
di_flare_9 int,
di_flare_10 int,
di_flare_11 int,
di_estop int,
bladder_switch int,
bh_permissive int,
ash_rec_permissive int,
di_boiler int,
di_superheater int,
di_bh_lev_switch int,
di_ashko_lev_switch int,
di_quench_p_a int,
di_quench_p_b int,
B_6603 float,
operation_mode float,
gate_state float,
MI_1201 float,
shower float,
plc_high_o2 int,
plc_flare_cta int,
plc_element int,
counter int,
gc_h2 float,
GC_H2CO_RATIO varchar(10),
gc_o2 float,
gc_n2 float,
gc_ch4 float,
gc_co float,
C2H6_GC float,
C2H4_GC float,
C3H8_GC float,
C3H6_GC float,
C2H2_GC float,
GC_CO2 float,
GC_AR float,
GAS_PROD float,
conv float,
ent_press float,
fv_wt float,
feeder_rpm float,
injection_psi float,
degasser_press float,
degasser_temp float,
FC_1433 float,
net_entrainment_flow float,
reactor_entrainment_flow float,
PDT_9110 float,
secondary_entrainment float,
exit_gas_flowrate float,
cal_scale_mass float,
XV_9108 int,
XV_9109 int,
XV_9110 int,
ti_2299 float,
calc_flow float,
wi_1406lv float,
AI_2001a float,
AI_2001b float,
AI_2001c float,
VI_2001ab float,
VI_2001bc float,
VI_2001ca float,
AI_2002a float,
AI_2002b float,
AI_2002c float,
VI_2002ab float,
VI_2002bc float,
VI_2002ca float,
AI_2003a float,
AI_2003b float,
AI_2003c float,
VI_2003ab float,
VI_2003bc float,
VI_2003ca float,
XV_9110a int,
XV_9110b int,
XV_9103b int,
TI_2203 float,
TI_2020A float,
TI_2020B float,
TI_2020C float,
TI_2020D float,
TI_2020E float,
TI_2020F float, 
mol_pct_H2 float,
mol_pct_O2 float,
mol_pct_N2 float,
mol_pct_CH4 float,
mol_pct_CO float,
mol_pct_CO2 float,
mol_pct_Ar float,
mol_pct_C2H6 float,
mol_pct_C2H4 float,
mol_pct_C2H2 float,
mol_pct_C3H8 float,
mol_pct_C3H6 float,
mol_pct_H2_interp float,
mol_pct_O2_interp float,
mol_pct_N2_interp float,
mol_pct_CH4_interp float,
mol_pct_CO_interp float,
mol_pct_CO2_interp float,
mol_pct_Ar_interp float,
mol_pct_C2H6_interp float,
mol_pct_C2H4_interp float,
mol_pct_C2H2_interp float,
mol_pct_C3H8_interp float,
mol_pct_C3H6_interp float,
File_ID varchar(100),
Ar_normalized float,
N2_normalized float,
H2_normalized float,
CO_normalized float,
CO2_normalized float,
CH4_normalized float,
C2H6_normalized float,
C2H4_normalized float,
C2H2_normalized float,
C3H8_normalized float,
C3H6_normalized float,
H2O_normalized float,
Ar_inlet float,
N2_inlet float,
H2O_inlet float,
H2_inlet float,
CO_inlet float,
CO2_inlet float,
CH4_inlet float,
C2H6_inlet float,
C2H4_inlet float,
C2H2_inlet float,
C3H8_inlet float,
C3H6_inlet float,
Ar_outlet float,
N2_outlet float,
H2O_outlet float,
H2_outlet float,
CO_outlet float,
CO2_outlet float,
CH4_outlet float,
C2H6_outlet float,
C2H4_outlet float,
C2H2_outlet float,
C3H8_outlet float,
C3H6_outlet float,
C_inlet float,
H_inlet float,
O_inlet float,
C_outlet float,
H_outlet float,
O_outlet float,
X_std float,
X_tot float,
X_good float,
CO_yield float,
degasser_active int,
delta_H float
);

DROP TABLE IF EXISTS RDF_integral_tbl;

CREATE TABLE RDF_integral_tbl
(
run_id VARCHAR(10),
space_time_avg float,
space_time_std float,
pp_CO2_avg float,
pp_CO2_std float,
pp_H2O_avg float,
pp_H2O_std float,
pp_Ar_avg float,
pp_Ar_std float,
degas_flow_avg float,
degas_flow_std float,
entrainment_flow_avg float,
entrainment_flow_std float,
entrainment_avg float,
entrainment_std float,
rx_fur_z1_op_avg float,
rx_fur_z1_op_std float,
rx_fur_z2_op_avg float,
rx_fur_z2_op_std float,
rx_fur_z3_op_avg float,
rx_fur_z3_op_std float,
steam_fur_z1_op_avg float,
steam_fur_z1_op_std float,
steam_fur_z2_op_avg float,
steam_fur_z2_op_std float,
steam_fur_z3_op_avg float,
steam_fur_z3_op_std float,
tube_temp_5_avg float,
tube_temp_5_std float,
tube_temp_1_avg float,
tube_temp_1_std float,
tube_temp_2_avg float,
tube_temp_2_std float,
tube_temp_3_avg float,
tube_temp_3_std float,
tube_temp_4_avg float,
tube_temp_4_std float,
zone1temp_avg float,
zone1temp_std float,
zone2temp_avg float,
zone2temp_std float,
zone3temp_avg float,
zone3temp_std float,
producttemp_avg float,
producttemp_std float,
rx_out_b_temp_avg float,
rx_out_b_temp_std float,
ash_ko_temp_avg float,
ash_ko_temp_std float,
bh_temp_avg float,
bh_temp_std float,
s_fur_z1_temp_avg float,
s_fur_z1_temp_std float,
s_fur_z2_temp_avg float,
s_fur_z2_temp_std float,
s_fur_z3_temp_avg float,
s_fur_z3_temp_std float,
steam_sh_out_temp_avg float,
steam_sh_out_temp_std float,
steam_fur_in_temp_avg float,
steam_fur_in_temp_std float,
s_pc_temp_avg float,
s_pc_temp_std float,
analysis_gas_temp_avg float,
analysis_gas_temp_std float,
quench_vessel_Temp_avg float,
quench_vessel_Temp_std float,
feed_temp_avg float,
feed_temp_std float,
steamtemp_avg float,
steamtemp_std float,
ent_gas_flow_avg float,
ent_gas_flow_std float,
massflowrate_avg float,
massflowrate_std float,
sweep_supply_press_avg float,
sweep_supply_press_std float,
quench_supply_press_avg float,
quench_supply_press_std float,
lance_press_avg float,
lance_press_std float,
chiller_outlet_press_avg float,
chiller_outlet_press_std float,
pressure_avg float,
pressure_std float,
purge_n2_supply_press_avg float,
purge_n2_supply_press_std float,
backup_quench_press_avg float,
backup_quench_press_std float,
tracer_press_avg float,
tracer_press_std float,
baghouse_dp_avg float,
baghouse_dp_std float,
rx_outlet_press_avg float,
rx_outlet_press_std float,
degasser_flow_avg float,
degasser_flow_std float,
sweep_flow_avg float,
sweep_flow_std float,
tracer_flow_avg float,
tracer_flow_std float,
o2_perc_avg float,
o2_perc_std float,
flare_temp_avg float,
flare_temp_std float,
CO2_NDIR_avg float,
CO2_NDIR_std float,
CO_NDIR_avg float,
CO_NDIR_std float,
CH4_NDIR_avg float,
CH4_NDIR_std float,
comp_air_press_avg float,
comp_air_press_std float,
analysis_inlet_press_avg float,
analysis_inlet_press_std float,
analysis_discharge_press_avg float,
analysis_discharge_press_std float,
flareline_press_avg float,
flareline_press_std float,
steam_vent_flow_avg float,
steam_vent_flow_std float,
syngas_coriolis_flow_avg float,
syngas_coriolis_flow_std float,
boiler_discharge_press_avg float,
boiler_discharge_press_std float,
syngas_humidity_avg float,
syngas_humidity_std float,
steamflowrate_avg float,
steamflowrate_std float,
zone1power_avg float,
zone1power_std float,
zone2power_avg float,
zone2power_std float,
zone3power_avg float,
zone3power_std float,
RPM_avg float,
RPM_std float,
ent_press_avg float,
ent_press_std float,
feeder_rpm_avg float,
feeder_rpm_std float,
injection_psi_avg float,
injection_psi_std float,
degasser_press_avg float,
degasser_press_std float,
degasser_temp_avg float,
degasser_temp_std float,
net_entrainment_flow_avg float,
net_entrainment_flow_std float,
reactor_entrainment_flow_avg float,
reactor_entrainment_flow_std float,
secondary_entrainment_avg float,
secondary_entrainment_std float,
exit_gas_flowrate_avg float,
exit_gas_flowrate_std float,
mol_pct_H2_avg float,
mol_pct_H2_std float,
mol_pct_O2_avg float,
mol_pct_O2_std float,
mol_pct_N2_avg float,
mol_pct_N2_std float,
mol_pct_CH4_avg float,
mol_pct_CH4_std float,
mol_pct_CO_avg float,
mol_pct_CO_std float,
mol_pct_CO2_avg float,
mol_pct_CO2_std float,
mol_pct_Ar_avg float,
mol_pct_Ar_std float,
mol_pct_C2H6_avg float,
mol_pct_C2H6_std float,
mol_pct_C2H4_avg float,
mol_pct_C2H4_std float,
mol_pct_C2H2_avg float,
mol_pct_C2H2_std float,
mol_pct_C3H8_avg float,
mol_pct_C3H8_std float,
mol_pct_C3H6_avg float,
mol_pct_C3H6_std float,
Ar_normalized_avg float,
Ar_normalized_std float,
N2_normalized_avg float,
N2_normalized_std float,
H2_normalized_avg float,
H2_normalized_std float,
CO_normalized_avg float,
CO_normalized_std float,
CO2_normalized_avg float,
CO2_normalized_std float,
CH4_normalized_avg float,
CH4_normalized_std float,
C2H6_normalized_avg float,
C2H6_normalized_std float,
C2H4_normalized_avg float,
C2H4_normalized_std float,
C2H2_normalized_avg float,
C2H2_normalized_std float,
C3H8_normalized_avg float,
C3H8_normalized_std float,
C3H6_normalized_avg float,
C3H6_normalized_std float,
Ar_inlet_avg float,
Ar_inlet_std float,
N2_inlet_avg float,
N2_inlet_std float,
H2O_inlet_avg float,
H2O_inlet_std float,
H2_inlet_avg float,
H2_inlet_std float,
CO_inlet_avg float,
CO_inlet_std float,
CO2_inlet_avg float,
CO2_inlet_std float,
CH4_inlet_avg float,
CH4_inlet_std float,
C2H6_inlet_avg float,
C2H6_inlet_std float,
C2H4_inlet_avg float,
C2H4_inlet_std float,
C2H2_inlet_avg float,
C2H2_inlet_std float,
C3H8_inlet_avg float,
C3H8_inlet_std float,
C3H6_inlet_avg float,
C3H6_inlet_std float,
Ar_outlet_avg float,
Ar_outlet_std float,
N2_outlet_avg float,
N2_outlet_std float,
H2O_outlet_avg float,
H2O_outlet_std float,
H2_outlet_avg float,
H2_outlet_std float,
CO_outlet_avg float,
CO_outlet_std float,
CO2_outlet_avg float,
CO2_outlet_std float,
CH4_outlet_avg float,
CH4_outlet_std float,
C2H6_outlet_avg float,
C2H6_outlet_std float,
C2H4_outlet_avg float,
C2H4_outlet_std float,
C2H2_outlet_avg float,
C2H2_outlet_std float,
C3H8_outlet_avg float,
C3H8_outlet_std float,
C3H6_outlet_avg float,
C3H6_outlet_std float,
C_inlet_avg float,
C_inlet_std float,
H_inlet_avg float,
H_inlet_std float,
O_inlet_avg float,
O_inlet_std float,
C_outlet_avg float,
C_outlet_std float,
H_outlet_avg float,
H_outlet_std float,
O_outlet_avg float,
O_outlet_std float,
X_std_avg float,
X_std_std float,
X_tot_avg float,
X_tot_std float,
X_good_avg float,
X_good_std float,
CO_yield_avg float,
CO_yield_std float,
delta_H_avg float,
delta_H_std float
)