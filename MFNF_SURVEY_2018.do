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


label variable ID "Answer ABCD ID of participant"label variable ID_NO "Run on ID number including ABCD Value answer"label variable DURTOT "Q000 Total survey Duration"label variable DURINTR "Q001 Read survey intro page"label variable DURDESCR "Q004 Read survey description"label variable GENDER "Q009 What is your gender?"label variable AGE "Q010 What is your age?"label variable DINVESTO "Q011 How would you describe your role?"label variable DSTARTUP "Q011 How would you describe your role?2"label variable DACADEMI "Q011 How would you describe your role?3"label variable DOTHER "Q011 How would you describe your role?4"label variable ACTINV "Q013 Narrow down your investor role"label variable ENTRPEXP "Q014 Narrow down your entrepreneurial/start-up role"label variable ACENEXP "Q015 Have ever participated in a start-up or university spin-out?"label variable OTHTENU "Q017 Tenure in other position in years"label variable FOUNDEXP "Q019 Serial entrepreneur - How many companies?"label variable INVROLE "Q021,Q027 How would you describe your investor role?"label variable INVROLE2 "Q021,Q027 How would you describe your investor role?"label variable DPRESEED "Q023M,Q029M Active and former investor - investment stage"label variable DSEED "Q023M,Q029M Active and former investor - investment stage 2"label variable DSERIESA "Q023M,Q029M Active and former investor - investment stage 3"label variable DSERIESB "Q023M,Q029M Active and former investor - investment stage 4"label variable DSERIESC "Q023M,Q029M Active and former investor - investment stage 5"label variable DSTAGEOT "Q023M,Q029M Active and former investor - investment stage 6"label variable DFINANC "Q024M,Q030M Nature of the  investments in the active and former investment firm?"label variable DSTRATEG "Q024M,Q030M Nature of the  investments in the active and former investment firm? 2"label variable INVTENUR "Q026,Q032 Tenure in your position as an active or former investor"label variable NUMINVES "Q033 How many investment decisions have you made in the past?"label variable SU1TENUR "Q036 Tenure in your first entrepreneurial role"label variable SU1INC "Q037 In which year was the first start-up incorporated?"label variable SU1INSTA "Q039 In which investment stage is the first start-up currently?"label variable SU1VENCP "Q040 Did the first start-up receive venture capital in the past?"label variable SU1NUMIN "Q040 How many investors are invested in the first start-up?"label variable SU1STATE "Q042 Is the first start-up still active in its founding form?"label variable SU2TENUR "Q045 Tenure in your second entrepreneurial role"label variable SU2INC "Q046 In which year was the second start-up incorporated?"label variable SU2INSTA "Q048 In which investment stage is/was the second start-up?"label variable SU2VENCP "Q049 Did the second start-up receive venture capital in the past?"label variable SU2NUMIN "Q050 How many investors are/were invested in the second start-up?"label variable SU2STATE "Q051 Is the second start-up still active in its founding form?"label variable SU3TENUE "Q054 Tenure in your third entrepreneurial role"label variable SU3INC "Q055 In which year was the third start-up incorporated?"label variable SU3INSTA "Q057 In which investment stage is/was the third start-up?"label variable SU3VENCP "Q058 Did the third start-up receive venture capital in the past?"label variable SU3NUMIN "Q059 How many investors are/were invested in the third start-up?"label variable SU3STATE "Q060 Is the third start-up still active in its founding form?"label variable SU4TENUE "Q063 Tenure in your fourth entrepreneurial role"label variable SU4INC "Q064 In which year was the fourth start-up incorporated?"label variable SU4INSTA "Q066 In which investment stage is/was the fourth start-up?"label variable SU4VENCP "Q067 Did the fourth start-up receive venture capital in the past?"label variable SU4NUMIN "Q068 How many investors are invested in the fourth start-up?"label variable SU4STATE "Q069 Is the fourth start-up still active in its founding form?"label variable FORSUTEN "Q072 Tenure in your former entrepreneurial role"label variable FORSUINC "Q073 In which year was the start-up incorporated?"label variable FORSUSTA "Q075 In which investment stage was the start-up?"label variable FORVENCP "Q076 Did the start-up receive venture capital in the past?"label variable FORNUMIN "Q077 How many investors were invested in the start-up?"label variable FORSTATE "Q078 Why is the startup not existent anymore?"label variable SENTENUR "Q081 Tenure in your employee role"label variable SENINC "Q082 In which year was the start-up incorporated?2"label variable SENINSTA "Q084 In which investment stage is the start-up?"label variable SENVENCP "Q085 Did the start-up receive venture capital in the past?2"label variable SENINV "Q086 How many investors are invested in the start-up?"label variable ACVALU "Q090 Have you participated the valuation of a start-up?"label variable ACTENURE "Q091 Tenure in current academic position in years"label variable INSTCOUN "Q092 Academic institutions/ companies you are affiliated with"label variable ASP1TENU "Q094 Tenure in your first spin-out role"label variable ASP1INC "Q095 In which year was the first spin-out incorporated?"label variable ASP1STAG "Q097 In which investment stage is/was the first spin-out?"label variable ASP1VENC "Q098 Did the first spin-out receive venture capital in the past?"label variable ASP1INV "Q099 How many investors are/were invested in the first spin-out?"label variable ASP1STAT "Q100 Is the first spin-out still active in its founding form?"label variable ASP2TENU "Q103 Tenure in your second spin-out role"label variable ASP2INC "Q104 In which year was the second spin-out incorporated?"label variable ASP2STAG "Q106 In which investment stage is/was the second spin-out?"label variable ASP2VENC "Q107 Did the second spin-out receive venture capital in the past?"label variable ASP2INV "Q108 How many investors are/were invested in the second spin-out?"label variable ASP2STAT "Q109 Is the second spin-out still active in its founding form?"label variable ASP3TENU "Q112 Tenure in your third spin-out role"label variable ASP3INC "Q113 In which year was the third spin-out incorporated?"label variable ASP3STAG "Q115 In which investment stage is/was the third spin-out?"label variable ASP3VENC "Q116 Did the third spin-out receive venture capital in the past?"label variable ASP3INV "Q117 How many investors are/were invested in the third spin-out?"label variable ASP3STAT "Q118 Is the third spin-out still active in its founding form?"label variable DURVALDE "Q122 Survey valuation description"label variable DURHETHO "Q124 Hetehomo Submit"label variable HETEHO_A "Q124 Size and Heterogeneous vs. Homogeneous"label variable HETEHO_B "Q124 Size and Heterogeneous vs. Homogeneous2"label variable HETEHO_C "Q124 Size and Heterogeneous vs. Homogeneous3"label variable HETEHO_D "Q124 Size and Heterogeneous vs. Homogeneous4"label variable HETEHOVA "Q124 Size and Heterogeneous vs. Homogeneous Value"label variable DURNETCN "Q126 Netcon submit"label variable NETCON_A "Q126 Size and Interconnected vs. Dispersed"label variable NETCON_B "Q126 Size and Interconnected vs. Dispersed2"label variable NETCON_C "Q126 Size and Interconnected vs. Dispersed3"label variable NETCON_D "Q126 Size and Interconnected vs. Dispersed4"label variable NETCONVA "Q126 Size and Interconnected vs. Dispersed Value"label variable DURNETPO "Q128 Netpos submit"label variable NETPOS_A "Q128 Size and Central vs. Peripheral Position"label variable NETPOS_B "Q128 Size and Central vs. Peripheral Position2"label variable NETPOS_C "Q128 Size and Central vs. Peripheral Position3"label variable NETPOS_D "Q128 Size and Central vs. Peripheral Position4"label variable NETPOSVA "Q128 Size and Central vs. Peripheral Position Value"