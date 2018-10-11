###############################################################################
#                                                                             #
# FreePDK Setup Script                                                        #
#    2/23/2008 by Rhett Davis (rhett_davis@ncsu.edu)                           #
#                                                                             #
###############################################################################

# Set the PDK_DIR variable to the root directory of the FreePDK distribution
setenv PDK_DIR /research/ece/lnis/USERS/giacomin/freepdk_45nm/virtuoso_hspice/FreePDK45
# Set CDSHOME to the root directory of the Cadence ICOA installation
setenv CDSHOME /uusoc/facility/cad_tools/Cadence/IC6.1.7.500.1300

# Set HSP_INST_DIR to the root directory of the HSPICE installation
#setenv HSP_INST_DIR /afs/eos/dist/hspice2010

# Set MGC_HOME to the root directory of the Calibre installation
#setenv MGC_HOME /afs/eos/dist/calibre2010

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

set present = `printenv PYTHONPATH`
if ($present == "") then
  setenv PYTHONPATH $PDK_DIR'/ncsu_basekit/techfile/cni'
else
  setenv PYTHONPATH $PYTHONPATH':'$PDK_DIR'/ncsu_basekit/techfile/cni'
endif

setenv MGC_CALIBRE_DRC_RUNSET_FILE ./.runset.calibre.drc
setenv MGC_CALIBRE_LVS_RUNSET_FILE ./.runset.calibre.lvs
setenv MGC_CALIBRE_PEX_RUNSET_FILE ./.runset.calibre.pex
