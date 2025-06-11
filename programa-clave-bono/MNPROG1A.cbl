 000100******************************************************************
 000200* AUTHOR:  FERNANDO PEREZ G.                                     *
 000300* DATE:    09/06/2025                                            *
 000400* PURPOSE: PROGRAMA QUE CARGA EN MEMORIA DATOS DE EMPLEADOS,     *
 000500*           LUEGO LLAMA A UN SUBPROGRAMA QUE GENERA UNA CLAVE    *
 000600*           PARA CADA EMPLEADO Y FINALMENTE EVALUA SI SE OTORGA  *
 000700*           UN BONO EN FUNCION DEL RENDIMIENTO O LA ANTIGUEDAD   *
 000800******************************************************************
 000900 IDENTIFICATION DIVISION.                                         
 001000 PROGRAM-ID. MNPROG1A.                                            
 001100 ENVIRONMENT DIVISION.                                            
 001200*CONFIGURATION SECTION.                                           
 001300 INPUT-OUTPUT SECTION.                                            
 001400 FILE-CONTROL.                                                    
 001500     SELECT EMPDATA ASSIGN TO EMPIN                                                            
 001600       ORGANIZATION IS SEQUENTIAL.                                
 001700 DATA DIVISION.                                                   
 001800 FILE SECTION.                                                    
 001900   FD EMPDATA                                                     
 002000       RECORDING MODE IS F                                        
 002100       DATA RECORD IS EMPDATALINEA.                               
 002200   01 EMPDATALINEA.                                               
 002300     05 ID-EMP           PIC X(4).                                
 002400     05 NOM-EMP          PIC X(19).                               
 002500     05 EDAD-EMP         PIC X(2).                                
 002600     05 SEXO-EMP         PIC X(1).                                
 002700     05 PUESTO-EMP       PIC X(15).                               
 002800     05 ANT-EMP          PIC X(3).                                
 002900     05 REND-EMP         PIC X(3).                                
 003000     05 FILLER           PIC X.                                   
 003100     05 SAL-EMP          PIC X(9).                               
 003200     05 FILLER           PIC X(23).                              
 003300 WORKING-STORAGE SECTION.                                        
 003400   01 TABLA-EMP.                                                 
 003500     05 LINEA-TABLA OCCURS 50 TIMES.                             
 003600       10 ID-TAB         PIC X(4).                               
 003700       10 NOM-TAB        PIC X(19).                              
 003800       10 EDAD-TAB       PIC X(2).                               
 003900       10 SEXO-TAB       PIC X(1).                               
 004000       10 PUESTO-TAB     PIC X(15).                              
 004100       10 ANT-TAB        PIC X(3).                               
 004200       10 REND-TAB       PIC X(3).                               
 004300       10 SAL-TAB        PIC X(9).                               
 004400   01 SWITCH-TABLA-LLENA PIC X            VALUE 'N'.             
 004500     88 TABLA-LLENA                       VALUE 'Y'.             
 004600   01 SWITCH-FIN-ARCHIVO PIC X            VALUE 'N'.             
 004700     88 FIN-ARCHIVO                       VALUE 'Y'.             
 004800   77 CANT-REG           PIC 999          VALUE 000.             
 004900   77 I                  PIC 999          VALUE 000.              
 005000   77 IDX                PIC 999          VALUE 000.              
 005100   77 FORM-BONO          PIC $ZZZ,ZZ9.99.                         
 005200   77 NUM-ANT            PIC 999          VALUE 000.              
 005300* VARIABLES QUE SERAN USADAS EN EL SUBPROGRAMA.                   
 005400   77 P-ID               PIC X(4).                                
 005500   77 P-NOM              PIC X(19).                               
 005600   77 P-SEXO             PIC X.                                   
 005700   77 P-PUESTO           PIC X(15).                               
 005800   77 P-ANT              PIC X(3).                                
 005900   77 P-REND             PIC X(3).                                
 006000   77 P-SAL              PIC X(9).                                
 006100   77 P-CLAVE            PIC X(25).                               
 006200   77 P-APLICA-BONO      PIC X            VALUE 'N'.              
 006300   77 P-BONO             PIC 9(7)V99.                             
 006400   77 P-PORC-APLICADO    PIC 99           VALUE 00.               
 006500   77 P-TIPO-REND        PIC X(12)        VALUE SPACES.           
 006600 PROCEDURE DIVISION.                                              
 006700 MAIN-PROCEDURE.                                                 
 006800     PERFORM CARGAR-TABLA.                                       
 006900     PERFORM MOSTRAR-TABLA.                                      
 007000     PERFORM PROCESAR-TABLA.                                     
 007100     STOP RUN.                                                   
 007200 CARGAR-TABLA.                                                   
 007300     PERFORM LIMPIAR-VARIABLES.                                  
 007400     OPEN INPUT EMPDATA.                                         
 007500     PERFORM LEER-LINEA.                                         
 007600     PERFORM UNTIL FIN-ARCHIVO OR TABLA-LLENA                    
 007700       PERFORM CARGAR-LINEA                                      
 007800       PERFORM LEER-LINEA                                        
 007900     END-PERFORM.                                                
 008000     CLOSE EMPDATA.                                              
 008100     EXIT.                                                       
 008200 LEER-LINEA.                                                     
 008300     READ EMPDATA                                                
 008400       AT END                                                    
 008500         MOVE 'Y' TO SWITCH-FIN-ARCHIVO                         
 008600     END-READ.                                                  
 008700     EXIT.                                                      
 008800 CARGAR-LINEA.                                                  
 008900     IF IDX > 50 THEN                                           
 009000       MOVE 'Y' TO SWITCH-TABLA-LLENA                           
 009100       EXIT PARAGRAPH                                           
 009200     END-IF.                                                    
 009300     ADD 1 TO IDX.                                              
 009400     MOVE ID-EMP TO ID-TAB(IDX).                                
 009500     MOVE NOM-EMP TO NOM-TAB(IDX).                              
 009600     MOVE EDAD-EMP TO EDAD-TAB(IDX).                            
 009700     MOVE SEXO-EMP TO SEXO-TAB(IDX).                            
 009800     MOVE PUESTO-EMP TO PUESTO-TAB(IDX).                        
 009900     MOVE ANT-EMP TO ANT-TAB(IDX).                              
 010000     MOVE REND-EMP TO REND-TAB(IDX).                            
 010100     MOVE SAL-EMP TO SAL-TAB(IDX).                              
 010200     MOVE IDX TO CANT-REG.                                      
 010300     EXIT.                                                       
 010400 LIMPIAR-VARIABLES.                                              
 010500     MOVE 'N' TO SWITCH-FIN-ARCHIVO.                             
 010600     MOVE 'N' TO SWITCH-TABLA-LLENA.                             
 010700     MOVE 0 TO IDX.                                              
 010800     MOVE ZERO TO CANT-REG.                                      
 010900     MOVE ZERO TO I.                                             
 011000     MOVE ZERO TO FORM-BONO.                                     
 011100     MOVE ZERO TO NUM-ANT.                                       
 011200     EXIT.                                                       
 011300 MOSTRAR-TABLA.                                                  
 011400     DISPLAY "---------- REGISTRO DE EMPLEADOS ----------".      
 011500     PERFORM VARYING I FROM 1 BY 1 UNTIL I > CANT-REG            
 011600       DISPLAY " REGISTRO NUMERO " I ":"                         
 011700       DISPLAY "   ID: " ID-TAB(I)                               
 011800       DISPLAY "   EMPLEADO: " FUNCTION TRIM(NOM-TAB(I))         
 011900       DISPLAY "   PUESTO: " FUNCTION TRIM(PUESTO-TAB(I))        
 012000       DISPLAY "   EDAD: " EDAD-TAB(I)                            
 012100       DISPLAY "___________________________________________"      
 012200     END-PERFORM.                                                 
 012300     EXIT.                                                        
 012400 PROCESAR-TABLA.                                                  
 012500     DISPLAY "---------- GENERA CLAVE Y APLICA BONO ----------".  
 012600     PERFORM VARYING I FROM 1 BY 1 UNTIL I > CANT-REG             
 012700       MOVE SPACES TO P-NOM                                       
 012800       MOVE ID-TAB(I) TO P-ID                                     
 012900       MOVE NOM-TAB(I) TO P-NOM                                   
 013000       MOVE SEXO-TAB(I) TO P-SEXO                                 
 013100       MOVE PUESTO-TAB(I) TO P-PUESTO                             
 013200       MOVE ANT-TAB(I) TO P-ANT                                   
 013300       MOVE REND-TAB(I) TO P-REND                                 
 013400       MOVE SAL-TAB(I) TO P-SAL                                   
 013500       CALL 'SBPROG1A' USING P-ID, P-NOM, P-SEXO, P-PUESTO, P-ANT,
 013600-        P-REND, P-SAL, P-CLAVE, P-APLICA-BONO, P-BONO,           
 013700-        P-PORC-APLICADO, P-TIPO-REND                             
 013800       MOVE P-BONO TO FORM-BONO                                   
 013900       DISPLAY "PROCESO NUMERO " I ":"                            
 014000       DISPLAY " EMPLEADO: " FUNCTION TRIM(P-NOM)                 
 014100       DISPLAY " RENDIMIENTO: " P-REND                            
 014200       DISPLAY " ANTIGUEDAD: " P-ANT                              
 014300       COMPUTE NUM-ANT = FUNCTION NUMVAL(P-ANT)                   
 014400       IF NUM-ANT > 012 THEN                                      
 014500         DISPLAY " POR " FUNCTION TRIM(P-TIPO-REND) " RENDIMIENTO"
 014600         IF P-APLICA-BONO = 'Y' THEN                              
 014700           DISPLAY "  SE AUTORIZA BONO DEL " P-PORC-APLICADO "%"  
 014800           DISPLAY " BONO: " FORM-BONO                            
 014900         ELSE                                                     
 015000           DISPLAY "  NO SE AUTORIZA BONO"                        
 015100         END-IF                                                   
 015200       ELSE                                                       
 015300         DISPLAY " POR ANTIGUEDAD NO SE AUTORIZA BONO"            
 015400       END-IF                                                     
 015500       DISPLAY " CLAVE GENERADA: " FUNCTION TRIM(P-CLAVE)         
 015600       DISPLAY "______________________________"                   
 015700     END-PERFORM.                                                
 015800     EXIT.                                                       
 015900 END PROGRAM MNPROG1A.                                           