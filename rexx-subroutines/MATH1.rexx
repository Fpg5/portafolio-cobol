 /* REXX MATH1 */                                                              
 SAY 'Por favor, ingresa dos numeros a continuacion:'                    
 PULL linea                                                              
 PARSE VAR linea NUM1 NUM2                                               
 SAY 'Ingresaste' NUM1 'y' NUM2                                          
 SAY NUM1 '+' NUM2 '=' NUM1 + NUM2                                       
 SAY NUM1 '-' NUM2 '=' NUM1 - NUM2                                       
 SAY NUM1 '*' NUM2 '=' NUM1 * NUM2                                       
 SAY NUM1 '/' NUM2 '=' NUM1 / NUM2                                       
 SAY NUM1 'dividido entre' NUM2 'es' NUM1/NUM2 'y resto de' NUM1//NUM2   
 EXIT 0  