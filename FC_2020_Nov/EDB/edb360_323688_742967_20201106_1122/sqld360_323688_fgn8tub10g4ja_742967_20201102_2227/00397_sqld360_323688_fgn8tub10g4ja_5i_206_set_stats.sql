/*
* This script includes all the commands to set basic level (table, index and columns) stats
* It is intentionally simple to ensure it completes quickly but at the same time allows to change stats easily enough
* Objects are expected in current schema, otherwise just chance the owner with whatever you need
*/
------------ Table: CM_RECORD_CURRENTSTEP--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', numrows => 380325, numblks => 4064 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_CM_RECORD_CURRENTSTEP', numrows => 380325, numlblks => 772, numdist => 380325, clstfct => 197077, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CM_RECORD_CUR_WORKFLOW_DEFI', numrows => 380325, numlblks => 896, numdist => 2, clstfct => 4633, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'SYS_IL0000116636C00010$$', numrows => , numlblks => , numdist => , clstfct => , indlevel => );
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.epc := 2;
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'PARAMS', distcnt => 0, density => 0, nullcnt => 0, avgclen => 103, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'CALLER', distcnt => 0, density => 0, nullcnt => 380325, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'STATE', distcnt => 1, density => 1, nullcnt => 0, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('--/::','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('--/::','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'DUE_DATE', distcnt => 0, density => 0, nullcnt => 380325, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2012-09-24/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-31/18:48:07','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'FINISH_DATE', distcnt => 159504, density => .00000626943524927275, nullcnt => 31211, avgclen => 11, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2012-09-24/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-31/18:48:07','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'START_DATE', distcnt => 181904, density => .00000549740522473393, nullcnt => 0, avgclen => 11, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('4','30');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'ACTION_ID', distcnt => 9, density => .111111111111111, nullcnt => 31211, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1701','1703');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'STEP_ID', distcnt => 3, density => .333333333333333, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','160');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'WORKFLOW_DEFINITION_ID', distcnt => 2, density => .5, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','381372');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'CM_RECORD_CURRENTSTEP', colname => 'ID', distcnt => 380325, density => .00000262933017813712, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
