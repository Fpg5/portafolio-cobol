 # 📄 LAB5#25 – Creación de un nuevo miembro en un PDS
 Este ejercicio demuestra cómo crear un nuevo miembro (**TEST**) dentro de un dataset particionado (**userid.COPY.CNTL**) utilizando **IEBGENER** y datos in-stream. El contenido del miembro se define directamente en el job, lo que permite crear archivos de control o plantillas reutilizables.

 ## 🧠 Conceptos aplicados:

 - Uso de **IEBGENER** con datos in-stream `(DD *)`
 - Creación directa de miembros dentro de un PDS
 - Aplicación de `DISP=SHR` para escritura controlada
 - Verificación posterior mediante **ISPF 3.4 o 3.2**
