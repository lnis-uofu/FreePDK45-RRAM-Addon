#!/bin/csh

#################################################################################################
#																																																#
# 																		Directory Setup Script																		#
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

#Copy the virtuoso files
if !(-f ${PWD}/.cdsinit ) then
  cp ${PDK_DIR}/rram_addon/cdssetup/cdsinit ${PWD}/.cdsinit
endif

if !( -f ${PWD}/cds.lib ) then
  cp ${PDK_DIR}/rram_addon/cdssetup/cds.lib ${PWD}/cds.lib
endif

if !( -f ${PWD}/lib.defs ) then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/lib.defs ${PWD}/lib.defs
endif

if !(-f ${PWD}/.runset.calibre.drc ) then
  cp ${PDK_DIR}/rram_addon/cdssetup/runset.calibre.drc ${PWD}/.runset.calibre.drc
endif

if !(-f ${PWD}/.runset.calibre.lvs ) then
  cp ${PDK_DIR}/rram_addon/cdssetup/runset.calibre.lvs ${PWD}/.runset.calibre.lvs
endif

if !(-f ${PWD}/.runset.calibre.lfd ) then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/runset.calibre.lfd ${PWD}/.runset.calibre.lfd
endif

if !(-f ${PWD}/.runset.calibre.pex ) then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/runset.calibre.pex ${PWD}/.runset.calibre.pex
endif

if !(-f ${PWD}/launch-virtuoso.csh ) then
  cp ${PDK_DIR}/rram_addon/cdssetup/launch-virtuoso.csh ${PWD}/launch-virtuoso.csh
endif
