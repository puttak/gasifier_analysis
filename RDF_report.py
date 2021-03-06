#!/usr/bin/env python

from math import *
import os
from LabFunctionLib import *
import datetime
import numpy as np
import matplotlib.pyplot as plt
import db_toolbox as db
import Thermo
import argparse
import csv
import subprocess
import statsmodels.tsa.arima_model as ARIMA
import dataFrame_v2 as df
from plots_toolbox import *


class GasifierReport:
    """The basic data analysis class for gasifier experiments"""

    def __init__(self, run_id, run_information = None):
        #Create the gasifier data frame, and load the data from the SQL database (this will be automated through the interface later)

        self.interface_raw = db.db_interface(host = "192.168.10.20", user = "chris", passwd = "cmp87ud01")
        self.interface_raw.connect()
        q = db.use_Query("sunulator2")
        self.interface_raw.query(q)
        self.interface_proc = db.db_interface(host = "192.168.10.20", user = "chris", passwd = "cmp87ud01")
        self.interface_proc.connect()
        q = db.use_Query("sunulator2")
        self.interface_proc.query(q)


        self.run_id = run_id
        self.run_info = RunInformation()
        self.run_integrals = RunInformation()
        #self.run_info.info = run_information
        self._load_run_info()
        self._create_file_structure()
        print "loading integral data..."
        self._load_run_integrals()
        print "loading timeseries data..."
        self._load_ts_timeseries_data()
        self._load_ss_timeseries_data()
        print "converting units..."
        self._add_units_to_run_info()
        self._convert_gas_units_run_info()
        self._convert_conversions_to_percent()
        self._add_std_percent()
        #self._convert_steam_flow_to_ml_min()
   
        
        #Generate pie plot
        print "creating pie plot..."
        self.calc_gas_comp_pie_plot()
        self.gas_pie_plot = PiePlot(data = self.pie_gasvals, keys = self.pie_goodgas, figsize = (7,7), save_loc = "%s%s" % (self.directory, str(self.run_info.info['run_id'])))
        self.gas_pie_plot.plot()
        self.gas_pie_plot.save()
        pie_LaTeX = self.gas_pie_plot.save_loc
        self.gas_pie_plot.close()
          
        
        self.run_info.info['piegas']=pie_LaTeX
        print "creating ts plots..."
        self.ts['biomass_feedrate'] = self.ts['massflowrate'] * self.run_info['feeder_slope'] + self.run_info['feeder_intercept']
        ts_plots = {}
        #Generate time series plots - This should probably be encapsulated in an object -- you can see WAY too much about how this works; in fact, the chart info should be an object
        ts_keys = ['mass_feed','main_comp','trace_comp','tube_temps','zone_temps']
        ts_Ycols = [['biomass_feedrate'],['gc_co', 'gc_h2', 'gc_ch4','GC_CO2','GC_AR'],['C2H4_GC', 'C2H6_GC', 'C2H2_GC', 'C3H8_GC','C3H6_GC'],['tube_temp_1','tube_temp_2','tube_temp_3','tube_temp_4','tube_temp_5'],['zone1temp','zone2temp','zone3temp']]
        ts_ylabels = ['Biomass feed rate (lb/hr)', 'Gas Composition (% vol)','Gas Composition (%)', 'Tube Skin Temperatures ($^\circ$C)','Element Temperatures ($^\circ$C)']
        ts_captions = ['Time series plot for biomass flowrate', 'Time series plot for gas composition', 'Time series plot for trace gas composition', 'Time series plot for reactor tube skin temperatures', 'Time series plot for element temperatures']
        ts_markers = ['-','o','o','-','-']
        
        LaTeX_ts = ""

        for key, cols, label, caption, marker in zip(ts_keys,ts_Ycols, ts_ylabels, ts_captions, ts_markers):
            print cols
            ts_plots[key] = TimeSeriesPlot(data = self.ts, Y_cols = [cols], y_labels = [label], caption = caption, save_loc = "%s%s_%s" % (self.directory, self.run_id, key), markers =[marker])
            ts_plots[key].plot()
            ts_plots[key].fill(self.ss['timestamp'])
            ts_plots[key].save()
            LaTeX_ts += ts_plots[key].LaTeX_insert("ts_%s" % key)
            ts_plots[key].close()
	print "creating four plots..."
        #Generate four plots
        fp_plots = {}
        fp_keys = ['mass_feed', 'temp_mid', 'temp_steam','pressure', 'CO_GC', 'CO2_GC', 'H2_GC', 'CH4_GC']
        fp_Y = ['biomass_feedrate','tube_temp_3','steamtemp','pressure','gc_co','gc_h2','GC_CO2','gc_ch4']
        fp_label = ['Biomass Flow Rate (lbs/hr)','Reactor Skin Middle ($^\circ$C)','Steam Temperature ($^\circ$C)','System Pressure (psig)','Carbon Monoxide (mol%)','Hydrogen (mol%)','Carbon Dioxide (mol%)', 'Methane (mol%)']
        fp_caption = ['Four-plot for biomass flow rate','Four-plot for reactor skin temperature','Four-plot for temperature of steam at reactor inlet', 'Four-plot for system pressure', 'Four-plot for carbon monoxide readings from the gas chromatograph','Four-plot for hydrogen readings from the gas chromatograph','Four-plot for carbon dioxide readings from the gas chromatograph','Four-plot for methane readings from the gas chromatograph']
        
        LaTeX_fp = ""

        for key, Y, label, caption in zip(fp_keys, fp_Y, fp_label, fp_caption):
            fp_plots[key] = FourPlot(data = self.ss, x_label = 'Time', y_label = label, x_var = 'timestamp', y_var = Y, caption = caption,save_loc = "%s%s_%s" % (self.directory, self.run_id, key))
            fp_plots[key].plot()
            fp_plots[key].save()
            LaTeX_fp += fp_plots[key].LaTeX_insert("fp_%s" % key)
            fp_plots[key].close()
        
        print "creating control charts..."
        #Create ARIMA fits as necessary - will not work for NaN data (i.e. raw MS data -- that should not be autocorrellated anyway)
        ARIMA_list = ['biomass_feedrate','steamtemp']
        for col in ARIMA_list:
            #try:
                self.fit_ARIMA(col)
                
            #except Exception:
            #    ARIMA_list.remove(col)

        ARIMA_captions = {'biomass_feedrate':'biomass flow rate','steamtemp':'reactor inlet steam temperature'}        

        cp_plots = {}
        cp_keys = ['mass_feed', 'temp_mid', 'temp_steam','pressure', 'CO_GC', 'CO2_GC', 'H2_GC', 'CH4_GC', 'mass_feed_ARIMA','temp_steam_ARIMA']
        cp_Y = ['biomass_feedrate','tube_temp_3','steamtemp','pressure','gc_co','gc_h2','GC_CO2','gc_ch4']
        cp_caption = []
        items = ['biomass flow rate', 'reactor skin temperature', 'temperature of steam at reactor inlet', 'pressure', 'carbon monoxide (GC)', 'hydrogen (GC)' ,'carbon dioxide (GC)', 'methane (GC)']
        for col in ARIMA_list:
            cp_keys.append('%s_ARIMA' % col)
            cp_Y.append('%s_ARIMA_resid' % col)
            items.append(ARIMA_captions[col])
        for item in items:
            cp_caption.append("Individuals control chart for %s ARIMA(1,1) residuals" % item)
        
            


        LaTeX_cp = ""
        for key, Y, caption in zip(cp_keys, cp_Y, cp_caption):
            input_df = ControlChartfromDataframe(data = self.ss, y_col = Y, x_col = 'timestamp', ignore_nan = True)
            cp_plots[key] = IndividualsXBarControlChart(data = input_df.getDataframe(), caption = caption, save_loc = "%s%s_%s" % (self.directory, self.run_id, key))
            cp_plots[key].plot()
            cp_plots[key].annotate(1)
            cp_plots[key].annotate(2)
            cp_plots[key].save()
            LaTeX_cp += cp_plots[key].LaTeX_insert("cp_%s" % key)
            cp_plots[key].close()

        self.run_info.info['timeseriesplots'] =  LaTeX_ts
        self.run_info.info['fourplots'] = LaTeX_fp
        self.run_info.info['controlplots'] = LaTeX_cp
           
        
       

        print "generating standard report..."
        self.generate_standard_report()
        
        
        
    def _create_file_structure(self):
        self.directory='rpt/%s/' % str(self.run_info.info['run_id'])
        if not os.path.exists(self.directory):
            os.makedirs(self.directory)
        
    def _load_run_info(self):
        self.run_info.SQL_load(self.interface_proc, table = 'run_summary', run_id = self.run_id)

    def _load_run_integrals(self):
        self.run_integrals.SQL_load(self.interface_proc, table = 'RDF_integral_tbl', run_id = self.run_id)
        for i in self.run_integrals.info:
            if i not in self.run_info.info:
                self.run_info.info[i]=self.run_integrals.info[i]

    def _load_ts_timeseries_data(self):
        """Loads raw gasifier data."""
        self.ts = GasifierProcTS(start = self.run_info.info['timestamp_start'], end = self.run_info.info['timestamp_end'])
        self.ts.SQL_load(self.interface_raw,'merged_data', glossary='glossary') #This line needs to automatically load the units
        
        #Need to build the glossary using the SQL tools
        q = db.select_Query(objects = ['tag_number', 'simple_name', 'units'], table = "glossary")
        glossary = self.interface_raw.query(q)
        self.glossary = {}
        self.gl_units = {}
        for row in glossary:
            self.glossary[row['tag_number']] = row['simple_name']
            self.gl_units[row['simple_name']] = row['units']
        
        self.ts.glossary_replace(self.glossary)
        self.ts.set_units(self.gl_units)
        self.ts.replace_None_w_nan_all()

    def _load_ss_timeseries_data(self):
        """Loads processed steady state data including calculated columns"""
        self.ss = ts_data(start = self.run_info.info['ss_start'], end = self.run_info.info['ss_end'])
        self.ss.SQL_load(self.interface_proc,'RDF_proc_data', glossary = 'glossary')
        
        self.ss.replace_None_w_nan_all()

    def _add_units_to_run_info(self):
        for i in self.ts.units:
            if self.ts.units[i]=='C':
                self.run_info.info[i+'_units']=r'$^\circ'+r'$C'
            elif self.ts.units[i]=='%':
                self.run_info.info[i+'_units']='\%'
            else:
                self.run_info.info[i+'_units']=self.ts.units[i]

    def _add_std_percent(self):
        l=self.run_info.info.keys()
        for i in l:
            if i.endswith('_std') and self.run_info.info[i] is not None:
                try: self.run_info.info[i[:-4]+'_pstd']=self.run_info.info[i]/self.run_info.info[i[:-4]+'_avg']*100
                except KeyError:
                    pass
                except ZeroDivisionError:
                    self.run_info.info[i[:-4]+'_pstd']=0

    ##CHANGE -- USE UNIT CONVERTER
    def _convert_gas_units_run_info(self):
        gaslist=[]
        for i in self.run_info.info:
            if i.endswith('_normalized_avg'):
                gaslist.append(i.replace('_avg', ''))
        for gas in gaslist:
            self.run_info.info[gas+'_avg']*=100
            self.run_info.info[gas+'_std']*=100
            self.run_info.info[gas+'_units']='\%'
            #if self.run_info.info[gas+'_avg']<1 and self.run_info.info[gas+'_avg']>0:
            #   self.run_info.info[gas+'_avg']*=10000
            #   self.run_info.info[gas+'_std']*=10000
            #   self.run_info.info[gas+'_units']='ppm'
            #if self.run_info.info[gas.replace('_normalized','_MS_units')]=='ppm':
            #    self.run_info.info[gas+'_units']='ppm'                                  
        normprod=self.run_info.info['CO_normalized_avg']/self.run_info.info['mol_pct_CO_avg']
        
    

    ##CHANGE        
    def _convert_steam_flow_to_ml_min(self):
        self.run_info.info['steam_flow_avg']*=7.55987283

    def _convert_conversions_to_percent(self):
        l=[i for i in self.run_info.info if i.startswith('X_')]
        for i in l:
            self.run_info.info[i]*=100
        
    
      
    def calc_gas_comp_pie_plot(self):
        gasdict={}
        gaslist = ["H2","O2","N2","CO","CO2","CH4","Ar","C2H6","C2H4","C2H2","C3H8","C3H6"]
        
        for i in ["mol_pct_%s_avg" % c for c in gaslist]:
            gasdict[i]=self.run_info.info[i]
        goodgas=['CO', 'CO2', 'CH4', 'H2']
        targas=['C2H6', 'C2H4', 'C2H2', 'C3H8', 'C3H6']
        plotgasvals=np.array([])
        tar=100-gasdict['mol_pct_N2_avg']-gasdict['mol_pct_O2_avg']-gasdict['mol_pct_Ar_avg']
        for i in goodgas:
            tar-=gasdict['mol_pct_%s_avg' % i]
            plotgasvals = np.append(plotgasvals, gasdict['mol_pct_%s_avg' % i])
        goodgas.append('C2+')
        self.pie_gasvals = np.append(plotgasvals,tar)
        self.pie_goodgas = goodgas
        
        
        
    def _load_report_template(self):
        with open('GasificationAnalysisReportTemplate_RDF.tex', 'r') as f:
            self.template=f.read()
            
    def generate_standard_report(self):
        self._load_report_template()
        self.text=self.template
        self.variables={i.replace('_', '-'):self.run_info.info[i] for i in self.run_info.info}
        for i in self.variables:
            if type(self.variables[i])==float:
                self.variables[i]='%s' % '%.4g' % self.variables[i]
            else: self.variables[i]=str(self.variables[i])
            self.text=self.text.replace('%s\t' % i, '%s\t' % self.variables[i])
            self.text=self.text.replace('%s ' % i, '%s ' % self.variables[i]) 
            self.text=self.text.replace('%s}' % i, '%s}' % self.variables[i])
        filename=str(self.run_info.info['run_id'])+'_report.tex'
        with open('./'+filename,'w') as f:
            f.write(self.text)
        print 'LaTeX file created at %s\n' % '/.'+filename

    def fit_ARIMA(self, col, order = (1,1)):
        try:
            
            model = ARIMA.ARMA(self.ss[col])
            
            result = model.fit(order=order)
            self.ss['%s_ARIMA_fitted' % col] = result.fittedvalues
            self.ss['%s_ARIMA_resid' % col] = result.resid
        except KeyError:
            print "Warning: %s is a bad key, ignoring" % col

def parse_list(txt):
    main_list = txt.split(",")
    run_id_list = []
    for sublist in main_list:
        if ":" in sublist:
            left = sublist.split(":")[0]
            right = sublist.split(":")[1]
            run_id_list.extend(range(int(left), int(right)+1))
        else:
            run_id_list.append(int(sublist))


    return run_id_list  

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description = "Run a gasifier analysis")
    parser.add_argument('--run_range', type=str, action = 'store')
    parser.add_argument('--run_id',type=str, action ='store')
    parser.add_argument('--file',type=str,action = 'store')
    args = parser.parse_args()

    if args.run_id is not None:
        run_id_list = [args.run_id]

    elif args.run_range is not None:
        run_id_list = parse_list(args.run_range)

    elif args.file is not None:
        f = open(args.file)
        a = f.readline()
        a = a[:-1]
        
        run_id_list = parse_list(a)

           
    for run_id in run_id_list:
        print "Generating a Report for Run %s..." % run_id
        report = GasifierReport(run_id = run_id)
        #except: print "Report Generation Failed for Run %s" %run_id



