 # 📨 LAB5#43 y LAB5#44 – Envío de jobs al Internal Reader con IEBGENER
 Este ejercicio demuestra cómo enviar un trabajo JCL a través del Internal Reader (**INTRDR**), utilizando una combinación de procedimientos in-stream y el programa utilitario **IEBGENER**.

 ## **Objetivo:**
 - **LAB5#43** define un job independiente que será enviado por otro job.
 - **LAB5#44** utiliza un procedimiento in-stream **PROC32** que ejecuta **IEBGENER*** para redirigir un job definido en otro dataset hacia `SYSOUT=(,INTRDR)`, es decir, al lector interno del sistema, lo que resulta en la auto-ejecución del segundo job.

 ## **Pasos clave:**
 - Se personaliza el miembro **LAB5#43** con un job válido que se desea ejecutar.
 - Se crea el job **LAB5#44**, que ejecuta el procedimiento **PROC32** con los parámetros:
 - `DS=userid.ES10.CNTL(LAB5#43)`
 - `OUT=(,INTRDR)`

 Al ejecutar **LAB5#44**, automáticamente se submitirá **LAB5#43** como si se hubiera enviado manualmente.

 ## **Resultado:**
 - Dos trabajos aparecen en el spool (**SDSF**): uno para **LAB5#44** y otro para **LAB5#43**.
 - Este ejercicio simula un mecanismo de autogeneración o encadenamiento de jobs desde otros jobs, útil para automatizaciones avanzadas en entornos batch mainframe.
