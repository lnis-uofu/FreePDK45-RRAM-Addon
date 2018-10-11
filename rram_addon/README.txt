***** Quick Design Kit + RRAM Addon Usage Instructions *****

  1) Change the environment variable $PDK_DIR in the file
     $PDK_DIR/rram_addon/cdssetup/setup.csh to reflect the FreePDK
     installation path.
     
  2) Change the environment variable $CDSHOME in the file
     $PDK_DIR/ncsu_basekit/rram_addon/setup.csh to reflect your Cadence
     Virtuoso installation path.
     You also need to setup HSP_INST_DIR and MGC_HOME in case you want to use
     Calibre and Hspice tools.

  3) Source your setup scripts for Cadence Virtuoso, Mentor Graphics
     Calibre, and CiraNova PyCell Studio.  For more information about 
     setting up PyCell Studio, see the "P-Cells" section of the file
     $PDK_DIR/ncsu_basekit/doc/FreePDK45_Manual.txt
     
  4) Change to the directory where you want to start Virtuoso and
     source the file $PDK_DIR/rram_addon/cdssetup/setup.csh.  Note that
     this script copies all of the required user files (.cdsinit,
     cds.lib, and lib.defs) to the current working directory 
     if they do not already exist.

  5) Start Cadence Virtuoso ( % virtuoso &  for example ) 

  6) When using virtuoso again, it is suggested to create a script setting the HSP_INST_DIR, MGC_HOME, CDSHOME, PDK_DIR and other necessary variables.

  7) If using Hspice, you need to convert the analogLib from Cadence to a hspcie version.

***** Other documentation can be found in $PDK_DIR/ncsu_basekit/doc *****

  FreePDK45_Release_Notes.txt    Release Notes for this Kit
  FreePDK45_Manual.txt           Manual for this Kit

***** The rram addon documentation can be found in $PDK_DIR/rram_addon/doc *****

  Rram_Addon_Release_Notes.txt    Release Notes for this addon
  Rram_Addon_Manual.txt           Manual for this addon

***** Please send all questions and comments related to the CMOS PDK to eda_help@ncsu.edu *****
***** Please send all questions and comments related to the rram addon to edouard.giacomin@utah.edu *****
