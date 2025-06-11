//TSOBA093 JOB 0000,'MNPROG1A',MSGLEVEL=(1,1),                          
//         CLASS=A,MSGCLASS=Q,NOTIFY=&SYSUID,REGION=0M                  
//*********************************************************             
//COMP1 EXEC IGYWCL,PARM=(OFFSET,NOLIST,ADV),                           
//      PGMLIB='&&GOSET',GOPGM=SBPROG1A                                 
//COBOL.SYSIN DD DSN=TSOBA09.COBOL.FPGPROGS(SBPROG1A),DISP=SHR          
//COBOL.SYSLIB DD DSN=TSOBA09.ONLINE.LOADLIB,DISP=SHR                   
//*                                                                     
//COMP2 EXEC IGYWCL,PARM=(OFFSET,NOLIST,ADV),                           
//      PGMLIB='&&GOSET',GOPGM=MNPROG1A                                 
//COBOL.SYSIN DD DSN=TSOBA09.COBOL.FPGPROGS(MNPROG1A),DISP=SHR          
//COBOL.SYSLIB DD DSN=TSOBA09.ONLINE.LOADLIB,DISP=SHR                   
//*                                                                     
//COMP3 EXEC IGYWCL,PARM=(OFFSET,NOLIST,ADV),                           
//      PGMLIB='&&GOSET',GOPGM=MNPROG1A                                 
//COBOL.SYSIN DD DSN=TSOBA09.COBOL.FPGPROGS(MNPROG1A),DISP=SHR          
//LKED.SYSIN DD *                                                                                                             
   ENTRY MNPROG1A                                                       
   INCLUDE SYSLMOD(SBPROG1A)                                            
   INCLUDE SYSLMOD(MNPROG1A)                                            
 //*                                                                    
 //STEP4 EXEC PGM=MNPROG1A                                              
 //STEPLIB DD DSN=&&GOSET,DISP=(OLD,PASS)                               
 //EMPIN DD DSN=TSOBA09.DATA.FPGDATA(EMPDATA),DISP=SHR                  
 //SYSOUT DD SYSOUT=*                                                   