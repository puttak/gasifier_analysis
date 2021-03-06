USE sunulator2;

DROP TABLE IF EXISTS analysis_config_tbl;

CREATE TABLE analysis_config_tbl
(
avg_std_cols VARCHAR(100),
active INT
);

INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('degas_flow',1);
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('entrainment_flow',1);
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('entrainment','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('rx_fur_z1_op','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('rx_fur_z2_op','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('rx_fur_z3_op','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steam_fur_z1_op','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steam_fur_z2_op','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steam_fur_z3_op','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tube_temp_5','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tube_temp_1','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tube_temp_2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tube_temp_3','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tube_temp_4','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('zone1temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('zone2temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('zone3temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('producttemp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('rx_out_b_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('ash_ko_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('bh_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('s_fur_z1_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('s_fur_z2_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('s_fur_z3_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steam_sh_out_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steam_fur_in_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('s_pc_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('analysis_gas_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('quench_vessel_Temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('feed_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steamtemp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('ent_gas_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('massflowrate','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('sweep_supply_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('quench_supply_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('lance_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('chiller_outlet_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pressure','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('purge_n2_supply_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('backup_quench_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tracer_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('baghouse_dp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('rx_outlet_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('degasser_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('sweep_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('tracer_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('o2_perc','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_NDIR','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_NDIR','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_NDIR','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('comp_air_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('analysis_inlet_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('analysis_discharge_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('flareline_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steam_vent_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('syngas_coriolis_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('boiler_discharge_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('syngas_humidity','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('steamflowrate','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('zone1power','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('zone2power','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('zone3power','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('RPM','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('ent_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('feeder_rpm','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('injection_psi','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('degasser_press','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('degasser_temp','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('net_entrainment_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('reactor_entrainment_flow','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('secondary_entrainment','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_H2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_O2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_N2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_CH4','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_CO','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_CO2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_Ar','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_C2H6','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_C2H4','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_C2H2','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_C3H8','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('mol_pct_C3H6','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('Ar_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('N2_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2O_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H6_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H4_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H2_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H8_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H6_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('Ar_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('N2_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2O_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H2_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO2_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CH4_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H6_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H4_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C2H2_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H8_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C3H6_outlet','1');
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
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('O_inlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('C_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('H_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('O_outlet','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('X_std','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('X_tot','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('X_good','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('CO_yield','1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('space_time', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pp_CO2', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pp_H2O', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('pp_Ar', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('delta_H', '1');
INSERT INTO analysis_config_tbl (avg_std_cols,active) VALUES ('exit_gas_flowrate', '1');
