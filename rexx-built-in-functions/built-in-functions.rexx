 /* Rexx Built-In Functions                                                               
                                                                         
   Elige funciones de la siguiente lista para completar las 
   tareas solicitadas:   
                                                                         
          ABBREV             RIGHT         WORD                          
          INSERT             SPACE         WORDS                         
          JUSTIFY            SUBSTR        DELSTR                        
          LEFT               SUBWORD                                     
          LENGTH             TRANSLATE                                   
          OVERLAY            WORDINDEX                                   
          POS                WORDPOS                                     
                                                                         
    En este ejercicio, cualquier "palabra" hace referencia al texto
	rodeado por espacios en blanco o comas.                                    
                                                                         
    Ejercicios de 1 hasta 13 requieren solo una función.                    
                                                                         
    A partir del ejercicio 14 en adelante, algunas respuestas requerirán
	más de una función para lograr el objetivo deseado.                            
                                                                         
    Usa el comando %FCHK para verificar tus respuestas.                             
 */                                                                
                                      
 s1 = 'APROFLERILISTBOPYTY'                                              
 s2 = 'aa     bbb   cccc  ee      fff       gg'                          
 s3 = 'CAR, DOG, CAT,T BIRD,MAN'                                         
                                                                         
 /*************** 1 *****************/                                   
 Say 1.,                                                                 
   'Muetra en pantalla las columnas 10 a 14 de la variable s1.'
   SAY SUBSTR(s1,10,5)                                                 
                                                                         
 /*************** 2 *****************/                                   
 Say 2.,                                                                 
   'Muestra en pantalla los últimos 5 caracteres de la variable s1.'                      
   SAY RIGHT(s1,5)                                                       
                                                                         
 /*************** 3 *****************/                                   
 Say 3.,                                                                 
   'Muestra en pantalla los primeros 5 caracteres de la variable s1.'                 
   SAY LEFT(s1,5)                                                        
                                                                         
 /*************** 4 *****************/                                   
 Say 4.,                                                                 
   'Muestra en pantalla la longitud de la variable s1.'                                
   SAY "Longitud de s1 es:" LENGTH(s1)                                     
																			
 /*************** 5 *****************/                                  
 Say 5.,                                                                
   'Muetra en pantalla la cuarta palabra de s2.'                                     
   SAY "La cuarta palabra de s2 es:"  WORD(s2,4)                          
																			
 /*************** 6 *****************/                                  
 Say 6.,                                                                
   'Muestra en pantalla la cantidad de palabras en la variable s2.'                     
   SAY "El número de palabras en s2 es: " WORDS(s2)                       
																			
 /*************** 7 *****************/                                  
 Say 7.,                                                                
   'Muestra en pantalla el número de columna donde comienza la cuarta palabra de la variable s2.'                
   SAY "El número de columna de la cuarta palabra en s2 es: " WORDINDEX(s2,4)
																			
 /*************** 8 *****************/                                  
 Say 8.,                                                                
   'Muestra en pantalla las palabras tercera, cuarta y quinta de s2.'
   SAY "La tercera, cuarta y quinta palabra en s2 es: " SUBWORD(s2,3,3)        
																			
 /*************** 9 *****************/                                  
 Say 9.,                                                                
   'Muestra en pantalla s2 de forma que solo exista un espacio entre cada palabra.'      
    SAY "Variable s2 con espacios modificados:" SPACE(s2,1)
																			
 /************** 10 *****************/                                  
 Say 10.,                                                               
   'Muestra en pantalla s2 de forma que cada palabra esté separada únicamente por una coma (aa,bbb,c).'
   SAY "Variable s2 con espacios modificados:" SPACE(s2,1,',')                    
																			
 /************** 11 *****************/                                  
 Say 11.,                                                               
   'Cambia cada espacio en s2 por una coma.'                              
   s2 = TRANSLATE(s2,',',' ')                                           
																			
 /************** 12 *****************/                                  
 Say 12.,                                                               
   'Muestra en pantalla s2 para que puedas verificar el cambio.'                  
   SAY s2                                                               
																			
 /************** 13 *****************/                                  
 Say 13.,                                                               
   'Muestra en pantalla el número de la columna donde aparece la primera ocurrencia de T.'
   SAY POS('T',s3)                                                      
																			
 /************** 14 *****************/                                  
 Say 14. 'Convierte todas las comas en espacios en blanco,',                            
   "muestra el número de palabra de la palabra 'T' en s3."                     
   SAY WORDPOS('T',TRANSLATE(s3,' ',','))                               
																			
 /************** 15 *****************/                                  
 Say 15. 'Convierte todas las comas en espacios en blanco,',                            
   "muestra el número de palabras en la variable s3."                                 
   SAY WORDS(TRANSLATE(s3,' ',','))                                     
																			
 /************** 16 *****************/                                  
 Say 16.,                                                               
   "Inserta 'PIG, ' en s3 después de la columna 9."                             
   s3 = INSERT('PIG, ',s3,10)                                           
																			
 /************** 17 *****************/                                  
 Say 17.,                                                               
   "Muestra s3."                                                        
   SAY s3                                                               
																			
 /************** 18 *****************/                                  
 Say 18.,                                                               
   "Reemplaza 'CAT' por 'RAT' en S3."                                    
   s3 = OVERLAY('RAT',s3,WORDINDEX(s3,WORDPOS('CAT',,                   
   TRANSLATE(s3,' ',','))))
                                                                           
 /************** 19 *****************/                                  
  Say 19.,                                                                
   "Muestra s3 sin espacios en blanco (CAR,DOG,RAT,...)."                        
   SAY SPACE(s3,0)                                                       
                                                                         
 /************** 20 *****************/                                   
 Say 20.,                                                                
   "Muestra s3 con el caracter 'T ' eliminado."    
   SAY DELSTR(s3,POS('T ',s3),2)                                         
                                                                           
 Exit                                                                    