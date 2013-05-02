USE lab_proc_db;

DROP TABLE IF EXISTS gas_proc_data_tbl;

CREATE TABLE gas_proc_data_tbl
(
timestamp datetime PRIMARY KEY,
counter int,
space_time float,
mass_flow_brush_feeder float,
mass_brush_feeder float,
Feed_Volts float,
mass_flow_down_brush float,
mass_flow_entrainment float,
entrainment_gas_type int,
mass_flow_argon_tracer float,
mass_flow_feed_vessel_pressure float,
makeup_gas_type int,
downbed_gas_type int,
mass_flow_methane float,
steam_flow float,
mass_flow_biomass_from_ktron float,
exit_gas_flowrate float,
flow_rate_exit_gas float,
`Sample Flow` float,
setpoint_biomass_feedrate float,
setpoint_mass_flow_entrainment float,
setpoint_mass_flow_argon_tracer float,
setpoint_mass_flow_feed_vessel_pressure float,
setpoint_mass_flow_methane float,
setpoint_steam_HPLC_pump float,
setpoint_primary_quench_HPLC_pump float,
setpoint_secondary_quench_HPLC_pump float,
temp_steam_waterboiler float,
temp_steam_superheater float,
temp_skin_steam_line_to_lance float,
temp_steam_reactor_entry float,
temp_full_port_body_valve float,
temp_furnace_top_zone_element float,
temp_furnace_middle_zone_element float,
temp_furnace_bottom_zone_element float,
temp_skin_tube_top float,
temp_skin_tube_middle float,
temp_skin_tube_bottom float,
temp_bucket_seal_top float,
temp_bucket_seal_bottom float,
temp_exit_gas float,
temp_ash_knockout float,
temp_heat_tape_ash_knockout float,
temp_process_downstream_ash_KO_horizontal float,
temp_heat_tape_downstream_ash_knockout float,
temp_heat_tape_filter_1 float,
temp_heat_tape_between_filters float,
temp_heat_tape_filter_2 float,
temp_VLS_1_liquid float,
temp_VLS_2_liquid float,
temp_heat_tape_downstream_second_filter float,
TI_622 float,
TI_631 float,
TI_632 float,
TI_641 float,
TI_642 float,
`Cabinet Temp` float,
`Source Temp` float,
setpoint_temp_skin_tube_top float,
setpoint_temp_skin_tube_middle float,
setpoint_temp_skin_tube_bottom float,
HX_330A_SP float,
HX_340A_SP float,
pressure_feeder_vessel float,
pressure_entrainment float,
pressure_reactor_gas_inlet float,
pressure_ash_knockout_vessel float,
output_pressure_ash_knockout float,
pressure_product_gas_downstream_filters float,
pressure_system_set_by_PCV_to_vent float,
pressure_emergency_N2_line float,
pressure_water_to_steam_system float,
pressure_primary_quench float,
pressure_secondary_quench float,
pressure_analysis_line float,
`Analyzer Pressure` float,
setpoint_pressure_ash_knockout float,
pp_H2O float,
pp_CO2 float,
pp_Ar float,
Ar_MS float,
N2_MS float,
H2O_MS float,
H2_MS float,
CO_MS float,
CO2_MS float,
CH4_MS float,
C2H6_MS float,
C2H4_MS float,
C2H2_MS float,
C3H8_MS float,
C3H6_MS float,
C6H6_MS float,
C7H8_MS float,
C10H8_MS float,
H2S_MS float,
Ar_GC float,
N2_GC float,
H2_GC float,
CO_GC float,
CO2_GC float,
CH4_GC float,
C2H6_GC float,
Ar_GC_interp float,
N2_GC_interp float,
H2_GC_interp float,
CO_GC_interp float,
CO2_GC_interp float,
CH4_GC_interp float,
NDIR_CO float,
NDIR_CO2 float,
NDIR_CH4 float,
oxygen_feeder_vessel float,
oxygen_ash_knockout_vessel float,
V_200_LEL float,
bypass_O2 float,
Ar_normalized float,
N2_normalized float,
H2O_normalized float,
H2_normalized float,
CO_normalized float,
CO2_normalized float,
CH4_normalized float,
C2H6_normalized float,
C2H4_normalized float,
C2H2_normalized float,
C3H8_normalized float,
C3H6_normalized float,
C6H6_normalized float,
C7H8_normalized float,
C10H8_normalized float,
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
C6H6_inlet float,
C7H8_inlet float,
C10H8_inlet float,
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
C6H6_outlet float,
C7H8_outlet float,
C10H8_outlet float,
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
tar_loading float,
tar_loading_incl float,
HX_330A_OP float,
HX_340A_OP float,
heat_tape_output_horizontal_downstream_Ash_KO int,
heat_tape_output_ash_KO int,
heat_tape_output_filter_1 int,
heat_tape_output_between_filters int,
heat_tape_output_filter_2 int,
heat_tape_output_after_filter_2 int,
enable_system int,
enable_furnace int,
master_control_relay int,
chiller int,
valve_entrainment int,
valve_backup_entrainment int,
valve_feeder_pressurization_supply int,
valve_methane int,
valve_emergency_N2 int,
`valve full port feed` int,
valve_argon int,
valve_feeder_vessel_exhaust int,
valve_to_analysis_line int,
valve_PCV_bypass_system_drain int,
valve_VLS_1_drain int,
valve_VLS_2_drain int,
level_high_VLS_1_liquid int,
level_low_VLS_1_liquid int,
level_high_VLS_2_liquid int,
level_low_VLS_2_liquid int,
Trap float,
`Fil Current` float,
spare_1 float,
spare_2 float,
spare_3 float
);

