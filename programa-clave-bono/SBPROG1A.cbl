 000100******************************************************************
 000200* AUTHOR:  FERNANDO PEREZ G.                                     *
 000300* DATE:    09/06/2025                                            *
 000400* PURPOSE: PROGRAMA SECUNDARIO, QUE ES LLAMADO POR MNPROG1A PARA *
 000500*           EVALUAR LA ANTIGUEDAD Y RENDIMIENTO DEL EMPLEADO, Y  *
 000600*           DETERMINAR SI SE APLICA UN BONO EXTRA EN SU SALARIO, *
 000700*           FINALMENTE SE GENERA UNA CLAVE COMPUESTA PARA CADA   *
 000800*           EMPLEADO.                                            *
 000900******************************************************************
 001000 IDENTIFICATION DIVISION.                                         
 001100 PROGRAM-ID. SBPROG1A.                                            
 001200 ENVIRONMENT DIVISION.                                            
 001300*CONFIGURATION SECTION.                                           
 001400 INPUT-OUTPUT SECTION.                                            
 001500 FILE-CONTROL.                                                    
 001600 DATA DIVISION.                                                   
 001700 WORKING-STORAGE SECTION.                                         
 001800   77 NUM-ANT         PIC 999           VALUE 000.               
 001900   77 NUM-REND        PIC 999           VALUE 000.               
 002000   77 NUM-SAL         PIC 9(9).                                  
 002100   77 CONST-10        PIC 9V99          VALUE 0.10.              
 002200   77 CONST-15        PIC 9V99          VALUE 0.15.              
 002300   77 AUX-INDICE      PIC 999           VALUE 000.               
 002400   77 LONG-APE        PIC 999           VALUE 000.               
 002500   77 I               PIC 999           VALUE 000.               
 002600   01 SWITCH-ESP-ENC  PIC X             VALUE 'N'.               
 002700     88 ESP-ENC                         VALUE 'Y'.               
 002800   01 SWITCH-FIN-ENC  PIC X             VALUE 'N'.               
 002900     88 FIN-ENC                         VALUE 'Y'.               
 003000 LINKAGE SECTION.                                                
 003100* VARIABLES RECIBIDAS                                            
 003200   01 R-ID            PIC X(4).                                  
 003300   01 R-NOM           PIC X(19).                                 
 003400   01 R-SEXO          PIC X.                                     
 003500   01 R-PUESTO        PIC X(15).                                 
 003600   01 R-ANT           PIC X(3).                                  
 003700   01 R-REND          PIC X(3).                                  
 003800   01 R-SAL           PIC X(9).                                  
 003900   01 R-CLAVE         PIC X(25).                                 
 004000   01 R-APLICA-BONO   PIC X.                                     
 004100   01 R-BONO          PIC 9(7)V99.                               
 004200   01 R-PORC-APLICADO PIC 99.                                    
 004300   01 R-TIPO-REND     PIC X(12).                                 
 004400 PROCEDURE DIVISION USING R-ID, R-NOM, R-SEXO, R-PUESTO, R-ANT,  
 004500-    R-REND, R-SAL, R-CLAVE, R-APLICA-BONO, R-BONO,              
 004600-    R-PORC-APLICADO, R-TIPO-REND.                               
 004700 MAIN-PROCEDURE.                                                 
 004800     PERFORM LIMPIAR-VARIABLES.                                  
 004900     PERFORM GENERAR-CLAVE.                                      
 005000     PERFORM APLICAR-BONO.                                       
 005100     GOBACK.                                                     
 005200 GENERAR-CLAVE.                                                  
 005300     PERFORM VARYING I FROM 1 BY 1 UNTIL I > 19 OR FIN-ENC       
 005400       IF NOT ESP-ENC THEN                                        
 005500         IF R-NOM(I:1) = SPACE THEN                               
 005600           MOVE 'Y' TO SWITCH-ESP-ENC                             
 005700           ADD 1 TO I GIVING AUX-INDICE                           
 005800           MOVE ZERO TO LONG-APE                                  
 005900         END-IF                                                   
 006000       ELSE                                                       
 006100         IF R-NOM(I:1) NOT = SPACE                                
 006200           ADD 1 TO LONG-APE                                      
 006300         ELSE                                                     
 006400           MOVE 'Y' TO SWITCH-FIN-ENC                             
 006500         END-IF                                                   
 006600       END-IF                                                     
 006700     END-PERFORM.                                                 
 006800     MOVE R-ID TO R-CLAVE(1:4).                                   
 006900     MOVE '-' TO R-CLAVE(5:1).                                    
 007000     MOVE R-NOM(1:1) TO R-CLAVE(6:1).                             
 007100     MOVE '-' TO R-CLAVE(7:1).                                    
 007200     MOVE R-NOM(AUX-INDICE:LONG-APE) TO R-CLAVE(8:LONG-APE).     
 007300     ADD 8 TO LONG-APE GIVING AUX-INDICE.                        
 007400     MOVE '-' TO R-CLAVE(AUX-INDICE:1).                          
 007500     ADD 1 TO AUX-INDICE.                                        
 007600     MOVE R-PUESTO(1:3) TO R-CLAVE(AUX-INDICE:3).                
 007700     ADD 3 TO AUX-INDICE.                                        
 007800     MOVE '-' TO R-CLAVE(AUX-INDICE:1).                          
 007900     ADD 1 TO AUX-INDICE.                                        
 008000     MOVE R-SEXO TO R-CLAVE(AUX-INDICE:1).                       
 008100     MOVE ZEROS TO AUX-INDICE.                                   
 008200     MOVE ZEROS TO LONG-APE.                                     
 008300     EXIT.                                                       
 008400 APLICAR-BONO.                                                   
 008500     COMPUTE NUM-REND = FUNCTION NUMVAL(R-REND).                 
 008600     COMPUTE NUM-ANT = FUNCTION NUMVAL(R-ANT).                   
 008700     COMPUTE NUM-SAL = FUNCTION NUMVAL(R-SAL).                   
 008800     IF NUM-ANT > 012 THEN                                       
 008900       IF NUM-REND > 74 THEN                                     
 009000         MOVE 'Y' TO R-APLICA-BONO                               
 009100         IF NUM-REND < 85 THEN                                   
 009200           MOVE 10 TO R-PORC-APLICADO                            
 009300           MOVE 'BUEN' TO R-TIPO-REND                            
 009400           COMPUTE R-BONO = NUM-SAL * CONST-10                   
 009500         ELSE                                                    
 009600           MOVE 15 TO R-PORC-APLICADO                            
 009700           MOVE 'EXCELENTE' TO R-TIPO-REND                       
 009800           COMPUTE R-BONO = NUM-SAL * CONST-15                   
 009900         END-IF                                                  
 010000       ELSE                                                      
 010100         MOVE 'N' TO R-APLICA-BONO                               
 010200         MOVE 'INSUFICIENTE' TO R-TIPO-REND                      
 010300       END-IF                                                    
 010400     ELSE                                                        
 010500       MOVE 'N' TO R-APLICA-BONO                                 
 010600     END-IF.                                                     
 010700     EXIT.                                                       
 010800 LIMPIAR-VARIABLES.                                              
 010900     MOVE SPACES TO R-CLAVE.                                     
 011000     MOVE ZEROS TO R-BONO.                                       
 011100     MOVE ZEROS TO R-PORC-APLICADO.                              
 011200     MOVE 'N' TO R-APLICA-BONO.                                  
 011300     MOVE SPACES TO R-TIPO-REND.                                 
 011400     MOVE ZEROS TO NUM-SAL.                                      
 011500     MOVE ZEROS TO NUM-REND.                                     
 011600     MOVE ZEROS TO NUM-ANT.                                      
 011700     MOVE ZEROS TO AUX-INDICE.                                   
 011800     MOVE ZEROS TO LONG-APE.                                     
 011900     MOVE 'N' TO SWITCH-ESP-ENC.                                 
 012000     MOVE 'N' TO SWITCH-FIN-ENC.                                 
 012100     EXIT.                                                       
 012200 END PROGRAM SBPROG1A.                                           