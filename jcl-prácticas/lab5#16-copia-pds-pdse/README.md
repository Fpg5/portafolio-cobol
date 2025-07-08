 # 📄 LAB5#16 – Copia de un PDS en datasets tipo PDS y PDSE
 Este ejercicio realiza la copia del dataset **userid.ES10.CNTL** (formato PDS) a dos destinos: un dataset PDS clásico (**userid.COPY.PDS**) y un dataset PDSE moderno (**userid.COPY.PDSE**), permitiendo observar la compatibilidad y comportamiento de ambos formatos ante operaciones de copia.

 Ambos datasets de destino fueron creados manualmente mediante **ISPF 3.2**, con el mismo esquema de espacio, longitud de registros y organización de datos, pero con distinta estructura interna (`DSORG=PDS` y `DSORG=LIBRARY`, respectivamente).

 ## 🧠 Conceptos aplicados:

 - Copia entre datasets particionados (`IEBCOPY`)
 - Diferencias estructurales entre **PDS** y **PDSE**
 - Preparación manual de datasets en **ISPF**
 - Validación de compatibilidad y formato de directorios
