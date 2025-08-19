 /* REXX MATH4 */                                                              
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
       NUM1 = STRIP(NUM1)                                                
       NUM2 = STRIP(NUM2)                                                
       IF NUM1 <> "" & NUM2 <> "" THEN                                   
       DO                                                                
         IF DATATYPE(NUM1,'N') = 1 & DATATYPE(NUM2,'N') = 1 THEN         
           FLAG = "1"                                                    
         ELSE                                                            
         DO                                                              
           SAY "Incorrecto: solo se permiten numeros. Intenta de nuevo." 
           ITERATE                                                       
         END                                                             
       END                                                               
       ELSE                                                              
         SAY "Incorrecto: se requieren dos valores. Intenta de nuevo."   
     END                                                                 
     SAY 'A las' TIME() 'de' DATE()                                      
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