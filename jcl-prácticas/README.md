 # 📂 Compendio de ejercicios JCL – IBM z/OS

 Este conjunto de ejercicios presenta un recorrido práctico por los fundamentos del lenguaje JCL (Job Control Language) utilizado en sistemas mainframe z/OS para la gestión de trabajos batch. A través de ejemplos progresivos, se exploran utilidades esenciales del sistema, control de datasets, sentencias condicionales y envío de trabajos al lector interno.

 ## 📄 Archivos incluidos

 - `LAB5#11` – **Copia** de miembro con **IEBCOPY**
 - `LAB5#12` – **Copia** de un dataset completo
 - `LAB5#13` – **Reemplazo** de un miembro específico en un PDS
 - `LAB5#14` – **Compresión** segura de un PDS con copia de respaldo
 - `LAB5#15` – **Compresión** in-place de un PDS y eliminación condicional
 - `LAB5#16` y `LAB5#17` – **Copia** de un PDS a datasets tipo PDS y PDSE
 - `LAB5#21` y `LAB5#22` – **Copia** de datos in-stream y replicación de dataset secuencial
 - `LAB5#23` – **Impresión** de un dataset secuencial a **SYSOUT**
 - `LAB5#24` – **Impresión** de un miembro de PDS a **SYSOUT**
 - `LAB5#25` – **Creación** de un nuevo miembro en un PDS
 - `LAB5#31` – **Compresión** de dataset mediante override en procedimiento in-stream
 - `LAB5#32` – **Ejecución** de un procedimiento catalogado para compresión segura
 - `LAB5#33` – **Creación** y uso de un procedimiento catalogado personalizado
 - `LAB5#34` – **Ordenamiento** con **DFSORT (ICEMAN)**
 - `LAB5#41` – **Crear** dataset secuencial (PS) a partir de datos in-stream
 - `LAB5#42` – **Procesamiento** condicional con IF/THEN/ELSE en JCL
 - `LAB5#43` y `LAB5#44` – **Envío de jobs** al Internal Reader con **IEBGENER**
   
 ## 🧠 Características

 - Copias de miembros con `IEBCOPY`
 - Creación y edición de archivos mediante `IEBGENER`
 - Eliminación de datasets con `IEFBR14`
 - Uso de `DISP`, `SPACE`, `DCB`, `SYSOUT`, `COND` y otras sentencias clave
 - `In-Stream Procedures` con parámetros simbólicos
 - Condicionales `IF/THEN/ELSE` en control de flujo
 - Enrutamiento de trabajos a través de `SYSOUT=(,INTRDR)`

 ---

 > Este proyecto forma parte de mi preparación como desarrollador en entornos mainframe.
 > Todos los ejercicios fueron desarrollados y probados exitosamente dentro de un entorno educativo real en z/OS (TSO/ISPF/SDSF), como parte del programa oficial de certificación IBM.
