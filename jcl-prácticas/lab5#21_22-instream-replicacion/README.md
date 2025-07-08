 # 📄 LAB5#21 y LAB5#22 – Copia de datos in-stream y replicación de dataset secuencial
Estos ejercicios demuestran el uso de IEBGENER para crear datasets secuenciales a partir de datos proporcionados directamente en el **JCL (in-stream)**. En **LAB5#21**, se copian líneas de texto codificadas dentro del mismo job hacia un nuevo dataset secuencial (**userid.GENER.COPY#1**). Posteriormente, en **LAB5#22**, ese dataset se copia íntegramente a un segundo dataset (**userid.GENER.COPY#2**) que es creado al vuelo utilizando el parámetro **LIKE**.

 ## 🧠 Conceptos aplicados:

 - Uso de `IEBGENER` con datos in-stream
 - Asignación dinámica de datasets con parámetros de espacio, formato y organización (**DSORG=PS**)
 - Creación de un dataset a partir de otro utilizando **LIKE**
 - Verificación de integridad y contenido mediante **ISPF**
