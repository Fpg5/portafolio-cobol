# Programa COBOL – Clave y cálculo de bono

Este programa se compone de dos módulos: un programa principal que carga registros de empleados en memoria desde un archivo secuencial, y un subprograma que es invocado por cada empleado para evaluar si merece un bono y para generar una clave identificadora basada en su información personal y laboral.

El bono se determina según el rendimiento y la antigüedad del empleado, y puede ser del 10% o 15% de su salario. Además, se construye una clave simbólica compuesta por: ID, inicial del nombre, apellido, puesto abreviado y sexo.


## 📄 Archivos incluidos

- `MNPROG1A.cbl` → Código COBOL del programa principal
- `SBPROG1A.cbl` → Código COBOL del subprograma
- `JCLMNSBPROG1A.jcl` → Compilación, vinculación y ejecución en z/OS
- `EMPDATA.txt` → Archivo de entrada con 40 empleados
- `SYSOUT JOB16022.txt` → Resultado real desde SDSF
- `/capturas/` → Imágenes del entorno y ejecución

## 🧠 Características

- Comunicación entre programas (`CALL USING`, `LINKAGE SECTION`)
- Carga en memoria de datos (`OCCURS`, índices)
- Conversión de cadenas numéricas (`FUNCTION NUMVAL`)
- Evaluación modular con `EVALUATE`, `IF`, `PERFORM VARYING`
- Construcción dinámica de clave alfanumérica con substring y control de índice
- Formato visual para montos (`PIC $ZZZ,ZZ9.99`)

---

> Ejecutado y probado en entorno educativo z/OS TSO/ISPF/SDSF.  
> Proyecto desarrollado como parte de mi formación profesional en sistemas mainframe, con énfasis en diseño modular, claridad de propósito y manipulación avanzada de datos en COBOL.
