#### ProjectSetup-Stata
==================

Code for creating and managing a new Stata project. The code found in this repository can be used to setup a Stata project.  When executed, the code will do the following:
* Create a project directory and populate it with selected sub-folders
* Set global macros linked to each folder
* Check and install a list of required .ados (optional).

The typical file folder structure is shown below. The coded is drafted such that the `00_SetupGlobalsFolders` can be run whenever one wishes to set global macros. It will not write over existing folders with the same names. 

<img src = "https://cloud.githubusercontent.com/assets/5873344/4596019/df250c56-509e-11e4-9a01-7416c09a24e4.png">

When finished with a project run the `99_CleanUp.do` to remove any empty folders. It runs on the same global macros defined in the setup file. 
