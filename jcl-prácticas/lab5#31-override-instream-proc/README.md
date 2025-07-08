 # 📄 LAB5#31 – Compresión de dataset mediante override en procedimiento in-stream
 Este ejercicio ejecuta un procedimiento in-stream que realiza una copia de seguridad, compresión y limpieza de un dataset particionado. La tarea consiste en sobrescribir (**override**) los **DD-statements** para aplicar la misma lógica sobre otro dataset, **userid.COPY.CNTL**, sin modificar el procedimiento original.

 ## 🧠 Conceptos aplicados:

 - Procedimientos in-stream (`PROC ... PEND`)
 - Sobrescritura de DD-statements con `EXEC PROC`
 - Compresión segura usando IEBCOPY con verificación de RC
 - Eliminación condicional con **IEFBR14**
 - Control de flujo con cláusulas **IF/THEN/ENDIF**
