***********************
***(C) Marc Felske ****
***********************

clear //erases all data and results
set more off //Stata file runs without stoppinga
cap log close //closes possibly opened 
cd "U:\STATA" //define path for all outputs
log using logfile.log, replace //saves all Outputs to text-file
use MFNF_SURVEY_2018.dta, clear //loads data set

***********************
*** Data Preparation **
***********************


destring, replace //replace string variables


***********************
**** Data Labeling ****
***********************


label variable ID "Answer ABCD ID of participant"