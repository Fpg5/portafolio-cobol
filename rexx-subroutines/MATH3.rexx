 /* REXX MATH3 */                                                              
 PARSE ARG NUM1 NUM2                                                     
 IF NUM1 = "" | NUM2 = "" THEN                                           
 DO                                                                      
   DO FOREVER                                                            
     FLAG = "0"                                                          
     DO UNTIL FLAG = "1"                                                 
       SAY 'Por favor, ingresa dos numeros a continuacion:'              
       SAY "(INGRESA ""EXIT"" PARA SALIR)"                               
       PULL LINEA                                                        
       IF TRANSLATE(LINEA) = "EXIT" THEN                          
       DO                                                                
         SAY "HASTA LUEGO"                                               
         EXIT                                                            
       END                                                               
       PARSE VAR LINEA NUM1 NUM2                                         
       IF NUM1 <> "" & NUM2 <> "" THEN                                   
         FLAG = "1"                                                      
     END                                                                 
     SAY 'Ingresaste' NUM1 'y' NUM2                                      
     SAY NUM1 '+' NUM2 '=' NUM1 + NUM2                                   
     SAY NUM1 '-' NUM2 '=' NUM1 - NUM2                                   
     SAY NUM1 '*' NUM2 '=' NUM1 * NUM2                                   
     IF NUM2 <> "0" THEN                                                                                                 
     DO                                                                  
       SAY NUM1 '/' NUM2 '=' NUM1 / NUM2                                 
       SAY NUM1 'dividido entre' NUM2 ':' NUM1/NUM2 'resto de' NUM1//NUM2
     END                                                                 
     ELSE                                                                
       SAY "El segundo numero es cero: la division no puede ser hecha."  
   END                                                                   
 END                                                                     
 EXIT 0 