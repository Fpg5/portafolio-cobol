# Portafolio COBOL – Fernando Pérez

Este repositorio contiene proyectos escritos en COBOL como parte de mi formación en entornos mainframe. Todos los programas fueron desarrollados, compilados y ejecutados en un sistema z/OS mediante TSO/ISPF y SDSF, incluyendo archivos secuenciales, procesamiento estructurado, lógica condicional y ejecución vía JCL.

## 📌 Proyectos

### ▸ Programa de filtros a empleados

**Descripción:**  
Este programa lee dos archivos secuenciales: uno con registros de empleados y otro con filtros de búsqueda. Carga los datos en una tabla interna (`OCCURS`), y aplica filtros dinámicos de distintos tipos: por sexo, puesto, rendimiento, y búsquedas directas por ID.

**Componentes:**
- Archivos de entrada (`EMPDATA1`, `FILTROS`)
- Tabla en memoria con índices declarados
- Uso de `PERFORM VARYING`, `SEARCH`, `EVALUATE`, `NUMVAL`, `TRIM`
- Control modular con párrafos dedicados a carga, aplicación de filtros y visualización

**Ejecución:**  
Compilado y ejecutado mediante JCL en entorno z/OS de IBM.

**Capturas y código disponible en la carpeta** [`/programa-filtros-empleados`](./programa-filtros-empleados)

---
### ▸ Programa de generación de clave y cálculo de bono

**Descripción:**  
Este sistema está compuesto por un programa principal que carga en memoria una tabla con 40 empleados a partir de un archivo secuencial, y un subprograma que es invocado para aplicar reglas de negocio sobre cada registro. Por cada empleado, se genera una clave identificadora basada en sus datos y se calcula un bono proporcional a su rendimiento y antigüedad. El subprograma realiza la evaluación y devuelve la clave, el bono y una bandera que indica si el bono fue autorizado.

**Componentes:**
- Programa principal: `MNPROG1A`
- Subprograma llamado: `SBPROG1A` mediante `CALL USING`
- Archivo de entrada: `EMPDATA`, con registros que incluyen ID, nombre, edad, sexo, puesto, antigüedad, rendimiento y sueldo

**Uso de:**
- `OCCURS` e índices para tabla en memoria
- `LINKAGE SECTION` para intercambio de datos entre programas
- Conversión de tipos con `FUNCTION NUMVAL`
- Cálculo con constantes (`MULTIPLY BY` 0.10, 0.15)
- Manipulación de cadenas (`MOVE`, `PERFORM VARYING`, substrings)
- `EVALUATE` para reglas de autorización de bono
- Generación de clave estructurada: ID, inicial del nombre, apellido, puesto abreviado y sexo

**Ejecución:**  
Ambos programas fueron compilados, enlazados y ejecutados en entorno mainframe z/OS utilizando un JCL adaptado con múltiples pasos (`IGYWCL`, `LINKEDIT`, `PGM=MNPROG1A`).

**Capturas y código disponible en la carpeta** [`/programa-clave-bono`](./programa-clave-bono)

---

## 🔧 Herramientas y entornos utilizados

- IBM z/OS Educational System
- TSO/ISPF, SDSF
- JCL básico
- GitHub para documentación y portafolio

---

## 📚 Objetivo del portafolio

Documentar el proceso de aprendizaje, crear referencia propia para futuras implementaciones y demostrar experiencia real en desarrollo COBOL clásico, incluyendo estructuras de datos, control de flujo y operaciones de entrada/salida.
