#!/bin/csh

#################################################################################################
#																																																#
# 																		Virtuoso Setup Script																			#
#																																																#
# FreePDK 45nm version 1.4 (2011-04-07) + RRam Addon version 1.1 (2021-04-21)  [Apache License]	#
# Edouard Giacomin and Pierre Emmanuel Gaillardon																								#
# University of Utah																																						#
# ECE Department																																								#
# E. Giacomin and P. Gaillardon, "A Resistive Random Access Memory Addon 												#
# for the NCSU FreePDK 45 nm," in IEEE Transactions on Nanotechnology, vol. 18, pp. 68-72, 2019 #
# (https://ieeexplore.ieee.org/document/8540319) 																							  #
#																																																#
#################################################################################################

setenv PDK_DIR "/research/FreePDK45-RRAM-Addon"
#setenv HSP_HOME "hspice_home_directory"

set present = `printenv PYTHONPATH`
if ($present == "") then
  setenv PYTHONPATH $PDK_DIR'/ncsu_basekit/techfile/cni'
else
  setenv PYTHONPATH $PYTHONPATH':'$PDK_DIR'/ncsu_basekit/techfile/cni'
endif

setenv MGC_CALIBRE_DRC_RUNSET_FILE ./.runset.calibre.drc
setenv MGC_CALIBRE_LVS_RUNSET_FILE ./.runset.calibre.lvs
setenv MGC_CALIBRE_PEX_RUNSET_FILE ./.runset.calibre.pex

\virtuoso &
