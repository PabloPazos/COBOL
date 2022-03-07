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
           01 NUMEROS.
               02 NUM1      PIC 9(4).
               02 OPERADOR  PIC X(1).
               02 NUM2      PIC 9(4).
               02 RESULTADO PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'Ingrese tipo de operaci�n: '.
            DISPLAY '+ para suma'.
            DISPLAY '- para resta'.
            DISPLAY '* para multiplicaci�n'.
            DISPLAY '/ para divisi�n'.
            ACCEPT OPERADOR.

            DISPLAY 'Ingrese el primer n�mero: '
            ACCEPT NUM1.

            DISPLAY 'Ingrese el segundo n�mero: '
            ACCEPT NUM2.

            IF OPERADOR = '+'
                COMPUTE RESULTADO = NUM1 + NUM2
            END-IF.

            IF OPERADOR = '-'
                COMPUTE RESULTADO = NUM1 - NUM2
            END-IF.

            IF OPERADOR = '*'
                COMPUTE RESULTADO = NUM1 * NUM2
            END-IF.

            IF OPERADOR = '/'
                COMPUTE RESULTADO = NUM1 / NUM2
            END-IF.

            DISPLAY 'Resultado de la operaci�n: ' RESULTADO.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
