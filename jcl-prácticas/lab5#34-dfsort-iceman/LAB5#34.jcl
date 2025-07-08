 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#34)             ***
 //*   DOC: USE OF DFSORT (ICEMAN)                                ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBCOPY                            
 //SYSUT1   DD DSN=D80WW.ES10V15.CNTL,DISP=SHR          
 //SYSUT2   DD DSN=TSOZA32.ES10.CNTL,DISP=SHR           
 //SYSPRINT DD SYSOUT=*                                 
 //SYSIN    DD *                                        
            COPY INDD=SYSUT1,OUTDD=SYSUT2               
            SELECT MEMBER=(SORTTEST)                    
 /*                                                                                                  
 //STEP2    EXEC PGM=ICEMAN                             
 //SORTIN   DD DSN=TSOZA32.ES10.CNTL(SORTTEST),DISP=SHR 
 //SORTOUT  DD DSN=TSOZA32.ES1O.CNTL(SORTOUT1),DISP=SHR 
 //SYSOUT   DD SYSOUT=*                                 
 //SYSIN    DD *                                        
            SORT FIELDS=(1,3,CH,D,4,16,CH,A)                      
            OPTION SKIPREC=1                                                       
 /*   