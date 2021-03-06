USE lab_proc_db;

DROP TABLE IF EXISTS analysis_config_tbl;

CREATE TABLE analysis_config_tbl
(
avg_std_cols VARCHAR(100) PRIMARY KEY,
active INT
);

INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mass_flow_brush_feeder',1);
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mass_flow_down_brush',1);
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mass_flow_entrainment','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mass_flow_argon_tracer','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mass_flow_feed_vessel_pressure','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mass_flow_methane','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steam_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mass_flow_biomass_from_ktron','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('exit_gas_flowrate','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('flow_rate_exit_gas','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_steam_waterboiler','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_steam_superheater','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_skin_steam_line_to_lance','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_steam_reactor_entry','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_full_port_body_valve','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_furnace_top_zone_element','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_furnace_middle_zone_element','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_furnace_bottom_zone_element','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_skin_tube_top','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_skin_tube_middle','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_skin_tube_bottom','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_bucket_seal_top','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_bucket_seal_bottom','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_exit_gas','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_ash_knockout','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_heat_tape_ash_knockout','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_process_downstream_ash_KO_horizontal','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_heat_tape_downstream_ash_knockout','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_heat_tape_filter_1','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_heat_tape_between_filters','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_heat_tape_filter_2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('temp_heat_tape_downstream_second_filter','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('TI_622','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('TI_631','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('TI_632','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('TI_641','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('TI_642','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_feeder_vessel','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_entrainment','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_reactor_gas_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_ash_knockout_vessel','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('output_pressure_ash_knockout','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_product_gas_downstream_filters','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_system_set_by_PCV_to_vent','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_emergency_N2_line','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_water_to_steam_system','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_primary_quench','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_secondary_quench','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure_analysis_line','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('Ar_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('N2_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2O_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H6_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H4_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H2_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H8_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H6_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C6H6_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C7H8_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C10H8_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2S_MS','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('Ar_GC','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('N2_GC','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2_GC','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_GC','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_GC','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_GC','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H6_GC','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('NDIR_CO','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('NDIR_CO2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('NDIR_CH4','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('Ar_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('N2_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H6_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H4_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H2_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H8_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H6_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C6H6_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C7H8_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C10H8_normalized','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('N2_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('Ar_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2O_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H6_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H4_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H2_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H8_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H6_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C6H6_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C7H8_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C10H8_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('N2_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('Ar_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2O_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H6_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H4_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H2_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H8_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H6_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C6H6_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C7H8_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C10H8_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('O_inlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('O_outlet', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('X_std','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('X_tot','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('X_good','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_yield','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tar_loading','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tar_loading_incl','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('space_time', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pp_H2O', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pp_CO2', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pp_Ar', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('volumetric_inlet_gas_only', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('T_cupmix_gas_only', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('optical_thickness_d10','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('optical_thickness_d50','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('optical_thickness_d90','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C_gas_mass_balance','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_yield','1');

