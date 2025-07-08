 # 📄 LAB5#33 – Creación y uso de un procedimiento catalogado personalizado
 Este ejercicio implementa y prueba un procedimiento catalogado propio almacenado en el dataset **TSOZA05.ES10.PROC**. La rutina define una serie de parámetros simbólicos que permiten copiar un dataset particionado (**PDS**) o secuencial (**PS**) hacia otro destino, con control total de programa, nombres y disposiciones.

 La estructura del procedimiento se basa en variables:

 - `PROG`: programa a ejecutar (**IEBCOPY** o **IEBGENER**)
 - `DISPI`: disposición del dataset de entrada
 - `DISPO`: disposición del dataset de salida
 - `INDS`: nombre del dataset de entrada
 - `OUTDS`: nombre del dataset de salida
 - `LIKEDS`: dataset base para la asignación dinámica del dataset de salida

 ## 🧠 Conceptos aplicados:

 - Definición de procedimientos catalogados reutilizables
 - Uso avanzado de JCL symbols
 - Copia condicional de datasets PDS o PS según configuración
 - Flexibilidad total en ejecución gracias a parámetros simbólicos
 - Separación de lógica en **PROC** y **JOB** para entornos productivos
 
 ## Se realizaron dos pruebas exitosas:
 - Copia de un dataset particionado (**ES10.CNTL**) hacia uno nuevo (**ES10.XXXX**)
 - Copia de un dataset secuencial (**GENER.COPY#1**) hacia otro (**ES10.YYYY**)
