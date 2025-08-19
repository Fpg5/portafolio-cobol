 # Demostración de funciones externas o subrutinas en REXX

 Este ejercicio muestra la construcción progresiva de dos programas REXX que interactúan con el usuario y realizan operaciones aritméticas según lo requerido.
 
 El diseño de estos programas `MATH` y `MYMATH` ejemplifica el uso de diversas estructuras de control y decisiones condicionales. Cada iteración del programa inicial integra una nueva instrucción o estructura que le permite manejar más casos de uso.
 Se implementa el uso de **operadores lógicos, operadores de comparación, ciclos de repetición, instrucciones `Select-When-Then-Otherwise`, instrucciones `If-Then-Else`, así como el llamado a la función desde la línea de comandos con o sin argumentos.**

  # 📂 Programa `MATH`:
  - `MATH1` → **Iteración 1**: Se le pide al usuario que ingrese dos números. El programa devuelve las operaciones aritméticas básicas entre esos números.
  - `MATH2` → **Iteración 2**: Ahora es posible llamar a la función desde la línea de comandos pasando como argumento los números. Si no se pasa un argumento, entonces se piden los números durante la ejecución. Además, se implementa el manejo de cero domo divisor.
  - `MATH3` → **Iteración 3**: Ahora, en caso de que el usuario tampoco ingrese los números de forma correcta durante la ejecución, se implementa un bucle que le permite al usuario intentar de nuevo el ingreso de datos. Además, se implementa el caso de interrupción del programa si el usuario lo requiere.
  - `MATH4` → **Iteración 4**: Ahora, se valida que los datos introducidos sean del tipo correcto (numérico) antes de efectuar las operaciones, se maneja el error. Además, se agrega la fecha y hora al resultado.
  
  # 📂 Programa `MYMATH`:
  - `MYMATH1` → **Iteración 1**: Se le pide al usario que ingrese la opción deseada según el tipo de operación aritmética que necesita. Se maneja el caso de cero como divisor.
  - `MYMATH2` → **Iteración 2**: Se implementa una estructura que permite manejar el caso de una opción inválida ingresada por el usuario, y repetir la solicitud de la opción hasta que sea correcta o el usuario interrumpa el programa.
  - `MYMATH3` → **Iteración 3**: Ahora, se implementa la capacidad de que el programa pueda recibir la opción de forma abreviada (S, SU, SUM, SUMA) para elegir la operación a realizar. Además, se valida que la entrada sea de tipo numérica.
  - `MYMATH4` → **Iteración 4**: Ahora, se valida que los datos introducidos sean del tipo correcto (numérico) antes de efectuar las operaciones, se maneja el error. Además, se agrega la fecha y hora al resultado.

## 📄 Archivos incluidos

- `MATH.rexx` → Código fuente REXX completo (comentado y con sangría)
- `MYMATH.rexx` → Código fuente REXX completo (comentado y con sangría)
- `captura-codigo-math.png` → Vista del script dentro del editor ISPF
- `captura-ejecucion-math.png` → Ejecución real del script en la terminal
- `captura-codigo-mymath.png` → Vista del script dentro del editor ISPF
- `captura-ejecucion-mymath.png` → Ejecución real del script en la terminal
  
---
> Proyecto desarrollado como parte de mi formación en sistemas mainframe, integrando prácticas de scripting REXX, control de flujo y entrada interactiva en entorno TSO/ISPF.
