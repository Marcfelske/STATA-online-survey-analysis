*******************
****Marc Felske****
*******************
**********************
***GENERAL SETTINGS***
**********************
set more off
clear
cap log close
cd "/Users/USERNAME/Dropbox/PhD/STATA/Network Constellations/Output"
log using Master.log, replace
use "/Users/USERNAME/Dropbox/PhD/STATA/Network Constellations/Data.dta", clear

***************
***Variables***
***************
do "/Users/USERNAME/Dropbox/PhD/STATA/Network Constellations/Variables.do"

******************
***Descriptives***
******************
do "/Users/USERNAME/Dropbox/PhD/STATA/Network Constellations/Descriptives.do"

*******************
***Main Analyses***
*******************
do "/Users/USERNAME/Dropbox/PhD/STATA/Network Constellations/Main.do"

*************************
***** End of Do-File*****
*************************
log close
