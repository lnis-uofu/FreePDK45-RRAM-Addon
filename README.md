## FreePDK 45nm version 1.4 (2011-04-07) + Rram Addon version 1.1 (2021-04-20)  [Apache License]

Copyright (c) [2019] [Laboratory for NanoIntegrated Systems]

This addon describes a CMOS compatible RRAM technology, for the NCSU FreePDK 45nm. The addon comprises of the Stanford RRAM VerilogA model, fitted on published experimental results as well as a set of DRC and LVS rules for Calibre to ensure the correctness of the physical designs. It also allows precise evaluations of RRAM-based systems.


*****Please first read the original_readme.txt which provide information and copyrights about the FreePDK 45nm design kit.*****
*****This README.md file is intended to provide information for the rram addon installation and use.*****

Contributions and modifications to this kit are welcomed and encouraged.
More information can be found in the following publication: 

[*E. Giacomin and P. Gaillardon, "A Resistive Random Access Memory Addon for the NCSU FreePDK 45 nm," in IEEE Transactions on Nanotechnology, vol. 18, pp. 68-72, 2019.*](https://ieeexplore.ieee.org/document/8540319)


### Contents
* ncsu_basekit/     Base kit for custom design
* osu_soc/          Standard-cell kit for synthesis, place, & route
* rram_addon/       Rram addon (rram layout and VerilogA view, DRC/LVS rules etc.)


### Design Kit Installation and Usage (assuming a csh/tcsh shell)
  1) Clone the github repository.
  ```bash
  git clone https://github.com/lnis-uofu/FreePDK45-RRAM-Addon.git
  ```
  
  2) Set the variable PDK_DIR to where the Github folder is.
  ```bash
  setenv PDK_DIR "/XX/FreePDK45-RRAM-Addon"
  ```
		 
  3) Go to the folder you want to launch Virtuoso from (it is recommended to create a folder that is separated from the Github directory to keep thing clean), and set the variable PDK_DIR to where the Github folder is. 
  ```bash
  mkdir virtuoso
  cd virtuoso
  setenv PDK_DIR "/XX/FreePDK45-RRAM-Addon"
  source $PDK_DIR/rram_addon/cdssetup/setup.csh
  ```
	
  4) Source your own setup scripts for Cadence Virtuoso®, Mentor Graphics Calibre®, and Synopsys HSPICE® and launch Cadence Virtuoso® using the provided script. Note that the MGC_HOME (Calibre) and HSP_HOME (Hspice) variables should be defined in these scripts. 
  ```bash
  source launch-virtuoso.csh
  ```


### Miscellaneous Notes
1) When creating a new design library, you need to attach it to the RRAM_Addon library in order to be able to design with the RRAM addon.
2) The .cdsinit file already contains the necessary settings to include the transistor HSPICE models (we created a corner file located in /ncsu_basekit/models/hspice/models.corners) as well as the RRAM fitted VerilogA model. We adde
3) To be able to run HSPICE simulation, you will need to convert the analogLib to a hspice format. More information is available in the HSPICE documentation.

> In case of any doubts/questions/suggestions, please raise issue on GitHub or send an email to edouard.giacomin@utah.edu / pierre-emmanuel.gaillardon@utah.edu
