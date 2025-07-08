 # 📄 LAB5#16 y LAB5#17 – Copia de un PDS a datasets tipo PDS y PDSE
 Estos ejercicios consisten en copiar el contenido completo del dataset particionado **userid.ES10.CNTL** a dos datasets distintos: uno de tipo PDS clásico (**userid.COPY.PDS**) y otro de tipo PDSE moderno (**userid.COPY.PDSE**). Ambos fueron previamente creados desde **ISPF 3.2** con las mismas características de formato, tamaño de registro y número de bloques de directorio, pero difieren en su organización (**DSORG**).

 ## La ejecución se dividió en dos miembros:

 - **LAB5#16** copia hacia el PDS tradicional.
 - **LAB5#17** copia hacia el PDSE.

## 🧠 Conceptos aplicados:

 - Uso de `IEBCOPY` para copiar datasets particionados
 - Creación manual de datasets en **ISPF** con `DSORG=PDS` y `DSORG=LIBRARY`
 - Evaluación comparativa entre estructuras PDS y PDSE
 - Segmentación del trabajo en múltiples miembros para claridad y trazabilidad
