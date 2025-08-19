 /* REXX MYMATH1 */                                                             
 SAY "Elige una operacion valida a continuacion."                        
 SAY "1) suma            2) resta"                                       
 SAY "3) multiplicacion  4) division"                                    
 PULL OPERACION                                                          
 OPERACION = TRANSLATE(OPERACION)                                        
 SAY "Ingresa dos numeros:"                                              
 PULL NUM1 NUM2                                                          
 SELECT                                                                  
   WHEN OPERACION = "SUMA" THEN                                          
     RESULTADO = NUM1 + NUM2                                             
   WHEN OPERACION = "RESTA" THEN                                         
     RESULTADO = NUM1 - NUM2                                             
   WHEN OPERACION = "MULTIPLICACION" THEN                                
     RESULTADO = NUM1 * NUM2                                             
   WHEN OPERACION = "DIVISION" THEN                                      
   DO                                                                    
     IF NUM2 <> 0 THEN                                                   
       RESULTADO = NUM1 / NUM2                                           
     ELSE                                                                
     DO                                                                  
       RESULTADO = "IND"                                                 
       SAY "No es posible dividir entre cero"                            
     END                                                                 
   END                                                                   
   OTHERWISE                                                             
   DO                                                                    
     RESULTADO = "IND"                                                   
     SAY "Operacion no reconocida"                                       
   END                                                                   
 END                                                                     
 SAY "El resultado de la operacion de" OPERACION                         
 SAY "es:" RESULTADO                                                     
 EXIT 0