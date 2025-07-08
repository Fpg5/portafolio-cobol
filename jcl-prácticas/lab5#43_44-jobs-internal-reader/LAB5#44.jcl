 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),   
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                          
 //****************************************************************** 
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#44)             *** 
 //*   DOC: Route a job to INTRDR using IEBGENER 2/2              ***
 //*                                                              *** 
 //****************************************************************** 
 //PROC32   PROC                                                    
 //*                                                                  
 //S1       EXEC PGM=IEBGENER                                         
 //SYSUT1   DD DSN=&DS                                                
 //SYSUT2   DD SYSOUT=&OUT                                            
 //SYSPRINT DD SYSOUT=&OUT                                            
 //SYSIN    DD DUMMY                                                  
 //         PEND                                                      
 //*                                                                  
 //S10      EXEC PROC32,DS=TSOZA32.ES10.CNTL(LAB5#43),OUT=(,INTRDR)