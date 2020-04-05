***************
***Variables***
***************
***DEPENDENT***
***************

recode DINVESTO DSTARTUP DACADEMI DOTHER OTHTENU INVTENUR SU1TENUR SU2TENUR SU3TENUE SU4TENUE FORSUTEN SENTENUR ACTENURE ASP1TENU ASP2TENU ASP3TENU (.=0)

recode ACTINV-NUMINVES (.=0)
recode INVROLE (5=0)

******************
***MAIN EFFECTS***
******************

***QUADRANTEN
generate A=HETEHO_A
label var A "Quadrant A: up/left"
generate B=HETEHO_B
label var B "Quadrant B: up/right"
generate C=HETEHO_C
label var C "Quadrant C: down/left"
generate D=HETEHO_D
label var D "Quadrant D: down/right"

generate AC=0
recode AC (0=1) if A==1 | C==1
label var AC "left side"

generate BD=0
recode BD (0=1) if B==1 | D==1
label var BD "right side"

***CONTROLS***
**************

*AGE GENDER TENURE DINVESTO DSTARTUP DACADEMI DOTHER

egen TENURE = rowmax(OTHTENU INVTENUR SU1TENUR SU2TENUR SU3TENUE SU4TENUE FORSUTEN SENTENUR ACTENURE ASP1TENU ASP2TENU ASP3TENU)
label var TENURE "Experience in longest activity"

egen MULTIWORK= anycount(DINVESTO DSTARTUP DACADEMI DOTHER), values(1)
recode MULTIWORK (1 = 0)
recode MULTIWORK (3 2 = 1)
label var MULTIWORK "Did you work in multiple functions (yes=1; investor, academic, etc)"

generate ACTIVE=0
recode ACTIVE (0=1) if ACTINV==1

generate FORMER=0
recode FORMER (0=1) if ACTINV==2

****
generate VALUE = (HETEHOVA + NETCONVA + NETPOSVA)/3


*******
*ORDER*
*******
order ID ID_NO HETEHOVA NETCONVA NETPOSVA A B C D HETEHO_A HETEHO_B HETEHO_C HETEHO_D NETCON_A NETCON_B NETCON_C NETCON_D NETPOS_A NETPOS_B NETPOS_C NETPOS_D  AGE GENDER TENURE DINVESTO DSTARTUP DACADEMI DOTHER, first
