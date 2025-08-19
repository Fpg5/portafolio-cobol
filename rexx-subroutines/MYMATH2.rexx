/* REXX  MYMATH2 */                                                             
 DO FOREVER                                                              
   SAY "Elige una operacion valida a continuacion."                      
   SAY "1) suma            2) resta"                                     
   SAY "3) multiplicacion  4) division"                                  
   PULL OPERACION                                                        
   OPERACION = TRANSLATE(OPERACION)                                      
   IF OPERACION = "EXIT" THEN                                            
   DO                                                                    
     SAY "HASTA LUEGO"                                                   
     EXIT                                                                
   END
   IF OPERACION <> "SUMA" & OPERACION <> "RESTA" &,                     
      OPERACION <> "MULTIPLICACION" & OPERACION <> "DIVISION" THEN      
   DO                                                                   
     SAY "Operacion incorrecta. Reintenta..."                           
     ITERATE                                                            
   END                                                                     
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
 END                                                                     
 EXIT 0    