 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),    
 //         NOTIFY=&SYSUID,CLASS=A,REGION=6M                           
 //****************************************************************** 
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#31)             *** 
 //*   DOC: OVERRIDE DD-STATEMENTS OF AN IN-STREAM PROCEDURE      *** 
 //*                                                              *** 
 //****************************************************************** 
 //COMP     PROC                                                       
 //*****                                                               
 //***** MAKE BACKUP                                                 
 //*****                                                               
 //S1       EXEC PGM=IEBCOPY                                           
 //SYSPRINT DD   SYSOUT=*                                              
 //SYSUT1   DD   DISP=SHR,DSN=TSOZXXX.ES10.CNTL                        
 //SYSUT2   DD   DISP=(,CATLG),DSN=TSOZXXX.ES10.BACK,                  
 //         LIKE=TSOZXXX.ES10.CNTL                                     
 //SYSIN    DD   DUMMY                                                 
 //IFOK1    IF   (S1.RC=0) THEN                                        
 //*****                                                               
 //***** COMPRESS DATASET                                            
 //*****                                                               
 //S2       EXEC PGM=IEBCOPY                                           
 //SYSPRINT DD   SYSOUT=*                                              
 //SYSUT1   DD   DISP=SHR,DSN=TSOZXXX.ES10.CNTL                        
 //SYSUT2   DD   DISP=OLD,DSN=TSOZXXX.ES10.CNTL                        
 //SYSIN    DD   DUMMY                                                 
 //IFOKEND1 ENDIF                                                      
 //IFOK2    IF   (S2.RC=0) THEN                                        
 //*****                                                               
 //***** COMPRESS SUCCESSFUL, DELETE BACKUP                          
 //***** 
 //         PEND
 //FINAL    EXEC COMP
 //*****                                                               
 //***** CODE COMPLETED BY FERNANDO                                            
 //***** 
 //*** OVERRIDE DD STATEMENTS S1
 //S1.SYSUT1 DD DSN=TSOZA32.ES10.CNTL,DISP=SHR
 //S1.SYSUT2 DD DSN=TSOZA32.ES10.BACK,DISP=(,CATLG),
 //          LIKE=TSOZA32.ES10.CNTL
 //*** OVERRIDE DD STATEMENTS S2
 //S2.SYSUT1 DD DSN=TSOZA32.ES10.CNTL,DISP=SHR
 //S2.SYSUT2 DD DSN=TSOZA32.ES10.CNTL,DISP=OLD
 //*** OVERRIDE DD STATEMENTS S3
 //S3.DD1 DD DSN=TSOZA32.ES10.BACK,DISP=(OLD,DELETE)