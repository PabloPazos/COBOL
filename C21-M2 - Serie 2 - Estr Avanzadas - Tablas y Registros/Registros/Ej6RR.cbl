      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 PERSONA.
               02 NOMBRE PIC X(50).
               02 APELLIDO PIC X(50).
               02 DNI PIC 9(8).
               02 TELEFONO PIC 9(15).
               02 DIRECCION PIC X(50).
               02 ESTADO-CIVIL PIC X(10).
               02 HIJOS PIC X(2).
               02 GRUPO-FACTOR-SANGRE.
                   03 GRUPO PIC X(1).
                   03 FACTOR PIC X(1).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'Ingrese su nombre: '.
            ACCEPT NOMBRE.

            DISPLAY 'Ingrese su apellido: '.
            ACCEPT APELLIDO.

            DISPLAY 'Ingrese su DNI: '.
            ACCEPT DNI.

            DISPLAY 'Ingrese su tel�fono: '.
            ACCEPT TELEFONO.

            DISPLAY 'Ingrese su direcci�n: '.
            ACCEPT DIRECCION.

            DISPLAY 'Ingrese su estado civil. '.
            DISPLAY 'Casado= �C�'.
            DISPLAY 'Soltero= �S�'.
            DISPLAY 'Viudo= �V�'.
            DISPLAY 'Divorciado= �D�'.
            ACCEPT ESTADO-CIVIL.

            EVALUATE TRUE
               WHEN ESTADO-CIVIL = 'C'
                   MOVE 'Casado' TO ESTADO-CIVIL
               WHEN ESTADO-CIVIL = 'S'
                   MOVE 'Soltero' TO ESTADO-CIVIL
               WHEN ESTADO-CIVIL = 'V'
                   MOVE 'Viudo' TO ESTADO-CIVIL
               WHEN ESTADO-CIVIL = 'D'
                   MOVE 'Divorciado' TO ESTADO-CIVIL
               END-EVALUATE.

            DISPLAY 'Tiene hijos? '.
            DISPLAY 'Ingrese "S" para "S�", "N" para "No". '
            ACCEPT HIJOS.
            IF HIJOS = 'S'
                MOVE 'S�' TO HIJOS
            ELSE
                MOVE 'No' TO HIJOS
            END-IF.

            DISPLAY 'Su grupo sangu�neo es A, B o 0? '
            ACCEPT GRUPO.
            DISPLAY 'Su factor sangu�neo es "+" p "-" ? '
            ACCEPT FACTOR.

            DISPLAY ' '.
            DISPLAY 'Estos son sus datos: '
            DISPLAY 'Nombre: ' NOMBRE.
            DISPLAY 'Apellido: ' APELLIDO.
            DISPLAY 'DNI: ' DNI.
            DISPLAY 'Tel�fono: ' TELEFONO.
            DISPLAY 'Direcci�n: ' DIRECCION.
            DISPLAY 'Estado civil: ' ESTADO-CIVIL.
            DISPLAY 'Hijos: ' HIJOS.
            DISPLAY 'Grupo sangu�neo: ' GRUPO.
            DISPLAY 'Factor sangu�neo: ' FACTOR.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