DROP TABLE IF EXISTS gas_integral_tbl;

CREATE TABLE gas_integral_tbl
(
run_id int PRIMARY KEY,
campaign_id int,
moisture float,
d10 float,
d50 float,
d90 float,
w_c float,
w_h float,
N_total int,
N_MS int,
mass_flow_brush_feeder_avg float,
mass_flow_brush_feeder_std float,
mass_flow_down_brush_avg float,
mass_flow_down_brush_std float,
mass_flow_entrainment_avg float,
mass_flow_entrainment_std float,
mass_flow_argon_tracer_avg float,
mass_flow_argon_tracer_std float,
mass_flow_feed_vessel_pressure_avg float,
mass_flow_feed_vessel_pressure_std float,
mass_flow_methane_avg float,
mass_flow_methane_std float,
steam_flow_avg float,
steam_flow_std float,
mass_flow_biomass_from_ktron_avg float,
mass_flow_biomass_from_ktron_std float,
exit_gas_flowrate_avg float,
exit_gas_flowrate_std float,
flow_rate_exit_gas_avg float,
flow_rate_exit_gas_std float,
temp_steam_waterboiler_avg float,
temp_steam_waterboiler_std float,
temp_steam_superheater_avg float,
temp_steam_superheater_std float,
temp_skin_steam_line_to_lance_avg float,
temp_skin_steam_line_to_lance_std float,
temp_steam_reactor_entry_avg float,
temp_steam_reactor_entry_std float,
temp_full_port_body_valve_avg float,
temp_full_port_body_valve_std float,
temp_furnace_top_zone_element_avg float,
temp_furnace_top_zone_element_std float,
temp_furnace_middle_zone_element_avg float,
temp_furnace_middle_zone_element_std float,
temp_furnace_bottom_zone_element_avg float,
temp_furnace_bottom_zone_element_std float,
temp_skin_tube_top_avg float,
temp_skin_tube_top_std float,
temp_skin_tube_middle_avg float,
temp_skin_tube_middle_std float,
temp_skin_tube_bottom_avg float,
temp_skin_tube_bottom_std float,
temp_bucket_seal_top_avg float,
temp_bucket_seal_top_std float,
temp_bucket_seal_bottom_avg float,
temp_bucket_seal_bottom_std float,
temp_exit_gas_avg float,
temp_exit_gas_std float,
temp_ash_knockout_avg float,
temp_ash_knockout_std float,
temp_heat_tape_ash_knockout_avg float,
temp_heat_tape_ash_knockout_std float,
temp_process_downstream_ash_KO_horizontal_avg float,
temp_process_downstream_ash_KO_horizontal_std float,
temp_heat_tape_downstream_ash_knockout_avg float,
temp_heat_tape_downstream_ash_knockout_std float,
temp_heat_tape_filter_1_avg float,
temp_heat_tape_filter_1_std float,
temp_heat_tape_between_filters_avg float,
temp_heat_tape_between_filters_std float,
temp_heat_tape_filter_2_avg float,
temp_heat_tape_filter_2_std float,
temp_heat_tape_downstream_second_filter_avg float,
temp_heat_tape_downstream_second_filter_std float,
TI_622_avg float,
TI_622_std float,
TI_631_avg float,
TI_631_std float,
TI_632_avg float,
TI_632_std float,
TI_641_avg float,
TI_641_std float,
TI_642_avg float,
TI_642_std float,
pressure_feeder_vessel_avg float,
pressure_feeder_vessel_std float,
pressure_entrainment_avg float,
pressure_entrainment_std float,
pressure_reactor_gas_inlet_avg float,
pressure_reactor_gas_inlet_std float,
pressure_ash_knockout_vessel_avg float,
pressure_ash_knockout_vessel_std float,
output_pressure_ash_knockout_avg float,
output_pressure_ash_knockout_std float,
pressure_product_gas_downstream_filters_avg float,
pressure_product_gas_downstream_filters_std float,
pressure_system_set_by_PCV_to_vent_avg float,
pressure_system_set_by_PCV_to_vent_std float,
pressure_emergency_N2_line_avg float,
pressure_emergency_N2_line_std float,
pressure_water_to_steam_system_avg float,
pressure_water_to_steam_system_std float,
pressure_primary_quench_avg float,
pressure_primary_quench_std float,
pressure_secondary_quench_avg float,
pressure_secondary_quench_std float,
pressure_analysis_line_avg float,
pressure_analysis_line_std float,
pp_H2O_avg float,
pp_H2O_std float,
pp_CO2_avg float,
pp_CO2_std float,
pp_Ar_avg float,
pp_Ar_std float,
Ar_MS_avg float,
Ar_MS_std float,
N2_MS_avg float,
N2_MS_std float,
H2O_MS_avg float,
H2O_MS_std float,
H2_MS_avg float,
H2_MS_std float,
CO_MS_avg float,
CO_MS_std float,
CO2_MS_avg float,
CO2_MS_std float,
CH4_MS_avg float,
CH4_MS_std float,
C2H6_MS_avg float,
C2H6_MS_std float,
C2H4_MS_avg float,
C2H4_MS_std float,
C2H2_MS_avg float,
C2H2_MS_std float,
C3H8_MS_avg float,
C3H8_MS_std float,
C3H6_MS_avg float,
C3H6_MS_std float,
C6H6_MS_avg float,
C6H6_MS_std float,
C7H8_MS_avg float,
C7H8_MS_std float,
C10H8_MS_avg float,
C10H8_MS_std float,
H2S_MS_avg float,
H2S_MS_std float,
Ar_GC_avg float,
Ar_Gc_std float,
N2_GC_avg float,
N2_GC_std float,
H2O_GC_avg float,
H2O_Gc_std float,
H2_GC_avg float,
H2_GC_std float,
CO_GC_avg float,
CO_GC_std float,
CO2_GC_avg float,
CO2_GC_std float,
CH4_GC_avg float,
CH4_GC_std float,
C2H6_GC_avg float,
C2H6_GC_std float,
NDIR_CO_avg float,
NDIR_CO_std float,
NDIR_CO2_avg float,
NDIR_CO2_std float,
NDIR_CH4_avg float,
NDIR_CH4_std float,
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
C6H6_normalized_avg float,
C6H6_normalized_std float,
C7H8_normalized_avg float,
C7H8_normalized_std float,
C10H8_normalized_avg float,
C10H8_normalized_std float,
X_std_avg float,
X_std_std float,
X_tot_avg float,
X_tot_std float,
X_good_avg float,
X_good_std float,
CO_yield_avg float,
CO_yield_std float,
tar_loading_avg float,
tar_loading_std float,
tar_loading_incl_avg float,
tar_loading_incl_std float,
space_time_avg float,
space_time_std float
)
