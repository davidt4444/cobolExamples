//MYJOB    JOB (ACCT),'RUN PROGRAMS',CLASS=A,MSGCLASS=X,NOTIFY=&SYSUID
//STEP1    EXEC PGM=PROG1
//STEPLIB  DD DSN=MY.LOADLIB,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
//*         (Input data for PROG1, if needed)
/*
//STEP2    EXEC PGM=PROG2
//STEPLIB  DD DSN=MY.LOADLIB,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
//*         (Input data for PROG2, if needed)
/*
//STEP3    EXEC PGM=PROG3
//STEPLIB  DD DSN=MY.LOADLIB,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
//*         (Input data for PROG3, if needed)
/*
//STEP4    EXEC PGM=PROG4
//STEPLIB  DD DSN=MY.LOADLIB,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
//*         (Input data for PROG4, if needed)
/*
