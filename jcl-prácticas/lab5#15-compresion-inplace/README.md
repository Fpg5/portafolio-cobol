 # 📄 LAB5#15 – Compresión in-place de un PDS y eliminación condicional
 Este ejercicio realiza una compresión directa **(in-place)** sobre el dataset particionado **userid.COPY.CNTL** utilizando `IEBCOPY`, sin requerir una copia intermedia. La compresión ocurre cuando el dataset de entrada y salida son el mismo, permitiendo consolidar espacio sin duplicación.

 Si la compresión fue exitosa **(RC=0)**, se procede a eliminar el dataset de respaldo **userid.COMPRESS.DATA** usando `IEFBR14`.

 ## 🧠 Conceptos aplicados:

 - Compresión en el mismo PDS **(IEBCOPY con input y output iguales)**
 - Verificación condicional con `IF (STEP.RC = 0)`
 - Eliminación de datasets (`IEFBR14` con **DISP=(OLD,DELETE)**)
 - Validación del proceso a través del mensaje: `IGD105I ... DELETED`
