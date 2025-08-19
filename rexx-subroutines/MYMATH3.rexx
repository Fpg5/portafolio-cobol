 /* REXX MYMATH3 */                                                             
 DO FOREVER                                                              
   SAY "Elige una operacion valida a continuacion."                      
   SAY "1) suma            2) resta"                                     
   SAY "3) multiplicacion  4) division"                                  
   SAY "Ingresa ""EXIT"" para salir."                                    
   PULL OPERACION                                                        
   OPERACION = TRANSLATE(OPERACION)                                      
   IF OPERACION = "EXIT" THEN                                            
   DO                                                                    
     SAY "HASTA LUEGO"                                                   
     EXIT                                                                
   END */                                                                
   IF ABBREV("SUMA",OPERACION) <> 1 &,                                   
      ABBREV("RESTA",OPERACION) <> 1 &,                                  
      ABBREV("MULTIPLICACION",OPERACION) <> 1 &,                         
      ABBREV("DIVISION",OPERACION) <> 1 |,                               
      OPERACION = "" THEN                                                
   DO                                                                    
     SAY "Operacion incorrecta. Reintenta..."                            
     ITERATE                                                             
   END                                                                   
   DO FOREVER                                                            
     SAY "Ingresa dos numeros:"                                          
     PULL NUM1 NUM2                                                     
     IF DATATYPE(NUM1,'NUM') = 1 & DATATYPE(NUM2,'NUM') = 1 THEN        
       LEAVE                                                            
     ELSE                                                               
       SAY "Incorrecto. Solo se admiten numeros. Intenta de nuevo."     
   END                                                                  
   SELECT                                                               
     WHEN ABBREV("SUMA",OPERACION) = 1 THEN                             
     DO                                                                 
       OPERACION = "SUMA"                                               
       RESULTADO = NUM1 + NUM2                                          
     END                                                                
     WHEN ABBREV("RESTA",OPERACION) = 1 THEN                            
     DO                                                                 
       OPERACION = "RESTA"                                              
       RESULTADO = NUM1 - NUM2                                          
     END                                                                
     WHEN ABBREV("MULTIPLICACION",OPERACION) = 1 THEN                   
     DO                                                                 
       OPERACION = "MULTIPLICACION"                                     
       RESULTADO = NUM1 * NUM2                                          
     END                                                                
     WHEN ABBREV("DIVISION",OPERACION) = 1 THEN                         
     DO
       OPERACION = "DIVISION"                                            
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
   OPERACION = ""                                                        
 END                                                                     
 EXIT 0 