# Programa COBOL – Filtro de empleados

Este programa lee dos archivos secuenciales: uno con registros de empleados y otro con filtros condicionales. Carga los datos en una tabla interna (`OCCURS` con índices múltiples) y aplica criterios definidos en tiempo de ejecución, como:

- Sexo (H / M)
- Puesto (consultor, DBA, etc.)
- Rendimiento numérico con operadores `<`, `>`, `=`
- Búsqueda directa por ID con `SEARCH`

## 📄 Archivos incluidos

- `PROG1.cbl` → Código COBOL
- `JCLPROG1.jcl` → Ejecución JCL
- `EMPDATA1.txt` → Datos de entrada de empleados
- `FILTROS.txt` → Instrucciones condicionales
- `SYSOUT.txt` → Resultado real desde SDSF
- `/capturas/` → Imágenes del entorno y ejecución

## 🧠 Características

- Lectura y procesamiento de archivos secuenciales
- Uso de `PERFORM VARYING`, `EVALUATE`, `SEARCH`, `SET`
- Comparaciones alfanuméricas y numéricas (`NUMVAL`, `TRIM`)
- Modularidad clara y separación de responsabilidades

---

> Ejecutado y probado en entorno educativo z/OS TSO/ISPF/SDSF.  
> Proyecto desarrollado como parte de mi preparación profesional para roles COBOL.
