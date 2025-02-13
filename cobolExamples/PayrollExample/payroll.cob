IDENTIFICATION DIVISION.
PROGRAM-ID. PAYROLL.
AUTHOR. YOUR NAME.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SOURCE-COMPUTER. YOUR-COMPUTER.
OBJECT-COMPUTER. YOUR-COMPUTER.

INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT OPTIONAL PRINT-FILE ASSIGN TO "PAYROLL.TXT".

DATA DIVISION.
FILE SECTION.
FD PRINT-FILE.
01 PRINT-RECORD PIC X(80).

WORKING-STORAGE SECTION.
01 EMPLOYEE-DATA.
    05 NAME PIC X(30).
    05 HOURS-WORKED PIC 99V99.
    05 HOURLY-RATE PIC 99V99.
    05 GROSS-PAY PIC 9(5)V99.
    05 REGULAR-PAY PIC 9(5)V99.
    05 OVERTIME-HOURS PIC 9(5)V99.
    05 OVERTIME-PAY PIC 9(5)V99.
    05 TAX-RATE PIC V99 VALUE .20.
    05 TAX-AMOUNT PIC 9(5)V99.
    05 NET-PAY PIC 9(5)V99.

PROCEDURE DIVISION.
BEGIN.
    DISPLAY "Enter employee name: ".
    ACCEPT NAME.
    DISPLAY "Enter hours worked: ".
    ACCEPT HOURS-WORKED.
    DISPLAY "Enter hourly rate: ".
    ACCEPT HOURLY-RATE.

    IF HOURS-WORKED > 40
        COMPUTE REGULAR-PAY = 40 * HOURLY-RATE
        COMPUTE OVERTIME-HOURS = HOURS-WORKED - 40
        COMPUTE OVERTIME-PAY = OVERTIME-HOURS * HOURLY-RATE * 1.5
        COMPUTE GROSS-PAY = REGULAR-PAY + OVERTIME-PAY
    ELSE
        COMPUTE GROSS-PAY = HOURS-WORKED * HOURLY-RATE
    END-IF
    COMPUTE TAX-AMOUNT = GROSS-PAY * TAX-RATE
    COMPUTE NET-PAY = GROSS-PAY - TAX-AMOUNT


    OPEN OUTPUT PRINT-FILE
    MOVE "Employee Payroll Report" TO PRINT-RECORD
    WRITE PRINT-RECORD
    MOVE SPACES TO PRINT-RECORD
    STRING "Name: " NAME DELIMITED BY SIZE INTO PRINT-RECORD
    WRITE PRINT-RECORD
    STRING "Gross Pay: $" GROSS-PAY DELIMITED BY SIZE INTO PRINT-RECORD
    WRITE PRINT-RECORD
    STRING "Tax Amount: $" TAX-AMOUNT DELIMITED BY SIZE INTO PRINT-RECORD
    WRITE PRINT-RECORD
    STRING "Net Pay: $" NET-PAY DELIMITED BY SIZE INTO PRINT-RECORD
    WRITE PRINT-RECORD
    CLOSE PRINT-FILE

    DISPLAY "Payroll calculated and saved to PAYROLL.TXT".
    STOP RUN.

