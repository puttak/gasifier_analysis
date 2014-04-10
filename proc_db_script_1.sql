USE lab_proc_db;

DROP TABLE IF EXISTS gas_proc_data_tbl;

CREATE TABLE gas_proc_data_tbl
(
ts datetime PRIMARY KEY,
counter int,
space_time double,
mass_flow_brush_feeder double,
mass_brush_feeder double,
Feed_Volts double,
mass_flow_down_brush double,
mass_flow_entrainment double,
entrainment_gas_type int,
mass_flow_argon_tracer double,
mass_flow_feed_vessel_pressure double,
makeup_gas_type int,
downbed_gas_type int,
mass_flow_methane double,
steam_flow double,
mass_flow_biomass_from_ktron double,
exit_gas_flowrate double,
flow_rate_exit_gas double,
`Sample Flow` double,
setpoint_biomass_feedrate double,
setpoint_mass_flow_entrainment double,
setpoint_mass_flow_argon_tracer double,
setpoint_mass_flow_feed_vessel_pressure double,
setpoint_mass_flow_methane double,
setpoint_steam_HPLC_pump double,
setpoint_primary_quench_HPLC_pump double,
setpoint_secondary_quench_HPLC_pump double,
temp_steam_waterboiler double,
temp_steam_superheater double,
temp_skin_steam_line_to_lance double,
temp_steam_reactor_entry double,
temp_full_port_body_valve double,
temp_furnace_top_zone_element double,
temp_furnace_middle_zone_element double,
temp_furnace_bottom_zone_element double,
temp_skin_tube_top double,
temp_skin_tube_middle double,
temp_skin_tube_bottom double,
temp_bucket_seal_top double,
temp_bucket_seal_bottom double,
temp_exit_gas double,
temp_ash_knockout double,
temp_heat_tape_ash_knockout double,
temp_process_downstream_ash_KO_horizontal double,
temp_heat_tape_downstream_ash_knockout double,
temp_heat_tape_filter_1 double,
temp_heat_tape_between_filters double,
temp_heat_tape_filter_2 double,
temp_VLS_1_liquid double,
temp_VLS_2_liquid double,
temp_heat_tape_downstream_second_filter double,
TI_622 double,
TI_631 double,
TI_632 double,
TI_641 double,
TI_642 double,
`Cabinet Temp` double,
`Source Temp` double,
setpoint_temp_skin_tube_top double,
setpoint_temp_skin_tube_middle double,
setpoint_temp_skin_tube_bottom double,
HX_330A_SP double,
HX_340A_SP double,
pressure_feeder_vessel double,
pressure_entrainment double,
pressure_reactor_gas_inlet double,
pressure_ash_knockout_vessel double,
output_pressure_ash_knockout double,
pressure_product_gas_downstream_filters double,
pressure_system_set_by_PCV_to_vent double,
pressure_emergency_N2_line double,
pressure_water_to_steam_system double,
pressure_primary_quench double,
pressure_secondary_quench double,
pressure_analysis_line double,
`Analyzer Pressure` double,
setpoint_pressure_ash_knockout double,
pp_H2O double,
pp_CO2 double,
pp_Ar double,
Ar_MS double,
N2_MS double,
H2O_MS double,
H2_MS double,
CO_MS double,
CO2_MS double,
CH4_MS double,
C2H6_MS double,
C2H4_MS double,
C2H2_MS double,
C3H8_MS double,
C3H6_MS double,
C6H6_MS double,
C7H8_MS double,
C10H8_MS double,
H2S_MS double,
Ar_GC double,
N2_GC double,
H2_GC double,
CO_GC double,
CO2_GC double,
CH4_GC double,
C2H6_GC double,
Ar_GC_interp double,
N2_GC_interp double,
H2_GC_interp double,
CO_GC_interp double,
CO2_GC_interp double,
CH4_GC_interp double,
NDIR_CO double,
NDIR_CO2 double,
NDIR_CH4 double,
oxygen_feeder_vessel double,
oxygen_ash_knockout_vessel double,
V_200_LEL double,
bypass_O2 double,
Ar_normalized double,
N2_normalized double,
H2O_normalized double,
H2_normalized double,
CO_normalized double,
CO2_normalized double,
CH4_normalized double,
C2H6_normalized double,
C2H4_normalized double,
C2H2_normalized double,
C3H8_normalized double,
C3H6_normalized double,
C6H6_normalized double,
C7H8_normalized double,
C10H8_normalized double,
Ar_inlet double,
N2_inlet double,
H2O_inlet double,
H2_inlet double,
CO_inlet double,
CO2_inlet double,
CH4_inlet double,
C2H6_inlet double,
C2H4_inlet double,
C2H2_inlet double,
C3H8_inlet double,
C3H6_inlet double,
C6H6_inlet double,
C7H8_inlet double,
C10H8_inlet double,
Ar_outlet double,
N2_outlet double,
H2O_outlet double,
H2_outlet double,
CO_outlet double,
CO2_outlet double,
CH4_outlet double,
C2H6_outlet double,
C2H4_outlet double,
C2H2_outlet double,
C3H8_outlet double,
C3H6_outlet double,
C6H6_outlet double,
C7H8_outlet double,
C10H8_outlet double,
C_inlet double,
H_inlet double,
O_inlet double,
C_outlet double,
H_outlet double,
O_outlet double,
X_std double,
X_tot double,
X_good double,
CO_yield double,
tar_loading double,
tar_loading_incl double,
HX_330A_OP double,
HX_340A_OP double,
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
Trap double,
`Fil Current` double,
delta_H double,
spare_1 double,
spare_2 double,
spare_3 double,
optical_thickness_d10 double,
optical_thickenss_d50 double,
optical_thickness_d90 double,
volumetric_inlet_gas_only double,
T_cupmix_gas_only double,
C_gas_mass_balance double
);

