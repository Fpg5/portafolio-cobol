 # 📄 LAB5#14 – Compresión segura de un PDS con copia de respaldo
 
 Este ejercicio demuestra cómo realizar una compresión segura sobre un dataset particionado **(PDS)** utilizando `IEBCOPY`, precedida por una copia de respaldo para evitar pérdida de información. La compresión reorganiza los miembros del PDS eliminando los espacios inservibles dejados por operaciones previas como adiciones, reemplazos o eliminaciones.
 El ejercicio incluye lógica condicional con **IF/THEN/ENDIF** para ejecutar la compresión solo si la copia previa fue exitosa.

 ## 🧠 Conceptos aplicados:

 - Copia completa de un PDS **(COPY INDD=, OUTDD=)**
 - Creación de datasets usando `LIKE`
 - Control de flujo condicional con **IF/THEN/ELSE/ENDIF**
 - Buenas prácticas de respaldo antes de realizar una compresión
 - Uso seguro de compresión evitando conflictos multiusuario
