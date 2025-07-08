//DATADEMO JOB (ACCT),'FERNANDO',CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1)
//*******************************************************************
//* COMPILAR Y EJECUTAR EL PROGRAMA COBOL: DATADEMO               ***
//*******************************************************************
//STEP1        EXEC IGYWCL
//COBOL.SYSIN  DD DSN=TSOBA09.FPGPROGS(DATADEMO),DISP=SHR
//LKED.SYSLMOD DD DSN=&&LOADSET(DATADEMO),DISP=(MOD,PASS),
//             SPACE=(TRK,(1,1,1)),UNIT=SYSDA
//GO.SYSOUT    DD SYSOUT=*