DROP TABLE IF EXISTS gas_integral_tbl;

CREATE TABLE gas_integral_tbl
(
run_id int PRIMARY KEY,
campaign_id int,
moisture double,
d10 double,
d50 double,
d90 double,
w_c double,
w_h double,
N_total int,
N_MS int,
mass_flow_brush_feeder_avg double,
mass_flow_brush_feeder_std double,
mass_flow_down_brush_avg double,
mass_flow_down_brush_std double,
mass_flow_entrainment_avg double,
mass_flow_entrainment_std double,
mass_flow_argon_tracer_avg double,
mass_flow_argon_tracer_std double,
mass_flow_feed_vessel_pressure_avg double,
mass_flow_feed_vessel_pressure_std double,
mass_flow_methane_avg double,
mass_flow_methane_std double,
steam_flow_avg double,
steam_flow_std double,
mass_flow_biomass_from_ktron_avg double,
mass_flow_biomass_from_ktron_std double,
exit_gas_flowrate_avg double,
exit_gas_flowrate_std double,
flow_rate_exit_gas_avg double,
flow_rate_exit_gas_std double,
temp_steam_waterboiler_avg double,
temp_steam_waterboiler_std double,
temp_steam_superheater_avg double,
temp_steam_superheater_std double,
temp_skin_steam_line_to_lance_avg double,
temp_skin_steam_line_to_lance_std double,
temp_steam_reactor_entry_avg double,
temp_steam_reactor_entry_std double,
temp_full_port_body_valve_avg double,
temp_full_port_body_valve_std double,
temp_furnace_top_zone_element_avg double,
temp_furnace_top_zone_element_std double,
temp_furnace_middle_zone_element_avg double,
temp_furnace_middle_zone_element_std double,
temp_furnace_bottom_zone_element_avg double,
temp_furnace_bottom_zone_element_std double,
temp_skin_tube_top_avg double,
temp_skin_tube_top_std double,
temp_skin_tube_middle_avg double,
temp_skin_tube_middle_std double,
temp_skin_tube_bottom_avg double,
temp_skin_tube_bottom_std double,
temp_bucket_seal_top_avg double,
temp_bucket_seal_top_std double,
temp_bucket_seal_bottom_avg double,
temp_bucket_seal_bottom_std double,
temp_exit_gas_avg double,
temp_exit_gas_std double,
temp_ash_knockout_avg double,
temp_ash_knockout_std double,
temp_heat_tape_ash_knockout_avg double,
temp_heat_tape_ash_knockout_std double,
temp_process_downstream_ash_KO_horizontal_avg double,
temp_process_downstream_ash_KO_horizontal_std double,
temp_heat_tape_downstream_ash_knockout_avg double,
temp_heat_tape_downstream_ash_knockout_std double,
temp_heat_tape_filter_1_avg double,
temp_heat_tape_filter_1_std double,
temp_heat_tape_between_filters_avg double,
temp_heat_tape_between_filters_std double,
temp_heat_tape_filter_2_avg double,
temp_heat_tape_filter_2_std double,
temp_heat_tape_downstream_second_filter_avg double,
temp_heat_tape_downstream_second_filter_std double,
TI_622_avg double,
TI_622_std double,
TI_631_avg double,
TI_631_std double,
TI_632_avg double,
TI_632_std double,
TI_641_avg double,
TI_641_std double,
TI_642_avg double,
TI_642_std double,
pressure_feeder_vessel_avg double,
pressure_feeder_vessel_std double,
pressure_entrainment_avg double,
pressure_entrainment_std double,
pressure_reactor_gas_inlet_avg double,
pressure_reactor_gas_inlet_std double,
pressure_ash_knockout_vessel_avg double,
pressure_ash_knockout_vessel_std double,
output_pressure_ash_knockout_avg double,
output_pressure_ash_knockout_std double,
pressure_product_gas_downstream_filters_avg double,
pressure_product_gas_downstream_filters_std double,
pressure_system_set_by_PCV_to_vent_avg double,
pressure_system_set_by_PCV_to_vent_std double,
pressure_emergency_N2_line_avg double,
pressure_emergency_N2_line_std double,
pressure_water_to_steam_system_avg double,
pressure_water_to_steam_system_std double,
pressure_primary_quench_avg double,
pressure_primary_quench_std double,
pressure_secondary_quench_avg double,
pressure_secondary_quench_std double,
pressure_analysis_line_avg double,
pressure_analysis_line_std double,
pp_H2O_avg double,
pp_H2O_std double,
pp_CO2_avg double,
pp_CO2_std double,
pp_Ar_avg double,
pp_Ar_std double,
Ar_MS_avg double,
Ar_MS_std double,
N2_MS_avg double,
N2_MS_std double,
H2O_MS_avg double,
H2O_MS_std double,
H2_MS_avg double,
H2_MS_std double,
CO_MS_avg double,
CO_MS_std double,
CO2_MS_avg double,
CO2_MS_std double,
CH4_MS_avg double,
CH4_MS_std double,
C2H6_MS_avg double,
C2H6_MS_std double,
C2H4_MS_avg double,
C2H4_MS_std double,
C2H2_MS_avg double,
C2H2_MS_std double,
C3H8_MS_avg double,
C3H8_MS_std double,
C3H6_MS_avg double,
C3H6_MS_std double,
C6H6_MS_avg double,
C6H6_MS_std double,
C7H8_MS_avg double,
C7H8_MS_std double,
C10H8_MS_avg double,
C10H8_MS_std double,
H2S_MS_avg double,
H2S_MS_std double,
Ar_GC_avg double,
Ar_Gc_std double,
N2_GC_avg double,
N2_GC_std double,
H2O_GC_avg double,
H2O_Gc_std double,
H2_GC_avg double,
H2_GC_std double,
CO_GC_avg double,
CO_GC_std double,
CO2_GC_avg double,
CO2_GC_std double,
CH4_GC_avg double,
CH4_GC_std double,
C2H6_GC_avg double,
C2H6_GC_std double,
NDIR_CO_avg double,
NDIR_CO_std double,
NDIR_CO2_avg double,
NDIR_CO2_std double,
NDIR_CH4_avg double,
NDIR_CH4_std double,
Ar_normalized_avg double,
Ar_normalized_std double,
N2_normalized_avg double,
N2_normalized_std double,
H2_normalized_avg double,
H2_normalized_std double,
CO_normalized_avg double,
CO_normalized_std double,
CO2_normalized_avg double,
CO2_normalized_std double,
CH4_normalized_avg double,
CH4_normalized_std double,
C2H6_normalized_avg double,
C2H6_normalized_std double,
C2H4_normalized_avg double,
C2H4_normalized_std double,
C2H2_normalized_avg double,
C2H2_normalized_std double,
C3H8_normalized_avg double,
C3H8_normalized_std double,
C3H6_normalized_avg double,
C3H6_normalized_std double,
C6H6_normalized_avg double,
C6H6_normalized_std double,
C7H8_normalized_avg double,
C7H8_normalized_std double,
C10H8_normalized_avg double,
C10H8_normalized_std double,
X_std_avg double,
X_std_std double,
X_tot_avg double,
X_tot_std double,
X_good_avg double,
X_good_std double,
CO_yield_avg double,
CO_yield_std double,
tar_loading_avg double,
tar_loading_std double,
tar_loading_incl_avg double,
tar_loading_incl_std double,
space_time_avg double,
space_time_std double,
Ar_inlet_avg double,
Ar_inlet_std double, 
N2_inlet_avg double, 
N2_inlet_std double, 
H2O_inlet_avg double, 
H2O_inlet_std double, 
H2_inlet_avg double, 
H2_inlet_std double, 
CO_inlet_avg double, 
CO_inlet_std double, 
CO2_inlet_avg double, 
CO2_inlet_std double, 
CH4_inlet_avg double, 
CH4_inlet_std double, 
C2H6_inlet_avg double, 
C2H6_inlet_std double, 
C2H4_inlet_avg double,
C2H4_inlet_std double, 
C2H2_inlet_avg double,
C2H2_inlet_std double, 
C3H8_inlet_avg double, 
C3H8_inlet_std double, 
C3H6_inlet_avg double, 
C3H6_inlet_std double, 
C6H6_inlet_avg double, 
C6H6_inlet_std double, 
C7H8_inlet_avg double, 
C7H8_inlet_std double, 
C10H8_inlet_avg double, 
C10H8_inlet_std double, 
Ar_outlet_avg double, 
Ar_outlet_std double, 
N2_outlet_avg double, 
N2_outlet_std double, 
H2O_outlet_avg double, 
H2O_outlet_std double, 
H2_outlet_avg double, 
H2_outlet_std double, 
CO_outlet_avg double, 
CO_outlet_std double, 
CO2_outlet_avg double, 
CO2_outlet_std double, 
CH4_outlet_avg double, 
CH4_outlet_std double, 
C2H6_outlet_avg double, 
C2H6_outlet_std double, 
C2H4_outlet_avg double, 
C2H4_outlet_std double, 
C2H2_outlet_avg double, 
C2H2_outlet_std double, 
C3H8_outlet_avg double, 
C3H8_outlet_std double, 
C3H6_outlet_avg double, 
C3H6_outlet_std double, 
C6H6_outlet_avg double, 
C6H6_outlet_std double, 
C7H8_outlet_avg double, 
C7H8_outlet_std double, 
C10H8_outlet_avg double, 
C10H8_outlet_std double, 
C_inlet_avg double, 
C_inlet_std double, 
H_inlet_avg double, 
H_inlet_std double, 
O_inlet_avg double, 
O_inlet_std double, 
C_outlet_avg double, 
C_outlet_std double, 
H_outlet_avg double, 
H_outlet_std double, 
O_outlet_avg double, 
O_outlet_std double,
optical_thickness_d10_avg double,
optical_thickness_d10_std double,
optical_thickness_d50_avg double,
optical_thickness_d50_std double,
optical_thickness_d90_avg double,
optical_thickness_d90_std double,
volumetric_inlet_gas_only_avg double,
volumetric_inlet_gas_only_std double,
T_cupmix_gas_only_avg double,
T_cupmix_gas_only_std double,
C_gas_mass_balance_avg double,
C_gas_mass_balance_std double, 
analysis_timestamp timestamp
)
