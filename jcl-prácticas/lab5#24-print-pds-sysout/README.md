 # 📄 LAB5#24 – Impresión de un miembro de PDS a SYSOUT
 Este ejercicio consiste en imprimir un miembro específico (**JOBCARD**) desde un dataset particionado (**userid.ES10.CNTL**) hacia la salida del sistema **(SYSOUT=*)** usando **IEBGENER**. El objetivo es practicar la impresión directa de miembros individuales a través del spool.

 ## 🧠 Conceptos aplicados:

 - Impresión de miembros de PDS con **IEBGENER**
 - Uso de `DISP=SHR` para acceso compartido
 - Redirección de salida a spool con `SYSOUT=*`
 - Validación de contenido impreso mediante **SDSF**
