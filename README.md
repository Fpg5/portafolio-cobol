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

## 🔧 Herramientas y entornos utilizados

- IBM z/OS Educational System
- TSO/ISPF, SDSF
- JCL básico
- GitHub para documentación y portafolio

---

## 📚 Objetivo del portafolio

Documentar el proceso de aprendizaje, crear referencia propia para futuras implementaciones y demostrar experiencia real en desarrollo COBOL clásico, incluyendo estructuras de datos, control de flujo y operaciones de entrada/salida.
