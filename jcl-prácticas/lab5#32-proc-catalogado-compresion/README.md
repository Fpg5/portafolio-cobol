 # 📄 LAB5#32 – Ejecución de un procedimiento catalogado para compresión segura
 Este ejercicio ejecuta un procedimiento catalogado almacenado en un PDS externo (**D80WW.ES10V15.PROC(COMP)**), que realiza una copia de seguridad y compresión de un dataset, seguido de la eliminación condicional del respaldo.

 Se definen variables (**INDS**, **BACK**) en el `EXE` que permiten reutilizar el mismo procedimiento para cualquier dataset, sin necesidad de reescribir el código.

 ## 🧠 Conceptos aplicados:

 - Uso de procedimientos catalogados
 - Definición de parámetros simbólicos (`&INDS`, `&BACK`)
 - Utilización de **IEBCOPY** para compresión
 - Control condicional con **IF/THEN/ENDIF**
 - Eliminación con **IEFBR14**
 - Diseño reutilizable y seguro en entornos de producción
