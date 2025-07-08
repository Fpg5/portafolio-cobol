 # 📄 LAB5#13 – Reemplazo de un miembro específico en un PDS
 
 Este ejercicio demuestra cómo reemplazar un miembro específico dentro de un dataset particionado utilizando `IEBCOPY` con la opción **REPLACE**. Se copia el miembro **JOBCARD** desde un dataset de referencia **(D80WW.ES10V15.CNTL)** hacia el dataset de trabajo **(userid.COPY.CNTL)**, sobrescribiendo su contenido si ya existe.

 ## 🧠 Conceptos aplicados:

 - Reemplazo controlado de miembros con **SELECT MEMBER=((name,,R))**
 - Manejo de **DISP=SHR** para datasets ya existentes
 - Dominio de utilidades del sistema como `IEBCOPY`
