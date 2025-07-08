 # 📄 LAB5#42 – Procesamiento condicional con IF/THEN/ELSE en JCL
 Este ejercicio explora el uso de procesamiento condicional en JCL mediante cláusulas **IF/THEN/ELSE/ENDIF**, ejecutando pasos secuenciales solo si el código de retorno (**RC**) del paso anterior es exitoso (**RC=0**).

 Las acciones del job incluyen:

 - Crear un miembro **TEXT1** dentro del dataset **userid.ES10.DATA**, utilizando IEBGENER para insertar datos in-stream.
 - Si el paso anterior es exitoso, copiar el miembro **TEXT1** a un dataset secuencial nuevo llamado **userid.ES10.OUT**.
 - Si la copia se realiza correctamente, imprimir el contenido de **userid.ES10.OUT** a **SYSOUT=*.**
 - Finalmente, si todo lo anterior fue exitoso, eliminar el dataset **userid.ES10.OUT** usando **IEFBR14**.

 Este ejercicio refuerza el uso de estructuras condicionales robustas para flujos de trabajo más seguros y automáticos dentro de entornos batch en z/OS.
