 # 📄 LAB5#41 – Crear dataset secuencial (PS) a partir de datos in-stream
 Este ejercicio utiliza el programa **IEBGENER** para crear un archivo secuencial (**PS**) con datos ingresados directamente en el JCL mediante un bloque in-stream. Se definen manualmente 16 líneas de texto como contenido del archivo, y se emplea la sentencia `DD DATA,DLM=$$` para delimitar el final de los datos.

 El archivo resultante se almacena como **userid.ES10.INPUT**, con formato FB, longitud fija de 80 caracteres por línea y una sola pista de espacio asignado.
 Este ejercicio refuerza el uso de datos embebidos dentro del JCL y la creación directa de archivos físicos sin fuentes externas.
