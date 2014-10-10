/*-------------------------------------------------------------------------------
# Name:		99_CleanUp
# Purpose:	Remove empty project folders from main project directory
# Author:	Tim Essam, Ph.D.
# Created:	10/10/2014
# Owner:	USAID GeoCenter | OakStream Systems, LLC
# License:	MIT License
# Ado(s):	see below
#-------------------------------------------------------------------------------
*/

* Set local macro list of all the folders you wish to check for emptiness.
local maclist $pathdo $pathlog $pathin $pathout $pathgraph $pathxls ////
$pathreg $pathgis $pathraw $pathexport $pathRin $pathProg
display "`maclist'"

/* Create loop to do the following:
1) Check if requested folder exists
2) Check the folder and return the count of files
3) If the count equals zero, delete the folder
4) Report in red when a folder is deleted.
*/
foreach x of local maclist {
	confirmdir `x' 
		if `r(confirmdir)'!=170 {
			qui cd `x'
			local list:dir . files "*"
			local numfiles : word count `list'
			*di in yellow "`numfiles' files found in `x'" (turn on to show file count)
			qui cd $path	
				if `numfiles'==0 {
					rmdir `x' 
					display in red "`x' folder is empty. Removing."
		}
	}
}
*end
