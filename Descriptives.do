******************
***DESCRIPTIVES***
******************

tab AGE
tab TENURE
tab GENDER
tab ACTIVE
tab MULTIWORK
tab DINVESTO
tab DSTARTUP
tab DACADEMI 


tab DPRESEED 
tab DSEED 
tab DSERIESA
tab DSERIESB
tab DSERIESC
tab DFINANC
tab DSTRATEG 
tab INVROLE //0-no investor, 1-angel investor, 2-venture capitalist, 3-corporate venture capitalist, 4-investment banker



***********************
***SUMMARY STAISTICS***
***********************
local MAIN VALUE
*HETEHOVA NETCONVA NETPOSVA
local IVS A B C D
local CONTROLS AGE GENDER TENURE ACTIVE MULTIWORK DINVESTO DSTARTUP DACADEMI
estpost summarize `MAIN' `IVS' `CONTROLS'
estout . using SUMMARY.xls, replace cells("mean sd min max")

******************
***CORRELATIONS***
******************
estpost correlate `MAIN' `IVS' `CONTROLS', matrix listwise
esttab using CORRELATIONS.csv, unstack not csv stardetach star(* 0.01) replace
