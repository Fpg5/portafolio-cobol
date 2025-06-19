# Programa REXX - Mini-juego "Adivina el número"

Este script, escrito íntegramente en REXX y ejecutado en un entorno z/OS TSO/ISPF, permite jugar a adivinar un número aleatorio.
El usuario elige un nivel de dificultad (Fácil, Media, Difícil) y recibe pistas ("muy grande" / "muy pequeño") hasta acertar.
El programa contabiliza los intentos y pregunta si se desea jugar otra ronda.

## 📄 Archivos incluidos

- `LITLGAME.txt` → Código fuente REXX completo (comentado y con sangría)
- `captura-codigo.png` → Vista del script dentro del editor ISPF
- `captura-ejecucion.png` → Ejecución real del juego en la terminal

## 🧠 Características

- Entrada/salida interactiva mediante `SAY` y `PULL`
- Generación aleatoria con `RANDOM(1,límite)` según dificultad
- Validación básica del nivel elegido (default a Fácil si es inválido)
- Bucle exterior `DO WHILE` para múltiples partidas
- Bucle interior `DO UNTIL` y contador de intentos
- Comparaciones con operadores lógicos (`>`, `<`) y mensajes dinámicos
- Ejecutado y probado en entorno educativo z/OS TSO/ISPF (PCOMM 3270)
  
---

> Proyecto desarrollado como parte de mi formación en sistemas mainframe, integrando prácticas de scripting REXX, control de flujo y entrada interactiva en entorno TSO/ISPF.
