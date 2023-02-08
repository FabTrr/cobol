IDENTIFICATION DIVISION.
PROGRAM-ID. CAJERO-AUTOMATICO.

DATA DIVISION.
WORKING-STORAGE SECTION.
01  WS-SALDO.
    05 WS-SALDO-INICIAL PIC 9(5)V99.
    05 WS-RETIRO PIC 9(5)V99.

PROCEDURE DIVISION.
    DISPLAY "Bienvenido al cajero automático"
    MOVE 1000 TO WS-SALDO-INICIAL
    DISPLAY "Su saldo actual es: " WS-SALDO-INICIAL
    DISPLAY "¿Cuánto desea retirar?"
    ACCEPT WS-RETIRO
    
    IF WS-RETIRO > WS-SALDO-INICIAL
        DISPLAY "Saldo insuficiente"
    ELSE
        SUBTRACT WS-RETIRO FROM WS-SALDO-INICIAL
        DISPLAY "Retiro exitoso"
        DISPLAY "Su nuevo saldo es: " WS-SALDO-INICIAL
    END-IF
    
    DISPLAY "Gracias por utilizar el cajero automático"
    STOP RUN.