**************
***POST-HOC***
**************
***(1) NO ACADEMICS
*Heterogenous vs homogenous
estimates clear
local CONTROLS AGE GENDER TENURE ACTIVE MULTIWORK DINVESTO DSTARTUP
eststo: regress HETEHOVA `CONTROLS' A if A==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' A if A==1 | C==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' A if A==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' B if B==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' B if B==1 | C==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' B if B==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' C if C==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' C if C==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' C if C==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' D if D==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' D if D==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress HETEHOVA `CONTROLS' D if D==1 | C==1 & DACADEMI==0, vce(robust)
estout using PH_HETEHOVA.xls, cells(b(star fmt(3)) se(par fmt(3))) stats(N r2 F p, fmt(3)) starlevels(* 0.1 ** 0.05 *** 0.01) stardetach replace
estimates clear

*Interconnected vs dispersed
estimates clear
local CONTROLS AGE GENDER TENURE ACTIVE MULTIWORK DINVESTO DSTARTUP
eststo: regress NETCONVA `CONTROLS' A if A==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' A if A==1 | C==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' A if A==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' B if B==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' B if B==1 | C==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' B if B==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' C if C==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' C if C==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' C if C==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' D if D==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' D if D==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' D if D==1 | C==1 & DACADEMI==0, vce(robust)
estout using PH_NETCONVA.xls, cells(b(star fmt(3)) se(par fmt(3))) stats(N r2 F p, fmt(3)) starlevels(* 0.1 ** 0.05 *** 0.01) stardetach replace
estimates clear


*Central vs peripheral
estimates clear
local CONTROLS AGE GENDER TENURE ACTIVE MULTIWORK DINVESTO DSTARTUP
eststo: regress NETPOSVA `CONTROLS' A if A==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' A if A==1 | C==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' A if A==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' B if B==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' B if B==1 | C==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' B if B==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' C if C==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' C if C==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' C if C==1 | D==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' D if D==1 | A==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' D if D==1 | B==1 & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' D if D==1 | C==1 & DACADEMI==0, vce(robust)
estout using PH_NETPOSVA.xls, cells(b(star fmt(3)) se(par fmt(3))) stats(N r2 F p, fmt(3)) starlevels(* 0.1 ** 0.05 *** 0.01) stardetach replace
estimates clear

*Large versus small
estimates clear
local CONTROLS AGE GENDER TENURE ACTIVE MULTIWORK DINVESTO DSTARTUP
eststo: regress HETEHOVA `CONTROLS' BD & DACADEMI==0, vce(robust)
eststo: regress NETCONVA `CONTROLS' BD & DACADEMI==0, vce(robust)
eststo: regress NETPOSVA `CONTROLS' BD & DACADEMI==0, vce(robust)
estout using PH_SIZE.xls, cells(b(star fmt(3)) se(par fmt(3))) stats(N r2 F p, fmt(3)) starlevels(* 0.1 ** 0.05 *** 0.01) stardetach replace
estimates clear
