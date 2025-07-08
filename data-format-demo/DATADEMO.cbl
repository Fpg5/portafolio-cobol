000100**********************************************************************
000200* AUTHOR:  FERNANDO PEREZ G.                                         *
000300* DATE:    11/06/2025                                                *
000400* PURPOSE: ESTE PROGRAMA EJEMPLIFICA VARIOS CONCEPTOS DEL MANEJO     *
000500*           DE ESTRUCTURAS DE DATOS, CONSTANTES Y VARIABLES EN       *
000600*           DISTINTOS FORMATOS.                                      *
000700**********************************************************************
000800 IDENTIFICATION DIVISION.
000900 PROGRAM-ID. DATADEMO.
001000 DATA DIVISION.
001100 WORKING-STORAGE SECTION.
001200*-- Group Item con elementos subordinados
001300 01 StudentRecord.
001400     02 StudentId       PIC 9(7) VALUE 1234567.
001500     02 StudentName.
001600         03 FirstName    PIC X(10) VALUE "Fernando ".
001700         03 MiddleInit   PIC X     VALUE "A".
001800         03 Surname      PIC X(15) VALUE "Pérez".
001900     02 DateOfBirth.
002000         03 DayOfBirth   PIC 99    VALUE 25.
002100         03 MonthOfBirth PIC 99    VALUE 12.
002200         03 YearOfBirth  PIC 9(4)  VALUE 1994.
002300     02 CourseCode      PIC X(4)   VALUE "IPN".
002400
002500*-- Constantes Figurativas y Literales
002600 77 ZEROSFIELD          PIC 9(5)     VALUE ZEROS.
002700 77 SPACESFIELD         PIC X(10)    VALUE SPACES.
002800 77 HIGHSFIELD          PIC X(3)     VALUE HIGH-VALUES.
002900 77 LOWSFIELD           PIC 9(3)     VALUE LOW-VALUES.
003000 77 ALLSTARS            PIC X(6)     VALUE ALL "*".
003100 77 SIGNEDVALUE         PIC S9(4)    VALUE +1234.
003200 77 DECIMALVALUE        PIC 9(3)V99  VALUE 123.45.
003210 77 DISPDECIMVALUE      PIC ZZ9.99.
003300
003400*-- Evaluación de Edad (sin interacción)
003500 01 Edad                PIC 999      VALUE 42.
003600     88 Joven           VALUE 1 THRU 39.
003700     88 Maduro          VALUE 40 THRU 65.
003800     88 Anciano         VALUE 66 THRU 100.
003900 PROCEDURE DIVISION.
004000 MAIN-PROCEDURE.
004100     PERFORM MOSTRAR-INFORMACION.
004200     STOP RUN.
004300 MOSTRAR-INFORMACION.
004400     DISPLAY "===== Student Record =====".
004500     DISPLAY "ID: " StudentId.
004600     DISPLAY "Name: " FirstName MiddleInit Surname.
004700     DISPLAY "DOB: " DayOfBirth "/" MonthOfBirth "/" YearOfBirth.
004800     DISPLAY "Course: " CourseCode.
004900
005000     DISPLAY "===== Constants and Formats =====".
005100     DISPLAY "ZerosField: " ZerosField.
005200     DISPLAY "SpacesField:[" SpacesField "]".
005300     DISPLAY "HighsField: " HighsField.
005400     DISPLAY "LowsField: " LowsField.
005500     DISPLAY "AllStars: " AllStars.
005600     DISPLAY "SignedValue: " SignedValue.
005700     DISPLAY "DecimalValue: " DecimalValue.
005710     MOVE DECIMALVALUE TO DISPDECIMVALUE.
005800
005900     DISPLAY "===== Age Evaluation =====".
006000     DISPLAY "Edad registrada: " Edad.
006100
006200     EVALUATE TRUE
006300       WHEN Joven
006400         DISPLAY "Eres joven."
006500       WHEN Maduro
006600         DISPLAY "Eres maduro."
006700       WHEN Anciano
006800         DISPLAY "Eres anciano."
006900       WHEN OTHER
007100         DISPLAY "Edad fuera de rango evaluado."
007200       END-EVALUATE.
007300    STOP RUN.