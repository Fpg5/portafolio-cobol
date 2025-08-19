 /* REXX MATH2 */                                                              
 PARSE ARG NUM1 NUM2                                                     
 IF NUM1 = "" || NUM2 = "" THEN                                          
 DO                                                                      
   SAY 'Por favor, ingresa dos numeros a continuacion:'                  
   PULL linea                                                            
   PARSE VAR linea NUM1 NUM2                                             
 END                                                                     
 SAY 'Ingresaste' NUM1 'y' NUM2                                          
 SAY NUM1 '+' NUM2 '=' NUM1 + NUM2                                       
 SAY NUM1 '-' NUM2 '=' NUM1 - NUM2                                       
 SAY NUM1 '*' NUM2 '=' NUM1 * NUM2                                       
 IF NUM2 <> "0" THEN                                                     
 DO                                                                      
   SAY NUM1 '/' NUM2 '=' NUM1 / NUM2                                     
   SAY NUM1 'dividido entre' NUM2 'es' NUM1/NUM2 'y resto de' NUM1//NUM2 
 END                                                                     
 ELSE                                                                    
   SAY "El segundo numero es cero: la division no puede ser hecha."      
 EXIT 0 