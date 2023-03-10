# #!/usr/bin/env python
# # coding: utf-8
# 
# # In[ ]:
# 
# 

from netpyne import sim
import matplotlib; matplotlib.rcParams.update({'font.size': 16})

sim.load('v34_batch_eeg_plot_0_0_data.pkl', instantiate=False)
print(f"sim.allSimData.keys() : {sim.allSimData.keys()}")


sim.analysis.plotEEG(showCell=False, saveFig='EEG_all', timeRange=[0,2000], showPop=False)

