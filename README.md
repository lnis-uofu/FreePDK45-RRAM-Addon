## FreePDK 45nm version 1.4 (2011-04-07) + Rram Addon version 1.0 (2018-05-20)  [Apache License]

This addon describes a CMOS compatible RRAM technology, for the NCSU FreePDK 45nm. The addon comprises of the Stanford RRAM VerilogA model, fitted on published experimental results as well as a set of DRC and LVS rules for Calibre to ensure the correctness of the physical designs. It also allows precise evaluations of RRAM-based systems.


*****Please first read the original_readme.txt which provide information and copyrights about the FreePDK 45nm design kit.*****
*****This README_rram_addon.txt file is intended to provide information for the rram addon installation and use.*****

Contributions and modifications to this kit are welcomed and encouraged.
More information can be found in the following publication: 

[*E. Giacomin and P. Gaillardon, "A Resistive Random Access Memory Addon for the NCSU FreePDK 45 nm," in IEEE Transactions on Nanotechnology, vol. 18, pp. 68-72, 2019.*](https://ieeexplore.ieee.org/document/8540319)


### Contents
* ncsu_basekit/     Base kit for custom design
* osu_soc/          Standard-cell kit for synthesis, place, & route
* rram_addon/       Rram addon (rram layout and VerilogA view, DRC/LVS rules etc.)


### How to install
To only install the FreePDK 45nm, WITHOUT the RRAM addon, follow the instructions of this file:
$PDK_DIR/ncsu_basekit/README.txt

To install both the FreePDK 45nm and the Rram Addon, follow the instructions of this file:
$PDK_DIR/rram_addon/README.txt


### How to use
1) When creating a new design library, you need to attach it to the RRAM_Addon library in order to be able to design with the RRAM addon.
2) The .cdsinit file already contains the necessary settings to include the transistor HSPICE models (we created a corner file located in /ncsu_basekit/models/hspice/models.corners) as well as the RRAM fitted VerilogA model. We adde
3) To be able to run HSPICE simulation, you will need to convert the analogLib to a hspice format. More information is available in the HSPICE documentation.


> Please send all questions and comments to edouard.giacomin@utah.edu / pierre-emmanuel.gaillardon@utah.edu


### Copyright
Copyright 2018 - Edouard Giacomin, Pierre-Emmanuel Gaillardon
                 University of Utah

All files are licensed under the Apache License, Version 2.0 (the "License");
you may not use these files except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


