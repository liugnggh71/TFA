/*
* This script includes all the commands to set basic level (table, index and columns) stats
* It is intentionally simple to ensure it completes quickly but at the same time allows to change stats easily enough
* Objects are expected in current schema, otherwise just chance the owner with whatever you need
*/
------------ Table: T_FRM_CELLTXT--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_FRM_CELLTXT', numrows => 46805, numblks => 764 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_FMCT_OBJ_STT', numrows => 46805, numlblks => 109, numdist => 1, clstfct => 748, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_FMCT_RSPE', numrows => 44936, numlblks => 107, numdist => 7013, clstfct => 6734, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_FMCT_CLASSTYPE', numrows => 46805, numlblks => 178, numdist => 1, clstfct => 748, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_FRM_CELLTXT', numrows => 46805, numlblks => 128, numdist => 46805, clstfct => 7880, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_FMCT_UNIVID', numrows => 16598, numlblks => 150, numdist => 16598, clstfct => 16546, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_FMCT_CRTD', numrows => 46805, numlblks => 126, numdist => 7256, clstfct => 6912, indlevel => 1);
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10049090');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_ID', distcnt => 46805, density => .0000213652387565431, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10005040','10887291');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_RSPE', distcnt => 7013, density => .000142592328532725, nullcnt => 1869, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('FormCellText','FormCellText');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'CLASSTYPE', distcnt => 1, density => 1, nullcnt => 0, avgclen => 13, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_C4C_ID', distcnt => 0, density => 0, nullcnt => 46805, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-20/13:46:51','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/15:46:24','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_CRTD', distcnt => 7256, density => .000137816979051819, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_LAS_ACT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_LAS_ACT_ACTRTYP', distcnt => 0, density => 0, nullcnt => 46805, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-20/13:46:51','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/15:46:24','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_LAS_ACT_TIM', distcnt => 7226, density => .000138389150290617, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_OBJ_STT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_VERS', distcnt => 1, density => 1, nullcnt => 0, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1001','1001');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_VSBT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 4, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_DLTDDT', distcnt => 0, density => 0, nullcnt => 46805, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','11677657');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_LAS_ACT_BY', distcnt => 64, density => .015625, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','11677657');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_ORIGCRTR', distcnt => 64, density => .015625, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11677657');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_LAS_ACT_BY_LOGDIN', distcnt => 48, density => .0208333333333333, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('0000560b-79be-49cc-9892-e123f0cb610a','fff9975c-640a-43f1-984e-614c701b25cd');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_UNIVID', distcnt => 16624, density => .0000601539942252165, nullcnt => 30207, avgclen => 14, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','14');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_ROW_NMBR', distcnt => 15, density => .0666666666666667, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','4');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_CLMNNMBR', distcnt => 5, density => .2, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('	CETIRIZINE','? ');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_FRM_CELLTXT', colname => 'FMCT_TXT', distcnt => 17444, density => .0000573263013070396, nullcnt => 1036, avgclen => 13, srec => srec);
COMMIT;
END;
/
------------ Table: T_TAKNASMTCC_BASE--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_TAKNASMTCC_BASE', numrows => 64151, numblks => 1776 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'SYS_IL0000115282C00051$$', numrows => , numlblks => , numdist => , clstfct => , indlevel => );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_RFNGWKFWTSK', numrows => 2325, numlblks => 6, numdist => 2325, clstfct => 2087, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_SENTLTR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_CLLDSTTS', numrows => 26742, numlblks => 61, numdist => 26742, clstfct => 23358, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CCTR_AFFN_CM', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_PRVSSNDR', numrows => 323, numlblks => 1, numdist => 32, clstfct => 123, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_CCTR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_OWNR', numrows => 55328, numlblks => 178, numdist => 125, clstfct => 16407, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_RTKNORIG', numrows => 785, numlblks => 4, numdist => 688, clstfct => 760, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_PRVSRFNGTSK_PRMN', numrows => 201, numlblks => 1, numdist => 201, clstfct => 186, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_PRVSRFNGTSK', numrows => 201, numlblks => 1, numdist => 201, clstfct => 186, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_PRVSTNFR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_CLASSTYPE', numrows => 64151, numlblks => 277, numdist => 1, clstfct => 1639, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CCTR_AFFN_MEMB', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CCTR_AFFN_UM_EVNT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_PRVSOWNR', numrows => 323, numlblks => 1, numdist => 32, clstfct => 123, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_PRVSOWNRPRMN', numrows => 323, numlblks => 1, numdist => 32, clstfct => 123, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_CRTD', numrows => 64151, numlblks => 166, numdist => 38836, clstfct => 33390, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_TAKNASMTCC_BASE', numrows => 64151, numlblks => 141, numdist => 64151, clstfct => 33349, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_STAT', numrows => 64151, numlblks => 141, numdist => 64151, clstfct => 33349, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CCTR_AFFN_UM_EVNTREQT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_UNIVID', numrows => 2255, numlblks => 19, numdist => 2255, clstfct => 2238, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_TNFR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_MEMB', numrows => 64151, numlblks => 213, numdist => 20066, clstfct => 38407, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CCTR_AFFN_UM_EXTN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STAT_SENTTSK', numrows => 61388, numlblks => 142, numdist => 37800, clstfct => 32822, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CCTR_AFFN_PVDR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_OBJ_STT', numrows => 64151, numlblks => 173, numdist => 5, clstfct => 4848, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_CURRQTN', numrows => 37200, numlblks => 108, numdist => 635, clstfct => 9967, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_TACB_ASMTCC', numrows => 64151, numlblks => 188, numdist => 146, clstfct => 16019, indlevel => 1);
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.epc := 2;
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'RENDERED_ASMT', distcnt => 0, density => 0, nullcnt => 5898, avgclen => 87, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000052','11657540');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_PRVSOWNR', distcnt => 32, density => .03125, nullcnt => 63828, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000052','11657540');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_PRVSSNDR', distcnt => 32, density => .03125, nullcnt => 63828, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000052','11657540');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_PRVSOWNRPRMN', distcnt => 32, density => .03125, nullcnt => 63828, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_TNFR', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_PRVSTNFR', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000001','10007884');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_CURRQTN', distcnt => 635, density => .0015748031496063, nullcnt => 26951, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B';
srec.maxval := 'C40B01080B';
srec.epc := 146;
srec.bkvals := DBMS_STATS.NUMARRAY(
6
,10
,37
,39
,40
,41
,355
,367
,370
,390
,7989
,8043
,8058
,8184
,15557
,21065
,21152
,29052
,29107
,29127
,34807
,34813
,34826
,34838
,34883
,34887
,34896
,34938
,36161
,36918
,37212
,37298
,40478
,40480
,40483
,40484
,40550
,40552
,40553
,40555
,40623
,40624
,40626
,40629
,40689
,40692
,40810
,40824
,40826
,40832
,40835
,40841
,42831
,42834
,42847
,42860
,42861
,42867
,42916
,42920
,48092
,48093
,48099
,48101
,48104
,48113
,48115
,48116
,48118
,48124
,48129
,48141
,48170
,48173
,48174
,48192
,48194
,48203
,48217
,52278
,52293
,52296
,52299
,52303
,52305
,52307
,52308
,52309
,52348
,52357
,52364
,52380
,52384
,52485
,52540
,52541
,52557
,52568
,52588
,52614
,52620
,52652
,52657
,52881
,52882
,52883
,52897
,52905
,52906
,53091
,53092
,55048
,55722
,55759
,55765
,56179
,56237
,56328
,56330
,56332
,56333
,56341
,56348
,56402
,56650
,56678
,56698
,56702
,56708
,56710
,56714
,57706
,57762
,59169
,59498
,59658
,59698
,60091
,60979
,62165
,62851
,62871
,63340
,64028
,64106
,64151
);
srec.novals := DBMS_STATS.NUMARRAY(
10000000
,10000001
,10000002
,10000003
,10000004
,10000005
,10000006
,10000008
,10000009
,10000010
,10000011
,10000012
,10000013
,10000014
,10000015
,10000016
,10000017
,10000018
,10000019
,10000020
,10000021
,10000022
,10000024
,10000025
,10000026
,10000027
,10000060
,10000080
,10000081
,10000082
,10000083
,10000084
,10000100
,10000120
,10000121
,10000140
,10000160
,10000161
,10000162
,10000163
,10000164
,10000165
,10000166
,10000167
,10000168
,10000169
,10000170
,10000180
,10000181
,10000182
,10000183
,10000184
,10000185
,10000200
,10000201
,10000220
,10000221
,10000222
,10000240
,10000260
,10000261
,10000280
,10000282
,10000283
,10000285
,10000288
,10000291
,10000293
,10000295
,10000296
,10000299
,10000300
,10000301
,10000302
,10000303
,10000304
,10000306
,10000309
,10000310
,10000311
,10000331
,10000333
,10000334
,10000335
,10000336
,10000337
,10000338
,10000339
,10000340
,10000341
,10000342
,10000343
,10000346
,10000347
,10000348
,10000349
,10000350
,10000351
,10000371
,10000372
,10000373
,10000391
,10000411
,10000431
,10000433
,10000435
,10000436
,10000437
,10000442
,10000446
,10000466
,10000468
,10000469
,10000486
,10000487
,10000507
,10000527
,10000548
,10000567
,10000568
,10000569
,10000587
,10000588
,10000589
,10000590
,10000607
,10000629
,10000630
,10000633
,10000647
,10000648
,10000649
,10000650
,10000651
,10000652
,10000653
,10000669
,10000670
,10000671
,10000672
,10000673
,10000689
,10000690
,10000691
,10000709
,10000710
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_ASMTCC', distcnt => 146, density => .00000779411076990226, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000002','10064219');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_RTKNORIG', distcnt => 688, density => .00145348837209302, nullcnt => 63366, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_SENTLTR', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000160','10224366');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_SENTTSK', distcnt => 37800, density => .0000264550264550265, nullcnt => 2763, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000052','10027755');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_CLLDSTTS', distcnt => 26776, density => .0000373468778010158, nullcnt => 37409, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000209','11987371');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_MEMB', distcnt => 20066, density => .0000498355427090601, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '53656E744173736573736D656E74';
srec.maxval := '53656E744173736573736D656E74';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
13258
);
srec.novals := DBMS_STATS.NUMARRAY(
433017913705623000000000000000000000
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CLASSTYPE', distcnt => 1, density => .0000077564106621302, nullcnt => 0, avgclen => 15, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('089-10000000','089-10198506');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_C4C_ID', distcnt => 63832, density => .0000156661235743827, nullcnt => 0, avgclen => 13, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/08:57:45','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-31/16:12:13','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_CRTD', distcnt => 38836, density => .0000257493047687712, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C22906';
srec.epc := 7;
srec.bkvals := DBMS_STATS.NUMARRAY(
7177
,9940
,10166
,14711
,14733
,41433
,64151
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,2
,4001
,4002
,4003
,4004
,4005
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_LAS_ACT', distcnt => 7, density => .00000779411076990226, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','3');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_LAS_ACT_ACTRTYP', distcnt => 3, density => .333333333333333, nullcnt => 9223, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/09:01:17','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-31/16:12:20','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_LAS_ACT_TIM', distcnt => 39220, density => .0000254971953085161, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C20B04';
srec.epc := 5;
srec.bkvals := DBMS_STATS.NUMARRAY(
7177
,9940
,37203
,37451
,64151
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,2
,1001
,1002
,1003
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_OBJ_STT', distcnt => 5, density => .00000779411076990226, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','32');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_VERS', distcnt => 24, density => .0416666666666667, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1001','1001');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_VSBT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-10/09:46:30','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-03-11/14:47:13','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_DLTDDT', distcnt => 836, density => .00119617224880383, nullcnt => 61388, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C626412';
srec.epc := 95;
srec.bkvals := DBMS_STATS.NUMARRAY(
457
,511
,1202
,1222
,2658
,2662
,2691
,2767
,2771
,3162
,7677
,7994
,8717
,10750
,12090
,14679
,14862
,15059
,17628
,17850
,19928
,20142
,20177
,21586
,22387
,24117
,26654
,26818
,27194
,27366
,35151
,35627
,35765
,35877
,35910
,35984
,37112
,42928
,44562
,44572
,44579
,44629
,46641
,46836
,46837
,46924
,47323
,47776
,52840
,52954
,52961
,52966
,52989
,52993
,52994
,53701
,53703
,53709
,53722
,54157
,54352
,54656
,54986
,55224
,55435
,55606
,55837
,55869
,55872
,55874
,57510
,57511
,58054
,58067
,58077
,58754
,58893
,59450
,60628
,61480
,61594
,61595
,61856
,62604
,62849
,63220
,63712
,63837
,63882
,64073
,64074
,64086
,64112
,64124
,64151
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000020
,10000052
,10000084
,10000101
,10543616
,10543618
,10543624
,10543625
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10573830
,10573844
,10619573
,10621934
,10621935
,10621944
,10629658
,10636254
,10642504
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11190843
,11191549
,11217577
,11258232
,11280884
,11280885
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11329381
,11337718
,11338377
,11371997
,11424617
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11655183
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11974565
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_LAS_ACT_BY', distcnt => 95, density => .00000779411076990226, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B010115';
srec.maxval := 'C40C626412';
srec.epc := 92;
srec.bkvals := DBMS_STATS.NUMARRAY(
61
,708
,729
,2138
,2144
,2163
,2240
,2246
,2840
,7298
,7657
,8413
,11835
,13828
,15099
,15340
,15495
,17846
,18195
,20267
,20770
,20781
,22186
,22975
,24706
,27233
,27397
,27773
,27957
,35090
,35740
,35880
,35912
,35942
,36136
,36466
,42831
,45359
,45371
,45383
,45448
,47233
,47428
,47429
,47516
,47914
,48361
,52888
,53002
,53011
,53016
,53036
,53041
,53046
,53749
,53751
,53753
,53767
,54206
,54401
,54705
,55042
,55281
,55497
,55668
,55902
,55934
,55937
,57542
,57543
,58087
,58100
,58110
,58787
,58926
,59483
,60651
,61503
,61593
,61594
,61855
,62603
,62848
,63220
,63713
,63838
,63883
,64074
,64086
,64112
,64124
,64151
);
srec.novals := DBMS_STATS.NUMARRAY(
10000020
,10000052
,10000084
,10000101
,10543616
,10543618
,10543624
,10543625
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10573830
,10573844
,10619573
,10621934
,10621935
,10621944
,10629658
,10636254
,10642504
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11190843
,11191549
,11217577
,11258232
,11280884
,11280885
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11329381
,11337718
,11371997
,11424617
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11655183
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_ORIGCRTR', distcnt => 92, density => .00000779411076990226, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11191549');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_LAS_ACT_BY_LOGDIN', distcnt => 24, density => .0416666666666667, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('0011cb66-e35e-4b0f-9cae-8e9f7057682e','fffe922f-22a9-4ea5-afb9-fe4bfd76da62');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_UNIVID', distcnt => 2255, density => .000443458980044346, nullcnt => 61896, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','7170.599999999999');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_SCOR', distcnt => 89, density => .0112359550561798, nullcnt => 37410, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_DSCMACPD', distcnt => 2, density => .5, nullcnt => 34353, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10064856');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'TACB_ID', distcnt => 64151, density => .0000155882215398045, nullcnt => 0, avgclen => 6, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_CMPDAT', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_ID', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('1','9999');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_WKFWISTCID', distcnt => 54728, density => .0000182721824294694, nullcnt => 9223, avgclen => 6, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_CNV_ID', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_OWNRCHNDFLAG', distcnt => 2, density => .5, nullcnt => 6805, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','5');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_OWNRCHNDCNT', distcnt => 5, density => .2, nullcnt => 63220, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/08:58:25','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:39:48','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_SRTDAT', distcnt => 29868, density => .0000334806481853489, nullcnt => 34372, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/09:01:17','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:56:13','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_CMPDAT', distcnt => 26684, density => .0000374756408334582, nullcnt => 37412, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/10:29:19','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:38:17','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_CANCAT', distcnt => 4081, density => .000245037980887037, nullcnt => 59558, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10064856');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_ID', distcnt => 64151, density => .0000155882215398045, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_AFFN_UM_EVNTREQT', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_AFFN_UM_EXTN', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_AFFN_PVDR', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_AFFN_CM', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_AFFN_MEMB', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'CCTR_AFFN_UM_EVNT', distcnt => 0, density => 0, nullcnt => 64151, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10120957','12301235');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_RFNGWKFWTSK', distcnt => 2325, density => .00043010752688172, nullcnt => 61826, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10120968','12301194');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_PRVSRFNGTSK', distcnt => 201, density => .00497512437810945, nullcnt => 63950, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10120968','12301194');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_PRVSRFNGTSK_PRMN', distcnt => 201, density => .00497512437810945, nullcnt => 63950, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B010115';
srec.maxval := 'C40C626412';
srec.epc := 125;
srec.bkvals := DBMS_STATS.NUMARRAY(
53
,763
,784
,2254
,2258
,2262
,2266
,2268
,2272
,2276
,2280
,2284
,2288
,2292
,2296
,2300
,2302
,2304
,2307
,2311
,2323
,2327
,2331
,2335
,2339
,2343
,2345
,2347
,2350
,2360
,2366
,2395
,2476
,2479
,2483
,3089
,6918
,7148
,7831
,9282
,10208
,11232
,11410
,11644
,14177
,14305
,16373
,16499
,16510
,16514
,16518
,17925
,18733
,18737
,20468
,20470
,20474
,23000
,23169
,23545
,23715
,29553
,29693
,29749
,29810
,29862
,31030
,35793
,37047
,37049
,37056
,37126
,37128
,38750
,38945
,38946
,39033
,39431
,39884
,44297
,44411
,44420
,44425
,44446
,44451
,44456
,45005
,45011
,45019
,45040
,45052
,45485
,45680
,45982
,46314
,46550
,46761
,46931
,47162
,47163
,47195
,47198
,48686
,48687
,49230
,49243
,49253
,49930
,50068
,50625
,51808
,52660
,52775
,53036
,53780
,54025
,54392
,54890
,55015
,55060
,55251
,55263
,55289
,55301
,55328
);
srec.novals := DBMS_STATS.NUMARRAY(
10000020
,10000052
,10000084
,10000101
,10079539
,10083279
,10084014
,10087560
,10094862
,10098405
,10099847
,10105519
,10107752
,10111698
,10112367
,10148440
,10179777
,10183397
,10187107
,10188407
,10191894
,10218737
,10218864
,10227241
,10229405
,10252521
,10283473
,10393118
,10466003
,10477338
,10543616
,10543618
,10543624
,10543625
,10547900
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10565415
,10566016
,10573830
,10573844
,10583336
,10619573
,10619699
,10619792
,10621934
,10621935
,10621944
,10629658
,10636254
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10699673
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11190843
,11191549
,11217577
,11258232
,11280884
,11280885
,11280888
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11296887
,11329381
,11337718
,11371997
,11424617
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_TAKNASMTCC_BASE', colname => 'STAT_OWNR', distcnt => 125, density => .00000903701561596298, nullcnt => 8823, avgclen => 6, srec => srec);
COMMIT;
END;
/
------------ Table: T_MEMBDGISBASE--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_MEMBDGISBASE', numrows => 397418, numblks => 12148 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'T_CFPRBLMDS_THE_BRNCACT', numrows => 11321, numlblks => 27, numdist => 8994, clstfct => 1840, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_MDSS', numrows => 349357, numlblks => 819, numdist => 349357, clstfct => 283162, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MBDB_OBJ_STT', numrows => 397418, numlblks => 1171, numdist => 6, clstfct => 21260, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MBDB_DGIS', numrows => 396970, numlblks => 1011, numdist => 10340, clstfct => 233950, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_OWNR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_PRVSOWNR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_PRVSSNDR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_PRVSOWNRPRMN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_PRVSTNFR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_UMDS', numrows => 253932, numlblks => 584, numdist => 253932, clstfct => 239887, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_MEMBDGISBASE', numrows => 397418, numlblks => 882, numdist => 397418, clstfct => 285235, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_CFDS', numrows => 1244, numlblks => 3, numdist => 1244, clstfct => 206, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_RFNGWKFWTSK', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_SRC__PAT_ID_QRY', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_CBDG', numrows => 5, numlblks => 1, numdist => 5, clstfct => 4, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CFDS_SENTASMT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_PRVSRFNGTSK_PRMN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_TNFR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MBDB_CLASSTYPE', numrows => 397418, numlblks => 1604, numdist => 8, clstfct => 17972, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CMDI_CMBASE_DGIS', numrows => 396970, numlblks => 1237, numdist => 61861, clstfct => 247865, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MBDB_CSTMFLDS', numrows => 287629, numlblks => 681, numdist => 287629, clstfct => 132807, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_UMAD_UMBS', numrows => 276, numlblks => 8, numdist => 154, clstfct => 236, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MBDB_DGISUMEVNT_ID', numrows => 397418, numlblks => 1208, numdist => 397418, clstfct => 285265, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_MEMB_DGIS', numrows => 397237, numlblks => 1329, numdist => 285377, clstfct => 260865, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_UMDS_DGISUMEVNT_DGIS', numrows => 397244, numlblks => 1273, numdist => 258579, clstfct => 290953, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CFDS_CM_TMPT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_CFPRBLMDS', numrows => 249, numlblks => 1, numdist => 249, clstfct => 23, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PERFTMEMBDGISX5', numrows => 397418, numlblks => 2160, numdist => 260318, clstfct => 291797, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_UMDS_SNP', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_GRP', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CFDS_THE_BRNCACT', numrows => 1244, numlblks => 3, numdist => 1244, clstfct => 206, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_CAUDBY', numrows => 1025, numlblks => 3, numdist => 875, clstfct => 897, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_TAKNASMTCC', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CFDS_AMTN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_PRVSRFNGTSK', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MBDB_UNIVID', numrows => 352325, numlblks => 1701, numdist => 316652, clstfct => 306132, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_UMAD', numrows => 488, numlblks => 9, numdist => 488, clstfct => 421, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_CMDI', numrows => 111132, numlblks => 308, numdist => 111132, clstfct => 34886, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_CBDG_MDCLCLM', numrows => 5, numlblks => 1, numdist => 5, clstfct => 5, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MBDB_CRTD', numrows => 397418, numlblks => 1062, numdist => 143946, clstfct => 118293, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_MDSS_SRC__ASMTCARECALC', numrows => 1029, numlblks => 4, numdist => 30, clstfct => 766, indlevel => 1);
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C3070F39';
srec.maxval := 'C56464615F22';
srec.epc := 234;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,45
,46
,47
,48
,49
,50
,51
,52
,74
,75
,76
,77
,78
,79
,80
,81
,82
,83
,84
,85
,86
,87
,88
,89
,90
,91
,92
,93
,94
,95
,96
,97
,98
,99
,100
,101
,102
,103
,104
,105
,106
,107
,108
,109
,110
,111
,112
,113
,114
,115
,116
,117
,118
,119
,120
,121
,122
,123
,124
,125
,126
,127
,128
,129
,130
,131
,132
,133
,134
,135
,136
,137
,138
,139
,140
,141
,142
,143
,144
,145
,146
,147
,148
,149
,150
,151
,152
,153
,154
,155
,156
,157
,158
,159
,160
,161
,162
,163
,164
,165
,166
,167
,168
,169
,170
,171
,172
,173
,174
,175
,176
,177
,178
,179
,180
,181
,182
,183
,184
,185
,186
,187
,188
,189
,190
,191
,192
,193
,194
,195
,196
,197
,198
,199
,200
,201
,202
,203
,204
,205
,206
,207
,208
,209
,210
,211
,212
,213
,214
,215
,216
,217
,218
,219
,220
,221
,222
,223
,224
,225
,226
,227
,228
,229
,230
,231
,232
,233
,234
,235
,236
,237
,238
,239
,240
,241
,242
,243
,244
,245
,246
,247
,248
,249
,250
,251
,252
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
61456
,44073360
,87583396
,129748116
,174706499
,212495078
,255786315
,301759917
,346013171
,390894442
,433426233
,480078577
,524410836
,568491442
,613762057
,656908501
,703141915
,745622100
,791090477
,833956298
,876467664
,921316338
,965920876
,1012757938
,1059802157
,1103041340
,1147762150
,1195663528
,1235249129
,1281709564
,1324901642
,1365262761
,1410817028
,1445710513
,1486904849
,1531016396
,1575063218
,1618465175
,1658848584
,1692222928
,1738474337
,1784215170
,1829831548
,1874215375
,1913011521
,1955541669
,2002234255
,2044968310
,2090876147
,2133502259
,2174407967
,2220289692
,2263784848
,2284796988
,2320787240
,2365789473
,2404850424
,2452006283
,2494677179
,2541211608
,2581306105
,2624161081
,2667359810
,2703179477
,2732045292
,2777622095
,2817160512
,2862813719
,2907932331
,2954201653
,2997641731
,3042981809
,3084347513
,3127746871
,3171848217
,3215960434
,3258181253
,3301152416
,3342474100
,3386572140
,3431875561
,3478581997
,3517495242
,3561077780
,3605031428
,3647907564
,3693360754
,3737397680
,3780479571
,3824326907
,3871082581
,3917019147
,3959961933
,4004993920
,4048947115
,4096204724
,4140953420
,4181828355
,4226578785
,4271551520
,4315518554
,4357861888
,4402306889
,4438119335
,4483169211
,4525084518
,4565121280
,4613057189
,4657696438
,4699463599
,4741457253
,4785095589
,4829668825
,4873932907
,4917455791
,4959176536
,5001963345
,5045580344
,5084701056
,5130216773
,5168540535
,5205140311
,5246364644
,5287485989
,5324136245
,5370061115
,5414273693
,5456807834
,5498959153
,5542067920
,5584785515
,5630304622
,5676768432
,5707449282
,5752002822
,5798039357
,5842938693
,5880194977
,5922616882
,5964942728
,6011740721
,6057545699
,6098944331
,6142796300
,6186681541
,6224030123
,6268087011
,6312464607
,6354993768
,6397543150
,6439131464
,6480939094
,6524421079
,6566436284
,6610794093
,6657502682
,6705254987
,6748059921
,6795913848
,6842858575
,6884596229
,6927032442
,6974855834
,7021240012
,7067186321
,7114147199
,7160414420
,7199204761
,7239640322
,7286220428
,7326954799
,7373211380
,7411387126
,7453109480
,7496541449
,7535885966
,7580146599
,7624943995
,7669182289
,7713855012
,7756228879
,7802080395
,7847569251
,7892280339
,7935464162
,7978629357
,8024780541
,8069093047
,8105391896
,8147926225
,8179394854
,8183728995
,8230567581
,8273518866
,8315163425
,8353462052
,8395371710
,8430362391
,8475296340
,8521848842
,8567512449
,8615430516
,8658318270
,8698023703
,8740450526
,8784322345
,8827153983
,8872167868
,8916222273
,8962517590
,9004382843
,9049024923
,9094679716
,9141587075
,9185838984
,9219848970
,9264615628
,9310618706
,9357053229
,9402952247
,9447160381
,9495665347
,9538926888
,9584394793
,9625079544
,9664410708
,9702229438
,9748311216
,9787867149
,9828126033
,9872459834
,9915187720
,9956692240
,9999969433
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'SYS_STS16QW#IPBEJF$IE2_54ZF$HM', distcnt => 286653, density => .0000455431064822761, nullcnt => 0, avgclen => 12, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('61534513042129','18446743225867896257');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'SYS_STS4Y43NEX48Z3G3T_MWP7KMOU', distcnt => 298443, density => .00000335072358875899, nullcnt => 63565, avgclen => 11, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '434D446961676E6F736973';
srec.maxval := '554D446961676E6F736973';
srec.epc := 8;
srec.bkvals := DBMS_STATS.NUMARRAY(
93314
,93319
,94563
,105884
,125180
,142998
,143486
,397418
);
srec.novals := DBMS_STATS.NUMARRAY(
349451055190046000000000000000000000
,350082107518804000000000000000000000
,350143983780612000000000000000000000
,350143983780612000000000000000000000
,401864047799037000000000000000000000
,401864047799037000000000000000000000
,442912164386461000000000000000000000
,442912398643673000000000000000000000
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CLASSTYPE', distcnt => 8, density => .00000125812117216633, nullcnt => 0, avgclen => 14, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '3037392D3130303030303030';
srec.maxval := '3134312D3130303036373031';
srec.epc := 255;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,45
,46
,47
,48
,49
,50
,51
,52
,53
,54
,55
,56
,57
,58
,59
,60
,61
,62
,63
,64
,65
,66
,67
,68
,69
,70
,71
,72
,73
,74
,75
,76
,77
,78
,79
,80
,81
,82
,83
,84
,85
,86
,87
,88
,89
,90
,91
,92
,93
,94
,95
,96
,97
,98
,99
,100
,101
,102
,103
,104
,105
,106
,107
,108
,109
,110
,111
,112
,113
,114
,115
,116
,117
,118
,119
,120
,121
,122
,123
,124
,125
,126
,127
,128
,129
,130
,131
,132
,133
,134
,135
,136
,137
,138
,139
,140
,141
,142
,143
,144
,145
,146
,147
,148
,149
,150
,151
,152
,153
,154
,155
,156
,157
,158
,159
,160
,161
,162
,163
,164
,165
,166
,167
,168
,169
,170
,171
,172
,173
,174
,175
,176
,177
,178
,179
,180
,181
,182
,183
,184
,185
,186
,187
,188
,189
,190
,191
,192
,193
,194
,195
,196
,197
,198
,199
,200
,201
,202
,203
,204
,205
,206
,207
,208
,209
,210
,211
,212
,213
,214
,215
,216
,217
,218
,219
,220
,221
,222
,223
,224
,225
,226
,227
,228
,229
,230
,231
,232
,233
,234
,235
,236
,237
,238
,239
,240
,241
,242
,243
,244
,245
,246
,247
,248
,249
,250
,251
,252
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250350311729426000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370277226380000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,250370356454542000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481048305688000000000000000000000
,255481127533850000000000000000000000
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_C4C_ID', distcnt => 376705, density => .00000268058053319587, nullcnt => 16921, avgclen => 13, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '786F090C0F1E1B';
srec.maxval := '78780B0211341B';
srec.epc := 145;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,4
,49
,56
,76
,107
,118
,119
,120
,121
,122
,123
,124
,125
,126
,127
,128
,129
,130
,131
,132
,133
,134
,135
,136
,137
,138
,139
,140
,141
,142
,143
,144
,145
,146
,147
,148
,149
,150
,151
,152
,153
,154
,155
,156
,157
,158
,159
,160
,161
,162
,163
,164
,165
,166
,167
,168
,169
,170
,171
,172
,173
,174
,175
,176
,177
,178
,179
,180
,181
,182
,183
,184
,185
,186
,187
,188
,189
,190
,191
,192
,193
,194
,195
,196
,197
,198
,199
,200
,201
,202
,203
,204
,205
,206
,207
,208
,209
,210
,211
,212
,213
,214
,215
,216
,217
,218
,219
,220
,221
,222
,223
,224
,225
,226
,227
,228
,229
,230
,231
,232
,233
,234
,235
,236
,237
,238
,239
,240
,241
,242
,243
,244
,245
,246
,247
,248
,249
,250
,251
,252
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
2455817.60377315
,2455930.5778125
,2456120.63755787
,2456154.92239583
,2456155.02905093
,2456155.06069444
,2456155.06753472
,2456155.08652778
,2456155.09471065
,2456175.04925926
,2456175.07737269
,2456175.11313657
,2456175.3244213
,2456175.46042824
,2456176.93921296
,2456176.95967593
,2456177.70060185
,2456181.60711806
,2456184.56201389
,2456195.48712963
,2456202.42868056
,2456210.66957176
,2456220.47777778
,2456230.63743056
,2456238.65431713
,2456258.53555556
,2456276.36506944
,2456300.60524306
,2456317.51646991
,2456336.44607639
,2456350.62385417
,2456350.65984954
,2456353.71576389
,2456357.65945602
,2456357.68865741
,2456357.71607639
,2456357.74332176
,2456366.63059028
,2456379.56483796
,2456387.60978009
,2456398.645
,2456407.67769676
,2456419.65496528
,2456429.6275463
,2456442.70434028
,2456454.58673611
,2456471.43368056
,2456492.470625
,2456514.5740162
,2456539.43789352
,2456547.34112269
,2456555.68092593
,2456556.76681713
,2456562.62107639
,2456573.33505787
,2456583.66850694
,2456598.58619213
,2456623.58725694
,2456675.40986111
,2456716.69337963
,2456765.53758102
,2456856.36039352
,2456906.4493287
,2456934.5328588
,2456960.56706019
,2456995.35833333
,2457021.67847222
,2457046.3656713
,2457066.51391204
,2457091.71211806
,2457134.38332176
,2457177.6137963
,2457234.46225694
,2457277.49814815
,2457337.5853125
,2457430.48302083
,2457487.4206713
,2457549.74921296
,2457641.59898148
,2457708.58056713
,2457814.38490741
,2457857.49011574
,2458010.58688657
,2458128.41923611
,2458368.50212963
,2458647.95390046
,2458890.37420139
,2458936.60274306
,2458960.45715278
,2458977.6949537
,2458991.79052083
,2458991.80494213
,2458991.81912037
,2458991.82771991
,2458992.86322917
,2458992.87106481
,2458992.88496528
,2458992.90179398
,2458992.91395833
,2458992.92293981
,2458992.9319213
,2458992.93921296
,2458992.94601852
,2458992.9527662
,2458993.51693287
,2458993.5246412
,2458993.53060185
,2458993.53685185
,2458993.54315972
,2458993.54929398
,2458993.55496528
,2458993.56076389
,2458993.56715278
,2458999.7371875
,2459009.64934028
,2459020.37633102
,2459025.44667824
,2459025.45420139
,2459025.46159722
,2459025.46976852
,2459039.64226852
,2459053.44243056
,2459054.42568287
,2459054.43138889
,2459054.4377662
,2459061.37612269
,2459069.3909375
,2459075.37769676
,2459090.3840625
,2459091.45851852
,2459091.47347222
,2459091.48829861
,2459094.38299769
,2459103.37753472
,2459118.72006944
,2459118.73038194
,2459118.741875
,2459118.75331019
,2459124.42821759
,2459136.70888889
,2459145.42122685
,2459146.39425926
,2459150.42574074
,2459150.44011574
,2459156.70238426
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_CRTD', distcnt => 143946, density => .0000140929776468282, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','2004');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_LAS_ACT', distcnt => 5, density => .2, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('2','2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_LAS_ACT_ACTRTYP', distcnt => 1, density => 1, nullcnt => 303351, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '787009020B0B0D';
srec.maxval := '78780B02121702';
srec.epc := 142;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,45
,46
,47
,48
,49
,50
,51
,52
,53
,54
,55
,56
,57
,58
,59
,60
,61
,62
,63
,64
,65
,66
,67
,68
,69
,70
,71
,72
,73
,74
,75
,76
,77
,78
,79
,80
,81
,82
,83
,197
,198
,199
,200
,201
,202
,203
,204
,205
,206
,207
,208
,209
,210
,211
,212
,213
,214
,215
,216
,217
,218
,219
,220
,221
,222
,223
,224
,225
,226
,227
,228
,229
,230
,231
,232
,233
,234
,235
,236
,237
,238
,239
,240
,241
,242
,243
,244
,245
,246
,247
,248
,249
,250
,251
,252
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
2456173.42375
,2456175.46194444
,2456176.94125
,2456176.96409722
,2456177.92328704
,2456184.56054398
,2456199.58972222
,2456211.61991898
,2456220.71601852
,2456220.7528125
,2456220.78909722
,2456220.82583333
,2456231.63188657
,2456245.66700231
,2456260.41969907
,2456278.7633912
,2456296.55856481
,2456315.61476852
,2456331.55994213
,2456347.55586806
,2456357.6243287
,2456358.64325232
,2456358.6912963
,2456358.74326389
,2456365.58795139
,2456377.66199074
,2456388.59310185
,2456405.34857639
,2456415.61194444
,2456428.59142361
,2456442.44100694
,2456455.58899306
,2456477.59753472
,2456499.57133102
,2456521.91666667
,2456535.42545139
,2456535.42739583
,2456535.42880787
,2456541.6250463
,2456554.73831019
,2456556.76912037
,2456566.43971065
,2456575.52479167
,2456595.58533565
,2456617.58466435
,2456639.58424769
,2456708.35556713
,2456805.93189815
,2456881.50540509
,2456924.6422338
,2456947.67832176
,2456983.53736111
,2457002.67834491
,2457031.69267361
,2457052.57803241
,2457073.55039352
,2457086.69115741
,2457116.55570602
,2457165.74502315
,2457170.45032407
,2457184.49625
,2457184.56346065
,2457184.61916667
,2457185.73082176
,2457190.46737269
,2457259.68670139
,2457329.35114583
,2457429.70322917
,2457495.17586806
,2457495.19210648
,2457520.5590162
,2457603.44363426
,2457689.62203704
,2457809.62136574
,2457847.39704861
,2457882.58728009
,2458022.64918981
,2458186.47855324
,2458452.661875
,2458622.64787037
,2458622.68731481
,2458719.59732639
,2458915.82574074
,2458948.60569444
,2458963.83635417
,2458981.58365741
,2458991.80077546
,2458991.82561343
,2458991.85048611
,2458991.8640625
,2458992.87280093
,2458992.9108912
,2458992.93101852
,2458992.94597222
,2458992.95873843
,2458992.97607639
,2458992.98743056
,2458992.99834491
,2458993.02681713
,2458993.51918982
,2458993.53181713
,2458993.54506944
,2458993.55740741
,2458993.56960648
,2458993.57953704
,2458993.58982639
,2458993.59960648
,2458993.60989583
,2458999.73960648
,2459010.60423611
,2459019.40927083
,2459025.45005787
,2459025.46618056
,2459025.47894676
,2459025.49042824
,2459031.56553241
,2459053.44071759
,2459053.44967593
,2459054.43475694
,2459054.44575231
,2459055.43851852
,2459066.5743287
,2459069.39627315
,2459080.37653935
,2459090.38824074
,2459091.47572917
,2459091.50503472
,2459091.5271412
,2459095.82420139
,2459105.37671296
,2459118.72042824
,2459118.7444213
,2459118.76601852
,2459118.78383102
,2459125.37623843
,2459133.37905093
,2459144.55976852
,2459145.43627315
,2459150.42104167
,2459150.44900463
,2459150.46634259
,2459156.72362269
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_LAS_ACT_TIM', distcnt => 164996, density => .00000841628133904784, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C21506';
srec.epc := 6;
srec.bkvals := DBMS_STATS.NUMARRAY(
242745
,252705
,370213
,397036
,397334
,397418
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,2
,2001
,2002
,2003
,2005
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_OBJ_STT', distcnt => 6, density => .00000125812117216633, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','99');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_VERS', distcnt => 70, density => .0142857142857143, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C20B02';
srec.maxval := 'C20B02';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
397418
);
srec.novals := DBMS_STATS.NUMARRAY(
1001
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_VSBT', distcnt => 1, density => .00000125812117216633, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2012-09-04/14:44:08','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-29/11:42:29','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_DLTDDT', distcnt => 4685, density => .000213447171824973, nullcnt => 387458, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11677657');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_LAS_ACT_BY', distcnt => 123, density => .00813008130081301, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C444D3A';
srec.epc := 111;
srec.bkvals := DBMS_STATS.NUMARRAY(
270218
,270219
,314435
,314441
,314763
,315043
,315468
,315501
,316728
,317169
,317314
,317483
,317989
,319679
,319745
,320033
,320805
,321308
,321355
,321862
,325376
,326457
,326726
,327188
,329144
,329214
,330319
,331428
,332487
,334741
,335004
,338139
,338244
,339429
,340248
,342565
,343115
,343596
,344549
,344553
,344821
,344875
,345021
,347544
,347885
,351322
,354246
,355292
,361505
,361811
,361988
,364633
,364840
,365936
,366336
,366338
,366801
,367000
,367065
,367867
,367874
,367936
,367982
,367985
,368031
,368182
,368330
,370851
,370854
,370934
,370955
,377229
,380748
,381863
,381878
,381881
,382148
,383537
,383588
,384085
,386794
,386987
,387016
,387510
,387515
,387520
,387547
,387591
,387643
,387720
,387755
,387760
,387764
,387770
,387772
,387777
,388392
,389275
,389286
,389291
,390570
,391227
,391880
,391993
,391996
,393315
,394469
,395561
,396742
,396744
,397418
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000000
,10000001
,10000002
,10000020
,10000048
,10000050
,10000051
,10000052
,10000053
,10000054
,10000055
,10000056
,10000057
,10000058
,10000059
,10000060
,10000061
,10000063
,10000065
,10000067
,10000068
,10000069
,10000070
,10000071
,10000072
,10000073
,10000074
,10000076
,10000081
,10000082
,10000083
,10000084
,10000101
,10543610
,10543611
,10543612
,10543613
,10543615
,10543616
,10543624
,10543625
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10551307
,10556299
,10559638
,10573830
,10573888
,10591892
,10600828
,10605689
,10614334
,10619573
,10621934
,10629658
,10636254
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10700843
,10705182
,10715811
,10927938
,11190843
,11191549
,11258232
,11280885
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11329381
,11337718
,11354776
,11371997
,11632127
,11632128
,11632178
,11640563
,11641474
,11642315
,11649744
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11677657
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_ORIGCRTR', distcnt => 111, density => .00000125812117216633, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 1, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11677657');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_LAS_ACT_BY_LOGDIN', distcnt => 56, density => .0178571428571429, nullcnt => 1, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('000010559230D','fffe090e-bb51-44ae-b2ba-bb646a1c4ae2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_UNIVID', distcnt => 316652, density => .0000031580410040044, nullcnt => 45093, avgclen => 18, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('
','x rays');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_RESNOR_CMMT', distcnt => 10241, density => .0000976467141880676, nullcnt => 373884, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10487878');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_ID', distcnt => 397418, density => .00000251624234433267, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10333261','10396512');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFDS_ID', distcnt => 1244, density => .000803858520900322, nullcnt => 396174, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '426F0605010101';
srec.maxval := 'FC720101010101';
srec.epc := 222;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,45
,46
,47
,48
,49
,50
,51
,52
,53
,54
,55
,56
,57
,58
,59
,60
,61
,62
,63
,64
,65
,66
,67
,68
,69
,70
,71
,72
,73
,74
,75
,76
,77
,78
,79
,80
,81
,82
,83
,84
,85
,86
,87
,88
,89
,90
,91
,92
,93
,94
,95
,96
,97
,98
,99
,100
,101
,102
,103
,104
,105
,106
,107
,108
,109
,110
,111
,112
,113
,114
,115
,116
,117
,118
,119
,120
,121
,122
,123
,124
,125
,126
,127
,128
,129
,130
,131
,132
,133
,134
,135
,136
,137
,138
,139
,140
,141
,142
,143
,144
,145
,146
,147
,148
,149
,150
,151
,152
,153
,154
,155
,156
,157
,158
,159
,160
,161
,162
,163
,164
,165
,166
,167
,168
,169
,170
,171
,172
,173
,174
,175
,176
,177
,178
,179
,180
,181
,182
,183
,184
,185
,186
,187
,188
,189
,190
,191
,192
,193
,194
,195
,198
,199
,200
,201
,202
,203
,210
,211
,212
,217
,218
,219
,225
,226
,232
,233
,237
,238
,239
,243
,244
,245
,249
,250
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
483381
,2378862
,2451911
,2454712
,2454720
,2454728
,2454735
,2454743
,2454753
,2454762
,2454770
,2454780
,2454789
,2454797
,2454809
,2454817
,2454829
,2454839
,2454846
,2454854
,2454862
,2454869
,2454878
,2454886
,2454895
,2454903
,2454914
,2454922
,2454930
,2454939
,2454949
,2454958
,2454966
,2454977
,2454986
,2454995
,2455005
,2455014
,2455024
,2455034
,2455043
,2455054
,2455062
,2455071
,2455083
,2455092
,2455103
,2455113
,2455125
,2455134
,2455145
,2455155
,2455168
,2455180
,2455195
,2455204
,2455216
,2455225
,2455236
,2455245
,2455254
,2455265
,2455275
,2455287
,2455298
,2455309
,2455321
,2455331
,2455343
,2455356
,2455366
,2455380
,2455397
,2455412
,2455427
,2455442
,2455458
,2455474
,2455490
,2455505
,2455523
,2455540
,2455558
,2455574
,2455589
,2455607
,2455622
,2455635
,2455651
,2455666
,2455683
,2455699
,2455715
,2455730
,2455748
,2455764
,2455779
,2455797
,2455811
,2455824
,2455837
,2455848
,2455861
,2455875
,2455888
,2455903
,2455917
,2455936
,2455947
,2455960
,2455974
,2455987
,2455988
,2455989
,2455996
,2456005
,2456014
,2456021
,2456030
,2456041
,2456049
,2456057
,2456066
,2456078
,2456087
,2456098
,2456108
,2456120
,2456131
,2456142
,2456154
,2456164
,2456176
,2456185
,2456196
,2456205
,2456216
,2456224
,2456233
,2456241
,2456251
,2456262
,2456272
,2456281
,2456294
,2456303
,2456311
,2456322
,2456330
,2456338
,2456349
,2456358
,2456368
,2456378
,2456388
,2456399
,2456408
,2456420
,2456430
,2456444
,2456456
,2456475
,2456492
,2456504
,2456517
,2456531
,2456542
,2456553
,2456563
,2456574
,2456590
,2456612.47407407
,2456646
,2456716
,2456800
,2456868
,2456906
,2456945
,2456988
,2457032
,2457066
,2457102
,2457172
,2457247
,2457323
,2457428
,2457513
,2457620
,2457723
,2457841
,2457994.75866898
,2458087.47295139
,2458302
,2458585.52575232
,2458605
,2458718.57912037
,2458758
,2458789
,2458839
,2458884
,2458910
,2458926
,2458941
,2458954.46887732
,2458967
,2458971
,2458971.61650463
,2458985
,2459002
,2459016
,2459032
,2459045.47545139
,2459063
,2459069
,2459088
,2459094
,2459100
,2459117
,2459124
,2459139
,2459155
,7277860
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_STRTDT', distcnt => 12469, density => .000518853709355657, nullcnt => 12743, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '7870070D010101';
srec.maxval := 'C7C70101010101';
srec.epc := 255;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,45
,46
,47
,48
,49
,50
,51
,52
,53
,54
,55
,56
,57
,58
,59
,60
,61
,62
,63
,64
,65
,66
,67
,68
,69
,70
,71
,72
,73
,74
,75
,76
,77
,78
,79
,80
,81
,82
,83
,84
,85
,86
,87
,88
,89
,90
,91
,92
,93
,94
,95
,96
,97
,98
,99
,100
,101
,102
,103
,104
,105
,106
,107
,108
,109
,110
,111
,112
,113
,114
,115
,116
,117
,118
,119
,120
,121
,122
,123
,124
,125
,126
,127
,128
,129
,130
,131
,132
,133
,134
,135
,136
,137
,138
,139
,140
,141
,142
,143
,144
,145
,146
,147
,148
,149
,150
,151
,152
,153
,154
,155
,156
,157
,158
,159
,160
,161
,162
,163
,164
,165
,166
,167
,168
,169
,170
,171
,172
,173
,174
,175
,176
,177
,178
,179
,180
,181
,182
,183
,184
,185
,186
,187
,188
,189
,190
,191
,192
,193
,194
,195
,196
,197
,198
,199
,200
,201
,202
,203
,204
,205
,206
,207
,208
,209
,210
,211
,212
,213
,214
,215
,216
,217
,218
,219
,220
,221
,222
,223
,224
,225
,226
,227
,228
,229
,230
,231
,232
,233
,234
,235
,236
,237
,238
,239
,240
,241
,242
,243
,244
,245
,246
,247
,248
,249
,250
,251
,252
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
2456122
,2456179
,2456193
,2456213
,2456262
,2456312
,2456332
,2456352
,2456362
,2456378
,2456383
,2456399
,2456418
,2456443
,2456464
,2456483
,2456500
,2456519
,2456538
,2456555
,2456570
,2456604
,2456664
,2456728
,2456786
,2456862
,2456899
,2456923
,2456948
,2456975
,2457000
,2457028
,2457045
,2457063
,2457079
,2457113
,2457137
,2457164
,2457182
,2457204
,2457225
,2457242
,2457268
,2457287
,2457308
,2457329
,2457361
,2457386
,2457403
,2457423
,2457438
,2457455
,2457479
,2457492
,2457507
,2457529
,2457550
,2457571
,2457589
,2457606
,2457623
,2457633
,2457644
,2457665
,2457686
,2457704
,2457723
,2457744
,2457787
,2457851
,2457899
,2457932
,2457982
,2458015
,2458043
,2458073
,2458109
,2458145
,2458194
,2458246
,2458302
,2458367
,2458416
,2458463
,2458529
,2458579
,2458617
,2458665
,2458704
,2458745
,2458766
,2458808
,2458848
,2458883
,2458911
,2458920.35534722
,2458921.57252315
,2458925.4483912
,2458926.61813657
,2458928.40674769
,2458929.49097222
,2458932.459375
,2458933.46773148
,2458934.64991898
,2458935.6840162
,2458939.67334491
,2458941.39421296
,2458941.62078704
,2458942.67210648
,2458947.51936343
,2458948.59206019
,2458949.49453704
,2458950.5681713
,2458953.61077546
,2458954.6419213
,2458956.3616088
,2458957.39278935
,2458960.4169213
,2458961.43210648
,2458962.41126157
,2458962.70304398
,2458963.67524306
,2458967.39777778
,2458968.38613426
,2458969.64590278
,2458970.7216088
,2458974.48740741
,2458976.45135417
,2458977.52065972
,2458978.6712037
,2458982.34840278
,2458983.37953704
,2458984.47340278
,2458985.53736111
,2458988.63516204
,2458989.64210648
,2458990.60303241
,2458991.58166667
,2458992.59962963
,2458996.71417824
,2458997.57893519
,2458998.4787963
,2458999.38506944
,2459002.35243056
,2459002.68474537
,2459003.59960648
,2459004.5808912
,2459005.59003472
,2459006.63774306
,2459009.51694444
,2459010.42211806
,2459010.99998843
,2459011.57920139
,2459012.46072917
,2459013.40125
,2459013.74846065
,2459016.7322338
,2459017.51847222
,2459018.34273148
,2459018.69479167
,2459019.51326389
,2459019.66634259
,2459020.57096065
,2459023.55626157
,2459024.43282407
,2459024.70616898
,2459025.58737269
,2459025.99998843
,2459026.57956019
,2459027.39099537
,2459030.64585648
,2459031.63541667
,2459032.66832176
,2459033.6512037
,2459037.68040509
,2459038.66363426
,2459039.65774306
,2459040.70670139
,2459041.44113426
,2459044.36284722
,2459045
,2459045.69902778
,2459047.39071759
,2459048.56832176
,2459051.63912037
,2459052.45508102
,2459053.61927083
,2459054.59579861
,2459055.99998843
,2459058.49216435
,2459058.64524306
,2459059.3462963
,2459059.50769676
,2459060.62615741
,2459061.43274306
,2459062.64956019
,2459065.64875
,2459067.33457176
,2459068.47152778
,2459069.99998843
,2459073.35650463
,2459074.62385417
,2459075.99998843
,2459079.47627315
,2459080.43126157
,2459081.36726852
,2459082.57532407
,2459083.3758912
,2459086.37337963
,2459087.37265046
,2459088.62887732
,2459089.99998843
,2459093.49377315
,2459094.43133102
,2459094.99998843
,2459096.45708333
,2459097.70601852
,2459102
,2459102.99998843
,2459104.43194444
,2459107.45101852
,2459108.58380787
,2459109.65621528
,2459111.4121412
,2459114.58403935
,2459115.4262963
,2459115.68959491
,2459116.58201389
,2459117.99998843
,2459121.39137732
,2459121.99998843
,2459122.99998843
,2459124.41570602
,2459124.57607639
,2459125.57388889
,2459128.59082176
,2459129.57832176
,2459130.70903935
,2459132.35180556
,2459135.48972222
,2459136.53335648
,2459137.61373843
,2459138.61106482
,2459139.52170139
,2459142.47017361
,2459142.99998843
,2459143.65168982
,2459145.48105324
,2459149.35641204
,2459149.99998843
,2459150.57710648
,2459151.4622338
,2459152.46862269
,2459153.59371528
,5373120
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_END_DT', distcnt => 12036, density => .000190150161260764, nullcnt => 378681, avgclen => 2, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_RSLVDT', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 1, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_RSTNCMMT', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '80';
srec.maxval := 'C102';
srec.epc := 2;
srec.bkvals := DBMS_STATS.NUMARRAY(
140661
,198641
);
srec.novals := DBMS_STATS.NUMARRAY(
0
,1
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_IS_PMRYDGIS', distcnt => 2, density => .00000251710371977588, nullcnt => 198777, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_IS_REQ_AND_PERFPROVSAME', distcnt => 1, density => 1, nullcnt => 397380, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_IS_SLTD', distcnt => 1, density => 1, nullcnt => 397380, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '80';
srec.maxval := 'C102';
srec.epc := 2;
srec.bkvals := DBMS_STATS.NUMARRAY(
184723
,185207
);
srec.novals := DBMS_STATS.NUMARRAY(
0
,1
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_IS_ERR', distcnt => 2, density => .00000269968197746305, nullcnt => 212211, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('Allen, Joyce','lwilliamson, s');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_SRC_USR_NAM', distcnt => 95, density => .0105263157894737, nullcnt => 153469, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('Acute Diagnosis only','wrong diagnosis
');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_ERR_TXT', distcnt => 68, density => .0147058823529412, nullcnt => 397206, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('100000:ng:2','99999:ng:2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_WKFWISTCID', distcnt => 250726, density => .00000398841763518742, nullcnt => 146692, avgclen => 8, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_CNV_ID', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_OWNRCHNDFLAG', distcnt => 1, density => 1, nullcnt => 307244, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_OWNRCHNDCNT', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('4','7');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_SRC__SRC_TYP', distcnt => 3, density => .333333333333333, nullcnt => 152435, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10487878');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_ID', distcnt => 349357, density => .00000286240149760846, nullcnt => 48061, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10397677','10397682');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CBDG_ID', distcnt => 5, density => .2, nullcnt => 397413, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10276257','10346324');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'UMAD_ID', distcnt => 488, density => .00204918032786885, nullcnt => 396930, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10338308','10487878');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CMDI_ID', distcnt => 111132, density => .00000899830831803621, nullcnt => 286286, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10480651');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'UMDS_ID', distcnt => 253932, density => .00000393806215837311, nullcnt => 143486, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_RFNGWKFWTSK', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_PRVSRFNGTSK', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_PRVSRFNGTSK_PRMN', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_OWNR', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_PRVSOWNR', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_PRVSSNDR', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_PRVSOWNRPRMN', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_TNFR', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_PRVSTNFR', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B';
srec.maxval := 'C40B010747';
srec.epc := 30;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,2
,9
,86
,89
,94
,98
,112
,114
,116
,199
,200
,201
,217
,261
,309
,322
,325
,340
,350
,363
,366
,523
,526
,529
,654
,671
,686
,693
,1029
);
srec.novals := DBMS_STATS.NUMARRAY(
10000000
,10000001
,10000002
,10000006
,10000008
,10000024
,10000025
,10000026
,10000027
,10000169
,10000170
,10000280
,10000299
,10000300
,10000301
,10000304
,10000309
,10000310
,10000340
,10000341
,10000342
,10000343
,10000347
,10000433
,10000437
,10000469
,10000607
,10000629
,10000633
,10000670
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_SRC__ASMTCARECALC', distcnt => 30, density => .000485908649173955, nullcnt => 396389, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_SRC__PAT_ID_QRY', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000042','10425727');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CMDI_CM_BASE', distcnt => 44727, density => .0000223578599056498, nullcnt => 345396, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFDS_CM_TMPT', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000128','10013683');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFDS_THE_BRNCACT', distcnt => 1244, density => .000803858520900322, nullcnt => 396174, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C30B';
srec.maxval := 'C40B0A2B57';
srec.epc := 169;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,10
,11
,12
,13
,14
,15
,16
,17
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,45
,46
,47
,48
,49
,50
,51
,52
,53
,55
,56
,57
,58
,59
,60
,61
,62
,63
,64
,65
,66
,67
,68
,69
,70
,71
,72
,80
,82
,83
,84
,85
,87
,89
,90
,91
,92
,93
,94
,95
,96
,97
,98
,99
,100
,101
,102
,103
,104
,105
,106
,108
,109
,110
,111
,112
,113
,114
,115
,116
,117
,118
,119
,120
,121
,122
,123
,124
,125
,126
,127
,128
,129
,130
,131
,132
,135
,136
,137
,138
,139
,140
,141
,142
,143
,145
,146
,147
,148
,169
,170
,171
,172
,173
,174
,175
,176
,177
,178
,179
,180
,181
,182
,183
,184
,185
,186
,187
,188
,189
,190
,191
,192
,193
,194
,195
,196
,197
,198
,202
,203
,247
,249
,252
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
100000
,100835
,101221
,101258
,101741
,101914
,102268
,102446
,102631
,102656
,102663
,102747
,102889
,102902
,102983
,103036
,103153
,103154
,103269
,103343
,103514
,103578
,103594
,103598
,103676
,103707
,103863
,103926
,103995
,104073
,104453
,104608
,104958
,105179
,105245
,105270
,105271
,105311
,105314
,105361
,105415
,105447
,105521
,105531
,105607
,105709
,105728
,105744
,105746
,105761
,105852
,105956
,106013
,106014
,106275
,106338
,106409
,106411
,106523
,106636
,106676
,106758
,106828
,106844
,106898
,106946
,107016
,107464
,107576
,107592
,107807
,108215
,108298
,108629
,108651
,108860
,108865
,108891
,108939
,108954
,108975
,108979
,109093
,109114
,109134
,109197
,109367
,109395
,109449
,109623
,109736
,109829
,109949
,110008
,110011
,110013
,110014
,110044
,110089
,110205
,110751
,110873
,112050
,112083
,112089
,112336
,112788
,112838
,113110
,113391
,113396
,113408
,113420
,113455
,113677
,113685
,113694
,113719
,113727
,113733
,113743
,113763
,114019
,114021
,114024
,114081
,114338
,114462
,114651
,114715
,114820
,115196
,115564
,115579
,115802
,116101
,116257
,116303
,10001123
,10001268
,10001296
,10001335
,10001359
,10001362
,10001374
,10001393
,10001427
,10001439
,10001537
,10001616
,10001620
,10001662
,10001692
,10001715
,10001745
,10001827
,10006003
,10012127
,10019518
,10093003
,10093028
,10093540
,10094239
,10094252
,10094265
,10094266
,10094276
,10094277
,10094286
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_DGIS', distcnt => 10340, density => .00101224334291836, nullcnt => 448, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFDS_SENTASMT', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B01051C';
srec.maxval := 'C40B595220';
srec.epc := 249;
srec.bkvals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,46
,47
,48
,49
,50
,51
,53
,54
,55
,57
,58
,59
,60
,61
,62
,64
,65
,66
,67
,68
,69
,70
,71
,72
,73
,74
,75
,76
,77
,78
,79
,80
,81
,82
,83
,84
,86
,87
,88
,89
,90
,91
,92
,93
,94
,95
,96
,97
,98
,99
,100
,101
,102
,103
,104
,105
,106
,107
,108
,109
,110
,111
,112
,113
,114
,115
,116
,117
,118
,119
,120
,121
,122
,123
,124
,125
,126
,127
,128
,129
,130
,131
,132
,133
,134
,135
,136
,137
,138
,139
,140
,141
,142
,143
,144
,145
,146
,147
,148
,149
,150
,151
,152
,153
,154
,155
,156
,157
,158
,159
,160
,161
,162
,163
,164
,165
,166
,167
,168
,169
,170
,171
,172
,173
,174
,175
,176
,177
,178
,179
,180
,181
,182
,183
,184
,185
,186
,187
,188
,189
,190
,191
,192
,193
,194
,195
,196
,197
,198
,199
,200
,201
,202
,203
,204
,205
,206
,207
,208
,209
,210
,211
,212
,213
,214
,215
,216
,217
,218
,219
,220
,221
,222
,223
,224
,225
,226
,227
,228
,229
,230
,231
,233
,234
,235
,236
,237
,238
,239
,240
,241
,242
,243
,244
,245
,246
,247
,248
,249
,250
,251
,252
,253
,254
);
srec.novals := DBMS_STATS.NUMARRAY(
10000427
,10000663
,10001068
,10002816
,10003305
,10005004
,10007824
,10008947
,10010282
,10010585
,10012477
,10013764
,10016494
,10017820
,10020350
,10022227
,10022743
,10023184
,10024409
,10026364
,10031220
,10034601
,10039264
,10048976
,10054633
,10078309
,10087634
,10115509
,10139214
,10148696
,10152617
,10154084
,10162474
,10168088
,10173148
,10179841
,10217455
,10245700
,10274495
,10279401
,10285984
,10303033
,10303690
,10309826
,10314153
,10315636
,10319763
,10326802
,10330929
,10337103
,10353698
,10353820
,10354785
,10357041
,10358765
,10359921
,10362825
,10365183
,10365867
,10368172
,10375053
,10412851
,10460496
,10461250
,10461360
,10461519
,10463603
,10466163
,10466342
,10469419
,10477529
,10479008
,10481442
,10482668
,10483376
,10488027
,10489984
,10491107
,10492271
,10499687
,10502431
,10504505
,10506256
,10508176
,10508980
,10509762
,10510039
,10514243
,10515686
,10517623
,10517841
,10519912
,10519993
,10520024
,10524074
,10524570
,10525052
,10526278
,10526406
,10527236
,10527403
,10527638
,10527757
,10528487
,10528837
,10530342
,10531629
,10531913
,10538057
,10539995
,10542890
,10543203
,10544575
,10547402
,10547560
,10549657
,10552257
,10557602
,10558108
,10560470
,10562190
,10568014
,10568302
,10572103
,10577062
,10582840
,10587487
,10591116
,10593578
,10598668
,10603793
,10609985
,10621797
,10623131
,10624909
,10627831
,10629899
,10638113
,10642091
,10643713
,10646483
,10647768
,10648871
,10649810
,10650793
,10652208
,10652832
,10654028
,10655401
,10658709
,10660835
,10663490
,10664886
,10665610
,10667637
,10668788
,10672866
,10676241
,10677502
,10678744
,10680003
,10683376
,10686950
,10688865
,10690794
,10692119
,10694369
,10696377
,10698425
,10704170
,10705959
,10708414
,10709904
,10710790
,10713970
,10715058
,10716374
,10717414
,10719409
,10719680
,10722662
,10724806
,10728550
,10733245
,10735511
,10737266
,10738707
,10741577
,10742720
,10743753
,10746436
,10749946
,10750665
,10752199
,10754635
,10757904
,10761129
,10764857
,10766214
,10768058
,10769506
,10771829
,10773855
,10776868
,10778529
,10780883
,10782149
,10787580
,10790398
,10793594
,10795081
,10797982
,10800448
,10803959
,10806318
,10810927
,10813280
,10815981
,10817594
,10820290
,10822331
,10825111
,10828054
,10829742
,10834313
,10836561
,10838331
,10839863
,10841399
,10843343
,10845397
,10847764
,10849988
,10852968
,10855383
,10856769
,10859252
,10860881
,10861954
,10865085
,10867854
,10869136
,10869788
,10873147
,10875655
,10880049
,10883125
,10886817
,10888131
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_CAUDBY', distcnt => 875, density => .00137056959693464, nullcnt => 396393, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_TAKNASMTCC', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000003','11987407');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_MEMB', distcnt => 156987, density => .0000063699542000293, nullcnt => 66764, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('17453002','20485073');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CBDG_MDCLCLM', distcnt => 5, density => .2, nullcnt => 397413, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B01255B';
srec.maxval := 'C40B234449';
srec.epc := 154;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,3
,5
,6
,7
,8
,13
,14
,16
,17
,18
,20
,23
,26
,27
,28
,31
,32
,40
,41
,43
,44
,45
,48
,52
,53
,55
,58
,59
,61
,63
,64
,65
,68
,69
,70
,71
,72
,74
,76
,77
,79
,80
,81
,82
,91
,92
,95
,96
,97
,98
,99
,100
,103
,104
,107
,109
,111
,112
,115
,116
,118
,119
,121
,123
,124
,125
,126
,128
,129
,130
,131
,132
,135
,136
,142
,143
,144
,146
,147
,148
,149
,153
,156
,157
,159
,160
,162
,164
,167
,169
,170
,174
,175
,176
,177
,179
,181
,187
,188
,190
,191
,192
,193
,194
,195
,196
,197
,199
,200
,201
,204
,205
,206
,207
,208
,210
,215
,217
,218
,219
,220
,223
,226
,230
,231
,233
,235
,236
,238
,247
,248
,249
,250
,251
,252
,253
,254
,255
,256
,257
,258
,259
,260
,261
,264
,265
,266
,268
,269
,272
,273
,275
,276
);
srec.novals := DBMS_STATS.NUMARRAY(
10003690
,10121796
,10128055
,10128361
,10129233
,10129782
,10131158
,10134962
,10136447
,10136689
,10136985
,10137006
,10137823
,10138083
,10138519
,10139163
,10140011
,10140437
,10141217
,10142673
,10143526
,10143837
,10279997
,10280100
,10293856
,10293899
,10293934
,10296266
,10296553
,10299485
,10299862
,10300112
,10300321
,10301239
,10301436
,10301473
,10301666
,10301742
,10301905
,10303053
,10303216
,10303226
,10303418
,10304001
,10304184
,10305102
,10305587
,10305599
,10305601
,10305638
,10305790
,10305990
,10306057
,10306450
,10306488
,10306524
,10306612
,10306677
,10306832
,10306919
,10307115
,10307188
,10307328
,10307509
,10307991
,10308039
,10308159
,10308178
,10308311
,10308385
,10308568
,10308752
,10308893
,10309429
,10309633
,10309903
,10309919
,10310546
,10310561
,10310646
,10310829
,10311036
,10311058
,10311254
,10311458
,10311522
,10311534
,10311635
,10311917
,10312019
,10312173
,10312227
,10312749
,10312814
,10312836
,10312851
,10312937
,10313127
,10313155
,10313322
,10313354
,10313399
,10313970
,10314284
,10314353
,10318338
,10318384
,10318661
,10325209
,10325344
,10325575
,10325958
,10325972
,10326679
,10327091
,10327156
,10328568
,10330275
,10331035
,10331949
,10333056
,10333063
,10333680
,10334333
,10335486
,10335729
,10335899
,10338260
,10338276
,10338485
,10338495
,10339029
,10339190
,10339568
,10339695
,10339860
,10340471
,10341041
,10341049
,10341086
,10341332
,10341392
,10341680
,10342027
,10342264
,10342546
,10342703
,10343522
,10343733
,10343999
,10344609
,10345798
,10346327
,10346772
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'UMAD_UMBS', distcnt => 154, density => .00181159420289855, nullcnt => 397142, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFDS_AMTN', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000661','12300570');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MBDB_CSTMFLDS', distcnt => 287629, density => .00000347670088899242, nullcnt => 109789, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10356920');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'UMDS_DGISUM_EVNT', distcnt => 250690, density => .00000398899038653317, nullcnt => 143486, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'UMDS_SNP', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MDSS_GRP', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('(L) Saphenous DVT, Acute Saddle Pulmonary Embolism w/ Acute cor ','will provide mbr with additional resources for psychosocial need');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_DSCRP', distcnt => 4069, density => .000245760629147211, nullcnt => 392327, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('AAPCA Case Management program participation','Tobacco cessation');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_NAME', distcnt => 437, density => .0022883295194508, nullcnt => 379600, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_CLSRRSN', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C3080134';
srec.maxval := 'C3080137';
srec.epc := 4;
srec.bkvals := DBMS_STATS.NUMARRAY(
5731
,9107
,10618
,17818
);
srec.novals := DBMS_STATS.NUMARRAY(
70051
,70052
,70053
,70054
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_STATUS', distcnt => 4, density => .0000280615108317432, nullcnt => 379600, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C3080216';
srec.maxval := 'C3080216';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
9726
);
srec.novals := DBMS_STATS.NUMARRAY(
70121
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_SRC', distcnt => 1, density => .0000514085955171705, nullcnt => 387692, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10000673');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_SRC_ID', distcnt => 63, density => .0158730158730159, nullcnt => 387692, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('"Stay as healthy as possible."','wants referral to Magellan d/t her inability to cope with mother');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_COMMENT', distcnt => 3262, density => .000306560392397302, nullcnt => 393675, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'MPDS_PRBLM_GNRTD_FRM_SRC_ID', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10013699');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFPRBLMDS_THE_BRNCACT', distcnt => 8994, density => .000111185234600845, nullcnt => 386097, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10353676','10359356');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFPRBLMDS_ID', distcnt => 249, density => .00401606425702811, nullcnt => 397169, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFPRBLMDS_SENTASMT', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','10888170');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'PRBLM_CAUDBY', distcnt => 9011, density => .000110975474420153, nullcnt => 387826, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'PRBLM_TAKNASMTCC', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_MEMBDGISBASE', colname => 'CFPRBLMDS_AMTN', distcnt => 0, density => 0, nullcnt => 397418, avgclen => 0, srec => srec);
COMMIT;
END;
/
------------ Table: T_QTN--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_QTN', numrows => 7593, numblks => 380 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_C4C_ID_DS', numrows => 5661, numlblks => 20, numdist => 5661, clstfct => 509, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_QTN_TXT_DS', numrows => 7272, numlblks => 136, numdist => 3354, clstfct => 6826, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_C4C_ID_RS', numrows => 5661, numlblks => 24, numdist => 5661, clstfct => 5653, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_QTN_TXT_RS', numrows => 7272, numlblks => 142, numdist => 3354, clstfct => 6806, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_CAREBEANFRMA', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_UNIVID', numrows => 5661, numlblks => 50, numdist => 5661, clstfct => 5607, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_VSBT', numrows => 7593, numlblks => 22, numdist => 2, clstfct => 356, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_CRTD', numrows => 7593, numlblks => 30, numdist => 629, clstfct => 667, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_REP_FRMA', numrows => 6, numlblks => 1, numdist => 6, clstfct => 5, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_C4C_ID', numrows => 5661, numlblks => 20, numdist => 5661, clstfct => 509, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_QTN_TXT', numrows => 7272, numlblks => 133, numdist => 3359, clstfct => 6835, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_ORIG', numrows => 533, numlblks => 2, numdist => 68, clstfct => 507, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_ALM_FRMA', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_DGESFRMA', numrows => 136, numlblks => 1, numdist => 136, clstfct => 92, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_WGHTFRMA', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_TYP_SBTY', numrows => 632, numlblks => 2, numdist => 21, clstfct => 305, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_SCLB', numrows => 8, numlblks => 1, numdist => 8, clstfct => 4, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_CLASSTYPE', numrows => 7593, numlblks => 30, numdist => 1, clstfct => 259, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_TSK_FRMA', numrows => 521, numlblks => 2, numdist => 521, clstfct => 240, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_STTSFMLS', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_SKIPFRMA', numrows => 786, numlblks => 3, numdist => 786, clstfct => 278, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_OBJ_STT', numrows => 7593, numlblks => 21, numdist => 2, clstfct => 267, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_QTN', numrows => 7593, numlblks => 18, numdist => 7593, clstfct => 624, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_ASMTCC', numrows => 7480, numlblks => 22, numdist => 185, clstfct => 506, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_QTN_QTN_FRMA', numrows => 35, numlblks => 1, numdist => 35, clstfct => 27, indlevel => 0);
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('094-10000000','094-10005811');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'SYS_NC00045$', distcnt => 5661, density => .000176647235470765, nullcnt => 1932, avgclen => 10, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY(' 2 OF 37. DOCUMENT LANGUAGE SPOKEN AND ANY COMMUNICATION NEEDS, ','?UTILIZA APARATOS PARA AYUDAR A QUE VEA O OIGA?');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'SYS_NC00046$', distcnt => 3354, density => .000298151460942159, nullcnt => 321, avgclen => 79, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('00000001-490','99940001-490');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'SYS_NC00047$', distcnt => 5661, density => .000176647235470765, nullcnt => 1932, avgclen => 10, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('		
 :NWONK ERA ECNEREFMUCRIC TSIAW RO/DNA IMB ,THGIEW ,THGIEH R','  :TNEMSSESSA FO NOITAUNITNOC HTIW TNEMEERGA NI REVIGERAC/TNERAP');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'SYS_NC00048$', distcnt => 3354, density => .000298151460942159, nullcnt => 321, avgclen => 79, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '5175657374696F6E';
srec.maxval := '5175657374696F6E';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
7593
);
srec.novals := DBMS_STATS.NUMARRAY(
422957125240872000000000000000000000
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'CLASSTYPE', distcnt => 1, density => .0000658501251152377, nullcnt => 0, avgclen => 9, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('094-10000000','094-10005811');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_C4C_ID', distcnt => 5661, density => .000176647235470765, nullcnt => 1932, avgclen => 10, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2011-12-20/15:09:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-14/14:27:12','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_CRTD', distcnt => 629, density => .00158982511923688, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_LAS_ACT', distcnt => 2, density => .5, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_LAS_ACT_ACTRTYP', distcnt => 0, density => 0, nullcnt => 7593, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-08-29/11:25:07','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-19/07:23:39','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_LAS_ACT_TIM', distcnt => 424, density => .00235849056603774, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_OBJ_STT', distcnt => 2, density => .5, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','12');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_VERS', distcnt => 13, density => .0769230769230769, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1001','1002');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_VSBT', distcnt => 2, density => .5, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2014-02-20/17:18:45','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2014-06-03/14:40:22','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_DLTDDT', distcnt => 4, density => .25, nullcnt => 7587, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11190843');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_LAS_ACT_BY', distcnt => 9, density => .111111111111111, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C14092C';
srec.epc := 6;
srec.bkvals := DBMS_STATS.NUMARRAY(
4439
,6288
,6670
,6738
,7068
,7593
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000020
,10543624
,10550673
,10700843
,11190843
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_ORIGCRTR', distcnt => 6, density => .0000658501251152377, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11190843');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_LAS_ACT_BY_LOGDIN', distcnt => 7, density => .142857142857143, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('000b199e-0c23-44fe-b583-d6db04e8c84c','fffd9d35-8263-4066-a2e7-28c4cc551364');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_UNIVID', distcnt => 5661, density => .000176647235470765, nullcnt => 1932, avgclen => 28, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY(' 2 of 37. Document language spoken and any communication needs, ','?Utiliza aparatos para ayudar a que vea o oiga?');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_QTN_TXT', distcnt => 3359, density => .000297707651086633, nullcnt => 321, avgclen => 79, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('MULTI_CHOICE_MULTIPLE','MULTI_CHOICE_SINGLE');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_RSPEFRMT', distcnt => 2, density => .5, nullcnt => 5510, avgclen => 7, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_MULTMUSTSEL', distcnt => 1, density => 1, nullcnt => 5340, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','30');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_MULTMX_SLTD', distcnt => 27, density => .037037037037037, nullcnt => 5244, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','99');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_ORD', distcnt => 100, density => .01, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_PRMT', distcnt => 1, density => 1, nullcnt => 6, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('##/##/####','Vaccinations: Pregnancy [v2.0]');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_TXT_FRMT', distcnt => 247, density => .00404858299595142, nullcnt => 5863, avgclen => 8, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_VAL_FRMT', distcnt => 0, density => 0, nullcnt => 7593, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C103';
srec.maxval := 'C10C';
srec.epc := 10;
srec.bkvals := DBMS_STATS.NUMARRAY(
10
,2675
,4143
,4151
,4163
,5189
,5211
,6951
,7272
,7593
);
srec.novals := DBMS_STATS.NUMARRAY(
2
,3
,4
,5
,6
,7
,8
,9
,10
,11
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_RSPETYP', distcnt => 10, density => .0000658501251152377, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '80';
srec.maxval := 'C102';
srec.epc := 2;
srec.bkvals := DBMS_STATS.NUMARRAY(
4611
,4710
);
srec.novals := DBMS_STATS.NUMARRAY(
0
,1
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_IN_POOL', distcnt => 2, density => .000106157112526539, nullcnt => 2883, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C10B';
srec.maxval := 'C229';
srec.epc := 10;
srec.bkvals := DBMS_STATS.NUMARRAY(
64
,97
,111
,114
,131
,137
,140
,141
,7530
,7562
);
srec.novals := DBMS_STATS.NUMARRAY(
10
,50
,100
,150
,200
,500
,1000
,3998
,3999
,4000
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_OTXTLMIT', distcnt => 10, density => .0000661200740544829, nullcnt => 31, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_CHCEAS_LIST', distcnt => 1, density => 1, nullcnt => 2457, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_WGHT', distcnt => 2, density => .5, nullcnt => 6, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_MNTY', distcnt => 2, density => .5, nullcnt => 6, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000001','10007943');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_ID', distcnt => 7593, density => .000131700250230475, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B02033D';
srec.maxval := 'C40B021C57';
srec.epc := 21;
srec.bkvals := DBMS_STATS.NUMARRAY(
62
,176
,180
,250
,255
,261
,262
,352
,415
,445
,472
,545
,596
,603
,605
,607
,620
,622
,628
,629
,632
);
srec.novals := DBMS_STATS.NUMARRAY(
10010260
,10010261
,10010266
,10010267
,10010288
,10010289
,10010322
,10010375
,10010376
,10010383
,10010385
,10010414
,10010427
,10012731
,10012732
,10012737
,10012745
,10012751
,10012769
,10012770
,10012786
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_TYP_SBTY', distcnt => 21, density => .000791139240506329, nullcnt => 6961, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_STTSFMLS', distcnt => 0, density => 0, nullcnt => 7593, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10003592');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_SKIPFRMA', distcnt => 786, density => .00127226463104326, nullcnt => 6807, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000111','10000435');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_REP_FRMA', distcnt => 6, density => .166666666666667, nullcnt => 7587, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10000007');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_SCLB', distcnt => 8, density => .125, nullcnt => 7585, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B012713';
srec.maxval := 'C40B014635';
srec.epc := 68;
srec.bkvals := DBMS_STATS.NUMARRAY(
26
,40
,66
,84
,101
,122
,164
,180
,192
,204
,233
,259
,261
,283
,299
,314
,329
,352
,361
,366
,369
,393
,397
,399
,401
,403
,405
,407
,409
,411
,420
,429
,438
,447
,456
,457
,459
,460
,463
,466
,467
,471
,475
,478
,481
,483
,489
,491
,492
,494
,496
,498
,500
,502
,508
,511
,513
,514
,515
,517
,520
,522
,525
,527
,528
,530
,532
,533
);
srec.novals := DBMS_STATS.NUMARRAY(
10003818
,10003819
,10003821
,10003822
,10003874
,10003875
,10003876
,10003879
,10003882
,10003883
,10003884
,10003885
,10003886
,10003887
,10003888
,10003889
,10003890
,10003891
,10003892
,10003893
,10003896
,10003897
,10003898
,10005673
,10005674
,10005675
,10005676
,10005677
,10005678
,10005679
,10005680
,10005681
,10005682
,10005683
,10005684
,10006112
,10006113
,10006114
,10006116
,10006119
,10006121
,10006122
,10006134
,10006135
,10006136
,10006138
,10006139
,10006141
,10006143
,10006144
,10006146
,10006147
,10006148
,10006149
,10006150
,10006153
,10006156
,10006169
,10006170
,10006172
,10006173
,10006175
,10006178
,10006180
,10006181
,10006184
,10006398
,10006952
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_ORIG', distcnt => 68, density => .000938086303939962, nullcnt => 7060, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10001131','10003515');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_QTN_FRMA', distcnt => 35, density => .0285714285714286, nullcnt => 7558, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000032','10003593');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_TSK_FRMA', distcnt => 521, density => .0019193857965451, nullcnt => 7072, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B';
srec.maxval := 'C40B01080B';
srec.epc := 185;
srec.bkvals := DBMS_STATS.NUMARRAY(
43
,78
,123
,138
,159
,175
,226
,239
,279
,316
,328
,396
,410
,417
,427
,495
,563
,597
,650
,706
,720
,734
,761
,779
,818
,861
,901
,951
,1019
,1030
,1107
,1127
,1145
,1175
,1255
,1332
,1422
,1512
,1602
,1692
,1782
,1872
,1962
,2052
,2139
,2226
,2312
,2398
,2468
,2538
,2571
,2604
,2637
,2670
,2703
,2736
,2742
,2748
,2767
,2786
,2805
,2824
,2839
,2858
,2877
,2913
,2925
,2969
,2978
,3007
,3028
,3042
,3079
,3093
,3103
,3130
,3142
,3173
,3181
,3194
,3226
,3249
,3282
,3295
,3325
,3355
,3396
,3435
,3455
,3496
,3523
,3545
,3561
,3589
,3623
,3665
,3679
,3691
,3705
,3716
,3722
,3730
,3744
,3754
,3764
,3810
,3870
,3929
,3988
,4015
,4050
,4104
,4148
,4196
,4235
,4289
,4325
,4353
,4445
,4537
,4625
,4720
,4815
,4910
,4967
,5017
,5067
,5122
,5163
,5216
,5267
,5315
,5359
,5411
,5426
,5460
,5501
,5522
,5610
,5637
,5664
,5691
,5746
,5800
,5842
,5885
,5937
,6004
,6071
,6096
,6121
,6148
,6171
,6186
,6202
,6254
,6329
,6338
,6348
,6408
,6468
,6522
,6567
,6617
,6638
,6659
,6675
,6697
,6796
,6831
,6861
,6960
,6990
,7017
,7044
,7071
,7143
,7178
,7216
,7240
,7268
,7317
,7367
,7430
,7480
);
srec.novals := DBMS_STATS.NUMARRAY(
10000000
,10000001
,10000002
,10000003
,10000004
,10000005
,10000006
,10000007
,10000008
,10000009
,10000010
,10000011
,10000012
,10000013
,10000014
,10000015
,10000016
,10000017
,10000018
,10000019
,10000020
,10000021
,10000022
,10000023
,10000024
,10000025
,10000026
,10000027
,10000040
,10000060
,10000080
,10000081
,10000082
,10000083
,10000084
,10000100
,10000120
,10000121
,10000140
,10000160
,10000161
,10000162
,10000163
,10000164
,10000165
,10000166
,10000167
,10000168
,10000169
,10000170
,10000180
,10000181
,10000182
,10000183
,10000184
,10000185
,10000200
,10000201
,10000220
,10000221
,10000222
,10000240
,10000241
,10000260
,10000261
,10000280
,10000281
,10000282
,10000283
,10000284
,10000285
,10000286
,10000287
,10000288
,10000289
,10000290
,10000291
,10000292
,10000293
,10000294
,10000295
,10000296
,10000297
,10000298
,10000299
,10000300
,10000301
,10000302
,10000303
,10000304
,10000305
,10000306
,10000307
,10000308
,10000309
,10000310
,10000311
,10000331
,10000332
,10000333
,10000334
,10000335
,10000336
,10000337
,10000338
,10000339
,10000340
,10000341
,10000342
,10000343
,10000344
,10000345
,10000346
,10000347
,10000348
,10000349
,10000350
,10000351
,10000371
,10000372
,10000373
,10000391
,10000411
,10000431
,10000432
,10000433
,10000434
,10000435
,10000436
,10000437
,10000438
,10000439
,10000440
,10000441
,10000442
,10000443
,10000444
,10000445
,10000446
,10000466
,10000467
,10000468
,10000469
,10000486
,10000487
,10000507
,10000527
,10000547
,10000548
,10000567
,10000568
,10000569
,10000587
,10000588
,10000589
,10000590
,10000607
,10000627
,10000628
,10000629
,10000630
,10000631
,10000632
,10000633
,10000634
,10000635
,10000636
,10000637
,10000647
,10000648
,10000649
,10000650
,10000651
,10000652
,10000653
,10000669
,10000670
,10000671
,10000672
,10000673
,10000689
,10000690
,10000691
,10000709
,10000710
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_ASMTCC', distcnt => 185, density => .0000668449197860962, nullcnt => 113, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_ALM_FRMA', distcnt => 0, density => 0, nullcnt => 7593, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000035','10003498');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_DGESFRMA', distcnt => 136, density => .00735294117647059, nullcnt => 7457, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_CAREBEANFRMA', distcnt => 0, density => 0, nullcnt => 7593, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_WGHTFRMA', distcnt => 0, density => 0, nullcnt => 7593, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000005','10003514');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_QTN', colname => 'QTN_PRBLMFRMA', distcnt => 1823, density => .000548546352166758, nullcnt => 5770, avgclen => 3, srec => srec);
COMMIT;
END;
/
------------ Table: T_REP--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_REP', numrows => 34, numblks => 5 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPT_OBJ_STT', numrows => 34, numlblks => 1, numdist => 1, clstfct => 2, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPT_CLASSTYPE', numrows => 34, numlblks => 1, numdist => 1, clstfct => 2, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPT_CAUDBY', numrows => 1, numlblks => 1, numdist => 1, clstfct => 1, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPT_THE_BRNCACT', numrows => 33, numlblks => 1, numdist => 33, clstfct => 4, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPT_CRTD', numrows => 34, numlblks => 1, numdist => 12, clstfct => 6, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPT_UNIVID', numrows => 33, numlblks => 1, numdist => 33, clstfct => 13, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPT_TAKNASMTCC', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_REP', numrows => 34, numlblks => 1, numdist => 34, clstfct => 5, indlevel => 0);
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('<html>
  <head>

  </head>
  <body>
    <p style="margin-to','<html>
  <head>
    
  </head>
  <body>
    <p style="margi');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_TXT', distcnt => 19, density => .0526315789473684, nullcnt => 0, avgclen => 165, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10000040');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_ID', distcnt => 34, density => .0294117647058824, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_TAKNASMTCC', distcnt => 0, density => 0, nullcnt => 34, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10019708','10019708');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_CAUDBY', distcnt => 1, density => 1, nullcnt => 33, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000262','10003031');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_THE_BRNCACT', distcnt => 33, density => .0303030303030303, nullcnt => 1, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('Report','Report');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'CLASSTYPE', distcnt => 1, density => 1, nullcnt => 0, avgclen => 7, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_C4C_ID', distcnt => 0, density => 0, nullcnt => 34, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2010-08-16/17:12:27','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2013-03-14/10:17:33','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_CRTD', distcnt => 12, density => .0833333333333333, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_LAS_ACT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_LAS_ACT_ACTRTYP', distcnt => 0, density => 0, nullcnt => 34, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-08-30/10:11:55','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2013-11-11/10:56:59','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_LAS_ACT_TIM', distcnt => 10, density => .1, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_OBJ_STT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_VERS', distcnt => 1, density => 1, nullcnt => 0, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C20B02';
srec.maxval := 'C20B02';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
34
);
srec.novals := DBMS_STATS.NUMARRAY(
1001
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_VSBT', distcnt => 1, density => .0147058823529412, nullcnt => 0, avgclen => 4, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_DLTDDT', distcnt => 0, density => 0, nullcnt => 34, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_LAS_ACT_BY', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_ORIGCRTR', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_LAS_ACT_BY_LOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('135c53e5-fad4-4c6b-8132-ec0e1edb0619','ef7c4d88-69c0-4de1-9fcf-3b4daf754c68');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_UNIVID', distcnt => 33, density => .0303030303030303, nullcnt => 1, avgclen => 36, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('2','3');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_REP', colname => 'RPT_CAT', distcnt => 2, density => .5, nullcnt => 5, avgclen => 3, srec => srec);
COMMIT;
END;
/
------------ Table: T_RSPE--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_RSPE', numrows => 804073, numblks => 14773 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RESP_CLASSTYPE', numrows => 804073, numlblks => 2718, numdist => 1, clstfct => 15193, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RESP_UNIVID', numrows => 461343, numlblks => 3988, numdist => 460448, clstfct => 461292, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RESP_OBJ_STT', numrows => 804073, numlblks => 1860, numdist => 1, clstfct => 14722, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RESP_TAKNASMTCC', numrows => 804073, numlblks => 2505, numdist => 28878, clstfct => 120803, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RESP_CRTD', numrows => 804073, numlblks => 2115, numdist => 611264, clstfct => 282962, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_RSPE', numrows => 804073, numlblks => 1780, numdist => 804073, clstfct => 278862, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_RSPE_QTN_SENTASSM', numrows => 804073, numlblks => 3473, numdist => 804073, clstfct => 762416, indlevel => 2);
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('Response','Response');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'CLASSTYPE', distcnt => 1, density => 1, nullcnt => 0, avgclen => 9, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_C4C_ID', distcnt => 0, density => 0, nullcnt => 804073, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/08:58:48','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:55:32','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_CRTD', distcnt => 611264, density => .00000163595435032981, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_LAS_ACT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_LAS_ACT_ACTRTYP', distcnt => 0, density => 0, nullcnt => 804073, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/08:58:48','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:55:31','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_LAS_ACT_TIM', distcnt => 603328, density => .00000165747321523284, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_OBJ_STT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','7');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_VERS', distcnt => 8, density => .125, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1001','1001');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_VSBT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 4, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_DLTDDT', distcnt => 0, density => 0, nullcnt => 804073, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_LAS_ACT_BY', distcnt => 90, density => .0111111111111111, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_ORIGCRTR', distcnt => 90, density => .0111111111111111, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_LAS_ACT_BY_LOGDIN', distcnt => 67, density => .0149253731343284, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('000009a1-6c7a-4fcd-a2d1-36e3398b77b8','ffffb676-f045-4cf6-9e4e-7b8fc2ff1271');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_UNIVID', distcnt => 460448, density => .00000217179790117451, nullcnt => 342730, avgclen => 22, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('
',' This members mother was encouraged to keep CM's contact informa');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_TXT', distcnt => 132368, density => .000007554695999033, nullcnt => 579446, avgclen => 14, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1123456778999990020');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_NMBR', distcnt => 64, density => .015625, nullcnt => 803413, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','7170.599999999999');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_SCOR', distcnt => 80, density => .0125, nullcnt => 124, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10887601');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_ID', distcnt => 804073, density => .00000124366817440705, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B010102';
srec.maxval := 'C40B01502C';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,22
,43
,66
,87
,112
,133
,154
,175
,196
,218
,239
,262
,286
,309
,332
,354
,375
,398
,424
,452
,483
,505
,528
,556
,581
,604
,625
,649
,670
,692
,726
,766
,801
,832
,858
,904
,944
,983
,1006
,1028
,1061
,1104
,1127
,1156
,1197
,1219
,1242
,1264
,1306
,1349
,1385
,1413
,1434
,1455
,1484
,1519
,1546
,1589
,1621
,1650
,1680
,1701
,1730
,1755
,1789
,1825
,1859
,1889
,1934
,1956
,1978
,1999
,2020
,2044
,2068
,2109
,2148
,2184
,2221
,2242
,2264
,2285
,2306
,2328
,2351
,2380
,2404
,2431
,2452
,2479
,2510
,2538
,2570
,2601
,2626
,2653
,2688
,2720
,2751
,2772
,2802
,2836
,2861
,2886
,2909
,2937
,2986
,3021
,3059
,3087
,3112
,3147
,3187
,3208
,3240
,3281
,3318
,3341
,3390
,3415
,3454
,3482
,3506
,3527
,3548
,3569
,3591
,3612
,3633
,3655
,3676
,3698
,3719
,3742
,3764
,3785
,3813
,3834
,3855
,3887
,3912
,3936
,3961
,3984
,4006
,4030
,4054
,4076
,4100
,4122
,4144
,4166
,4187
,4209
,4231
,4252
,4279
,4309
,4332
,4357
,4383
,4404
,4429
,4453
,4478
,4501
,4524
,4546
,4568
,4592
,4613
,4636
,4658
,4679
,4700
,4721
,4743
,4766
,4788
,4813
,4836
,4857
,4879
,4900
,4924
,4952
,4976
,4999
,5028
,5052
,5079
,5110
,5132
,5161
,5189
,5213
,5237
,5259
,5280
,5305
,5329
,5353
,5375
,5401
,5426
,5450
,5471
,5497
,5502
,5503
,5509
,5512
,5513
,5514
,5518
,5520
,5528
,5532
,5537
,5541
,5542
,5548
,5549
,5553
,5559
,5560
,5561
,5562
,5563
,5564
,5565
,5566
,5567
,5568
,5569
,5570
,5573
,5574
,5576
,5577
,5579
,5581
,5582
,5585
,5587
,5588
,5590
,5591
,5592
,5593
,5594
,5595
,5597
);
srec.novals := DBMS_STATS.NUMARRAY(
10000001
,10000213
,10000359
,10000390
,10000411
,10000429
,10000440
,10000469
,10000496
,10000570
,10000618
,10000629
,10000635
,10000645
,10000654
,10000666
,10000753
,10001140
,10001159
,10001163
,10001168
,10001173
,10001179
,10001182
,10001186
,10001190
,10001194
,10001207
,10001222
,10001249
,10001300
,10001323
,10001325
,10001327
,10001328
,10001330
,10001332
,10001334
,10001336
,10001337
,10001338
,10001340
,10001342
,10001343
,10001345
,10001347
,10001348
,10001349
,10001350
,10001352
,10001354
,10001356
,10001357
,10001358
,10001359
,10001360
,10001362
,10001363
,10001365
,10001367
,10001369
,10001370
,10001371
,10001372
,10001374
,10001376
,10001378
,10001380
,10001382
,10001384
,10001385
,10001386
,10001387
,10001388
,10001389
,10001390
,10001392
,10001394
,10001396
,10001398
,10001756
,10002088
,10002423
,10002553
,10002584
,10002616
,10002785
,10002787
,10002789
,10002791
,10002793
,10002796
,10002798
,10002800
,10002802
,10002804
,10002806
,10002810
,10002813
,10002815
,10002906
,10002958
,10002959
,10002960
,10002961
,10002962
,10002963
,10002965
,10002966
,10002968
,10002970
,10002971
,10002972
,10002976
,10003761
,10003799
,10003801
,10003803
,10003804
,10003806
,10003807
,10003809
,10003810
,10003811
,10004003
,10004370
,10004428
,10004774
,10004919
,10005048
,10005069
,10005085
,10005104
,10005119
,10005219
,10005251
,10005278
,10005356
,10005365
,10005372
,10005380
,10005390
,10005399
,10005408
,10005417
,10005424
,10005433
,10005556
,10005563
,10005572
,10005580
,10005589
,10005637
,10005801
,10005982
,10006008
,10006415
,10007252
,10007258
,10007263
,10007269
,10007277
,10007347
,10007383
,10007386
,10007391
,10007395
,10007400
,10007405
,10007412
,10007425
,10007449
,10007503
,10007511
,10007522
,10007530
,10007540
,10007549
,10007557
,10007567
,10007574
,10007579
,10007582
,10007588
,10007594
,10007598
,10007602
,10007608
,10007611
,10007614
,10007617
,10007621
,10007625
,10007628
,10007631
,10007635
,10007638
,10007641
,10007648
,10007653
,10007657
,10007661
,10007667
,10007727
,10007748
,10007760
,10007772
,10007780
,10007799
,10007800
,10007801
,10007802
,10007803
,10007804
,10007805
,10007806
,10007807
,10007808
,10007809
,10007810
,10007811
,10007814
,10007815
,10007816
,10007817
,10007818
,10007831
,10007837
,10007854
,10007858
,10007861
,10007862
,10007863
,10007865
,10007866
,10007869
,10007880
,10007882
,10007885
,10007888
,10007893
,10007896
,10007903
,10007906
,10007907
,10007908
,10007913
,10007914
,10007921
,10007922
,10007923
,10007924
,10007929
,10007943
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,1
,1
,3
,1
,6
,2
,1
,1
,1
,1
,4
,3
,4
,5
,2
,2
,1
,8
,7
,8
,11
,3
,4
,9
,4
,5
,3
,4
,1
,2
,14
,21
,16
,31
,15
,32
,21
,22
,23
,22
,17
,27
,23
,15
,23
,22
,23
,22
,22
,25
,16
,28
,21
,21
,29
,17
,27
,23
,15
,14
,30
,21
,29
,12
,16
,17
,15
,11
,28
,22
,22
,21
,21
,24
,24
,20
,25
,24
,17
,2
,1
,1
,1
,2
,4
,11
,13
,10
,8
,12
,10
,15
,16
,15
,8
,14
,23
,16
,12
,1
,29
,34
,25
,25
,23
,28
,28
,35
,33
,16
,25
,35
,33
,1
,30
,21
,21
,23
,32
,25
,24
,28
,24
,1
,2
,2
,1
,1
,2
,2
,2
,1
,1
,3
,2
,2
,13
,2
,1
,15
,6
,5
,6
,6
,3
,5
,4
,3
,6
,3
,3
,1
,1
,2
,2
,1
,8
,10
,6
,6
,6
,1
,4
,10
,12
,8
,3
,8
,4
,5
,1
,3
,6
,1
,2
,4
,3
,3
,2
,7
,6
,13
,3
,5
,4
,9
,5
,7
,17
,7
,10
,13
,7
,15
,9
,9
,7
,1
,4
,9
,5
,5
,1
,6
,5
,6
,1
,5
,5
,1
,6
,3
,1
,1
,4
,2
,8
,4
,5
,4
,1
,6
,1
,4
,6
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,3
,1
,2
,1
,2
,2
,1
,3
,2
,1
,2
,1
,1
,1
,1
,1
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_QTN', distcnt => 5237, density => .000004, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10064839');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPE', colname => 'RESP_TAKNASMTCC', distcnt => 28878, density => .0000346284368723596, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
------------ Table: T_RSPECHCS--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_RSPECHCS', numrows => 517497, numblks => 8613 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPCH_OBJ_STT', numrows => 517497, numlblks => 1223, numdist => 1, clstfct => 9050, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPCH_CRTD', numrows => 517497, numlblks => 1321, numdist => 377408, clstfct => 183843, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPCH_CLASSTYPE', numrows => 517497, numlblks => 2398, numdist => 1, clstfct => 9701, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_RSPECHCS', numrows => 517497, numlblks => 1168, numdist => 517497, clstfct => 182186, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPCH_RSPE', numrows => 498769, numlblks => 1160, numdist => 459072, clstfct => 176229, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPCH_CHCS', numrows => 517497, numlblks => 1607, numdist => 9166, clstfct => 416967, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_RPCH_UNIVID', numrows => 323981, numlblks => 2832, numdist => 323981, clstfct => 323933, indlevel => 2);
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('ResponseChoices','ResponseChoices');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'CLASSTYPE', distcnt => 1, density => 1, nullcnt => 0, avgclen => 16, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_C4C_ID', distcnt => 0, density => 0, nullcnt => 517497, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/08:58:48','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:55:19','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_CRTD', distcnt => 377408, density => .00000264965236560963, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_LAS_ACT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_LAS_ACT_ACTRTYP', distcnt => 0, density => 0, nullcnt => 517497, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-09-03/08:58:48','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:55:19','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_LAS_ACT_TIM', distcnt => 377504, density => .00000264897855386963, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_OBJ_STT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_VERS', distcnt => 1, density => 1, nullcnt => 0, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1001','1001');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_VSBT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 4, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_DLTDDT', distcnt => 0, density => 0, nullcnt => 517497, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_LAS_ACT_BY', distcnt => 90, density => .0111111111111111, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_ORIGCRTR', distcnt => 90, density => .0111111111111111, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_LAS_ACT_BY_LOGDIN', distcnt => 67, density => .0149253731343284, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('00000f2e-577e-4070-b1af-2ff1f253a2d0','ffffce92-c898-4ff5-a4b2-a6c0bda1df0d');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_UNIVID', distcnt => 331904, density => .00000301291939838025, nullcnt => 193516, avgclen => 24, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10543274');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_ID', distcnt => 517497, density => .0000019323783519518, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10887599');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_RSPE', distcnt => 459072, density => .00000217830754217203, nullcnt => 18728, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B';
srec.maxval := 'C40B030D45';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,23
,44
,65
,87
,108
,130
,152
,173
,194
,215
,236
,258
,279
,306
,328
,351
,374
,400
,422
,443
,464
,485
,514
,539
,560
,585
,608
,630
,652
,674
,697
,719
,743
,767
,788
,811
,844
,887
,916
,944
,965
,992
,1040
,1070
,1094
,1119
,1140
,1172
,1203
,1242
,1280
,1306
,1344
,1384
,1413
,1439
,1472
,1507
,1538
,1574
,1603
,1633
,1680
,1713
,1747
,1772
,1802
,1829
,1861
,1895
,1923
,1954
,1985
,2022
,2056
,2077
,2098
,2120
,2142
,2163
,2184
,2207
,2245
,2268
,2312
,2357
,2387
,2408
,2437
,2516
,2572
,2631
,2657
,2690
,2718
,2774
,2812
,2837
,2864
,2922
,2978
,3008
,3047
,3121
,3146
,3174
,3202
,3223
,3257
,3293
,3316
,3342
,3371
,3406
,3432
,3477
,3508
,3536
,3557
,3578
,3600
,3621
,3643
,3664
,3685
,3706
,3731
,3753
,3774
,3796
,3818
,3841
,3863
,3902
,3926
,3953
,3979
,4003
,4028
,4050
,4071
,4092
,4117
,4142
,4167
,4189
,4212
,4235
,4257
,4281
,4302
,4324
,4346
,4367
,4390
,4411
,4434
,4456
,4477
,4501
,4527
,4548
,4570
,4596
,4623
,4644
,4665
,4686
,4710
,4732
,4758
,4784
,4811
,4833
,4855
,4878
,4900
,4922
,4944
,4972
,4997
,5019
,5041
,5078
,5100
,5132
,5155
,5178
,5209
,5230
,5253
,5278
,5301
,5323
,5349
,5373
,5404
,5427
,5448
,5474
,5503
,5526
,5549
,5572
,5595
,5621
,5643
,5666
,5687
,5712
,5739
,5742
,5744
,5750
,5751
,5754
,5755
,5757
,5759
,5760
,5762
,5763
,5765
,5766
,5767
,5768
,5769
,5770
,5771
,5772
,5773
,5775
,5778
,5780
,5782
,5784
,5785
,5786
,5787
,5788
,5790
,5791
,5792
,5793
,5794
,5795
,5796
,5797
,5798
,5799
,5800
,5801
,5803
);
srec.novals := DBMS_STATS.NUMARRAY(
10000000
,10000838
,10001538
,10001685
,10001742
,10001794
,10001842
,10001947
,10001999
,10002123
,10002327
,10002535
,10002565
,10002583
,10002595
,10002614
,10002627
,10002641
,10002650
,10002818
,10003039
,10004070
,10004271
,10004286
,10004297
,10004303
,10004315
,10004327
,10004345
,10004360
,10004367
,10004393
,10004416
,10004440
,10004444
,10004496
,10004601
,10004624
,10004628
,10004631
,10004634
,10004637
,10004642
,10004646
,10004651
,10004654
,10004661
,10004665
,10004667
,10004670
,10004674
,10004678
,10004682
,10004685
,10004690
,10004695
,10004699
,10004705
,10004710
,10004715
,10004719
,10004724
,10004728
,10004734
,10004737
,10004742
,10004745
,10004749
,10004753
,10004756
,10004760
,10004765
,10004771
,10004777
,10004783
,10004787
,10006042
,10007210
,10007426
,10008497
,10008933
,10009003
,10009435
,10009437
,10009447
,10009456
,10009464
,10009476
,10009489
,10009494
,10009906
,10009908
,10009916
,10009919
,10009920
,10009921
,10009923
,10009925
,10009930
,10009936
,10009939
,10009941
,10009943
,10009945
,10009947
,10009950
,10009951
,10012042
,10012044
,10012049
,10012053
,10012056
,10012058
,10012061
,10012064
,10012067
,10012070
,10012073
,10012074
,10013231
,10013797
,10014446
,10014647
,10015085
,10015133
,10015168
,10015195
,10015239
,10015288
,10015389
,10015552
,10015629
,10015693
,10015772
,10015927
,10015937
,10015955
,10015965
,10015978
,10015992
,10016010
,10016019
,10016025
,10016052
,10016362
,10016370
,10016385
,10016405
,10016423
,10016440
,10016464
,10016479
,10016613
,10017283
,10017299
,10017342
,10017483
,10019736
,10019757
,10019766
,10019780
,10019790
,10019950
,10020082
,10020107
,10020123
,10020136
,10020173
,10020248
,10020325
,10020354
,10020378
,10020398
,10020422
,10020459
,10020529
,10020539
,10020549
,10020562
,10020570
,10020582
,10020588
,10020593
,10020595
,10020607
,10020610
,10020616
,10020626
,10020633
,10020640
,10020645
,10020649
,10020653
,10020659
,10020663
,10020671
,10020678
,10020683
,10020688
,10020694
,10020709
,10020720
,10020776
,10020802
,10020853
,10020874
,10020894
,10020918
,10020948
,10020974
,10020981
,10020993
,10020996
,10021001
,10021002
,10021004
,10021005
,10021006
,10021007
,10021008
,10021012
,10021013
,10021024
,10021026
,10021031
,10021042
,10021050
,10021057
,10021058
,10021060
,10021065
,10021069
,10021073
,10021077
,10021081
,10021085
,10021093
,10021097
,10021101
,10021105
,10021117
,10021122
,10021127
,10021128
,10021130
,10021134
,10021135
,10021136
,10021144
,10021152
,10021177
,10021214
,10021242
,10021268
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,3
,1
,4
,2
,1
,3
,3
,3
,1
,1
,1
,3
,4
,8
,2
,8
,4
,5
,2
,1
,1
,8
,9
,10
,13
,5
,4
,5
,3
,1
,7
,3
,9
,8
,1
,2
,15
,32
,21
,12
,18
,10
,34
,14
,19
,13
,1
,21
,22
,29
,31
,23
,34
,26
,18
,9
,13
,27
,31
,28
,26
,18
,29
,25
,24
,19
,26
,25
,30
,14
,17
,13
,15
,19
,14
,1
,1
,2
,1
,1
,2
,4
,18
,16
,27
,25
,24
,3
,9
,59
,56
,53
,20
,33
,28
,56
,38
,8
,12
,47
,44
,23
,32
,59
,15
,28
,15
,17
,23
,28
,13
,26
,14
,24
,23
,30
,20
,28
,1
,1
,1
,1
,2
,1
,1
,1
,4
,3
,1
,2
,2
,3
,1
,21
,4
,7
,6
,7
,4
,5
,6
,3
,5
,6
,7
,1
,4
,3
,4
,5
,1
,2
,3
,1
,4
,1
,3
,1
,1
,5
,6
,1
,9
,6
,8
,1
,2
,1
,6
,2
,6
,6
,7
,2
,4
,4
,7
,2
,6
,11
,11
,3
,11
,21
,9
,13
,3
,5
,14
,10
,12
,8
,6
,17
,11
,8
,17
,5
,1
,6
,11
,5
,3
,6
,4
,5
,2
,5
,1
,11
,9
,3
,2
,6
,1
,3
,1
,2
,2
,1
,2
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,2
,3
,2
,2
,2
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_RSPECHCS', colname => 'RPCH_CHCS', distcnt => 9166, density => .000097, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
------------ Table: T_SENTCAREBEAN--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_SENTCAREBEAN', numrows => 0, numblks => 0 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_SENT_Y2D', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_UNIVID', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_CRTD', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_TAKNASMTCC_BASE', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_OWNR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_AFFN_PVDR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_OBJ_STT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_PRVSSNDR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_AFFN_MEMB', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_AFFN_UM_EVNTREQT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_PRVSRFNGTSK', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_ORIGRCPT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_AFFN_UM_EVNT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_PRVSOWNRPRMN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_SRC__ASMTCARECALC', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_LAS_GKPR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_CSTMFLDS', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_PRVSTNFR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_PRVSRFNGTSK_PRMN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_AFFN_UM_EXTN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_CAUDBY', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_TAKNASMTCC', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_CAREBEAN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_PRVSOWNR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_SENTCAREBEAN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_TNFR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_AFFN_CM', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_GRP', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_RFNGWKFWTSK', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_CLASSTYPE', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STCB_SRC__PAT_ID_QRY', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('--/::','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('--/::','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'SYS_NC00059$', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'CLASSTYPE', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_C4C_ID', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_CRTD', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_ACT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_ACT_ACTRTYP', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_ACT_TIM', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_OBJ_STT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_VERS', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_VSBT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_DLTDDT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_ACT_BY', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_ORIGCRTR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_ORIGCRTRLOGDIN', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_ACT_BY_LOGDIN', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_UNIVID', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_NAM', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_PRUS', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_SNDRSPCDDTS', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_WLCMTXT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_RCMD', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_SENT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_SRTD', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_TMTD', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_OTCM', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_RTEDTO_GKPRAT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_GKPRACT_AT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_GKPROTCM', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_WKFWISTCID', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_CNV_ID', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_OWNRCHNDFLAG', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_OWNRCHNDCNT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_SRC__SRC_TYP', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_ID', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_ORIGRCPT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_LAS_GKPR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_RFNGWKFWTSK', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_PRVSRFNGTSK', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_PRVSRFNGTSK_PRMN', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_OWNR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_PRVSOWNR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_PRVSSNDR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_PRVSOWNRPRMN', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_TNFR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_PRVSTNFR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_SRC__ASMTCARECALC', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_SRC__PAT_ID_QRY', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_AFFN_UM_EVNTREQT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_AFFN_UM_EXTN', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_AFFN_PVDR', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_AFFN_CM', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_AFFN_MEMB', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_AFFN_UM_EVNT', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_CAUDBY', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_CSTMFLDS', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_GRP', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_CAREBEAN', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_TAKNASMTCC', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTCAREBEAN', colname => 'STCB_TAKNASMTCC_BASE', distcnt => 0, density => 0, nullcnt => 0, avgclen => 0, srec => srec);
COMMIT;
END;
/
------------ Table: T_SENTTSK--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_SENTTSK', numrows => 223306, numblks => 14004 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'T_SENTSK_UX_EVNTREQT_ID', numrows => 223306, numlblks => 516, numdist => 223306, clstfct => 167867, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'T_SENTTSK_UX_MEMB_ID', numrows => 223306, numlblks => 613, numdist => 223306, clstfct => 176756, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_AFFN_MEMB', numrows => 55172, numlblks => 173, numdist => 17032, clstfct => 48568, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_AFFN_UM_EVNT', numrows => 21, numlblks => 1, numdist => 20, clstfct => 6, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'T_SENTTSK_UX_EXTN_ID', numrows => 223306, numlblks => 516, numdist => 223306, clstfct => 167869, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_PRVSTNFR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_SRC__ASMTCARECALC', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_AFFN_CM', numrows => 168113, numlblks => 504, numdist => 42344, clstfct => 145375, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_OBJ_STT_AFFN_MEMB_SETK_ID', numrows => 223306, numlblks => 914, numdist => 223306, clstfct => 186322, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SKC4CID_SKID_SKTSKNM_CT', numrows => 223306, numlblks => 2121, numdist => 223306, clstfct => 168198, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_TSK_TYP', numrows => 223306, numlblks => 613, numdist => 33, clstfct => 61098, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_TMPT', numrows => 223306, numlblks => 513, numdist => 219168, clstfct => 167779, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SCBT_CB_SETK_TMTD_AFFM_OWNR', numrows => 219522, numlblks => 1272, numdist => 188962, clstfct => 205346, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SCBT_CAREBEANTSK', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_CAUDBY', numrows => 3269, numlblks => 9, numdist => 3130, clstfct => 2706, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'T_SENTTSK_UX_ORIG_ID', numrows => 223306, numlblks => 1050, numdist => 223306, clstfct => 192964, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_CRTD', numrows => 223306, numlblks => 558, numdist => 205680, clstfct => 168288, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_PRVSOWNR', numrows => 64537, numlblks => 208, numdist => 103, clstfct => 47637, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'T_SENTTSK_UX_EVNT_ID', numrows => 223306, numlblks => 517, numdist => 223306, clstfct => 167870, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_CLASSTYPE', numrows => 223306, numlblks => 772, numdist => 1, clstfct => 12945, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_OWNR', numrows => 219029, numlblks => 715, numdist => 144, clstfct => 115633, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_RETNPTRN_ID', numrows => 223306, numlblks => 543, numdist => 223306, clstfct => 167896, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_AFFN_UM_EVNTREQT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_AFFN_UM_EXTN', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_PRVSOWNRPRMN', numrows => 64537, numlblks => 208, numdist => 103, clstfct => 47637, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'UK_SCBT', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_SENTTSK', numrows => 223306, numlblks => 482, numdist => 223306, clstfct => 167776, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_UM_BASE', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_SRC__PAT_ID_QRY', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_GRP', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_TAKNASMTCC_BASE', numrows => 3808, numlblks => 12, numdist => 2799, clstfct => 2804, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_CNCLRESN', numrows => 35264, numlblks => 109, numdist => 6, clstfct => 19903, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_PRVSRFNGTSK_PRMN', numrows => 215498, numlblks => 763, numdist => 215498, clstfct => 201830, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_TNFR', numrows => 1, numlblks => 1, numdist => 1, clstfct => 1, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_CSTMFLDS', numrows => 189645, numlblks => 465, numdist => 183856, clstfct => 154067, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_AFFN_PVDR', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_ORIGRCPT', numrows => 223306, numlblks => 724, numdist => 1499, clstfct => 118827, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_RFNGWKFWTSK', numrows => 1669, numlblks => 72, numdist => 1669, clstfct => 1401, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_PRVSRFNGTSK', numrows => 215492, numlblks => 740, numdist => 215492, clstfct => 201825, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_PRVSSNDR', numrows => 64537, numlblks => 208, numdist => 103, clstfct => 47637, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'T_SENTTSK_UX_CM_ID', numrows => 223306, numlblks => 770, numdist => 223306, clstfct => 190574, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_UNIVID', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_OBJ_STT', numrows => 223306, numlblks => 622, numdist => 10, clstfct => 29648, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SCBT_CB_STK_TD_AFM_NVL_PRNL', numrows => 223306, numlblks => 1117, numdist => 187339, clstfct => 194255, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_OWNRORIGRCPT', numrows => 223306, numlblks => 710, numdist => 1500, clstfct => 119215, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_SENT_Y2D', numrows => 219029, numlblks => 929, numdist => 1958, clstfct => 69414, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_STARTDATEALL', numrows => 223306, numlblks => 786, numdist => 81208, clstfct => 175814, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_REPP_STARTDATEALL', numrows => 223306, numlblks => 812, numdist => 82796, clstfct => 175838, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_STRTSNLTDT_LOWB', numrows => 223306, numlblks => 769, numdist => 2483, clstfct => 125496, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_TMTD_HIGHB', numrows => 223306, numlblks => 924, numdist => 1951, clstfct => 118282, indlevel => 2);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_SETK_TMTD_HIGHBX', numrows => 223306, numlblks => 923, numdist => 1951, clstfct => 118282, indlevel => 2);
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B022359';
srec.maxval := 'C40B022359';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
9322
);
srec.novals := DBMS_STATS.NUMARRAY(
10013488
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_RESCHEDULE_REASON', distcnt => 1, density => .0000536365586783952, nullcnt => 213984, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('09.07.20 is a holiday. Moved to 09.08.20','wrong date entered');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_RESCHEDULE_COMMENT', distcnt => 266, density => .0037593984962406, nullcnt => 222376, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C70F3505340C2819';
srec.maxval := 'CA132D2F2A2A13632B0827';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,9
,18
,25
,33
,40
,47
,55
,62
,70
,77
,84
,92
,99
,107
,114
,238
,246
,253
,261
,268
,276
,283
,290
,298
,305
,313
,320
,327
,335
,379
,387
,394
,401
,409
,416
,424
,431
,439
,446
,453
,461
,468
,476
,483
,490
,498
,505
,513
,520
,527
,535
,543
,551
,558
,566
,573
,580
,588
,595
,603
,610
,618
,626
,633
,641
,648
,655
,663
,670
,678
,685
,693
,700
,707
,715
,724
,732
,739
,746
,754
,761
,769
,776
,783
,791
,798
,807
,814
,822
,829
,837
,845
,852
,860
,868
,876
,884
,891
,899
,906
,913
,921
,928
,936
,943
,951
,958
,965
,973
,980
,988
,995
,1002
,1010
,1017
,1025
,1032
,1039
,1047
,1054
,1062
,1069
,1076
,1084
,1091
,1100
,1107
,1115
,1122
,1129
,1137
,1144
,1152
,1159
,1166
,1174
,1182
,1190
,1197
,1204
,1212
,1219
,1227
,1235
,1243
,1250
,1257
,2158
,2165
,2173
,2180
,2187
,2195
,2202
,2210
,2217
,2224
,2232
,2239
,2247
,2254
,2262
,2269
,2276
,2284
,2291
,2299
,2306
,2313
,2321
,2328
,2336
,2343
,2350
,2358
,2365
,2373
,2380
,2388
,2395
,2402
,2410
,2417
,2474
,2481
,2488
,2496
,2503
,2511
,2519
,2528
,2536
,2543
,2551
,2558
,2566
,2573
,2580
,2588
,2595
,2603
,2610
,2617
,2625
,2632
,2640
,2647
,2655
,2663
,2670
,2678
,2686
,2694
,2701
,7118
,7126
,7133
,7141
,7148
,7155
,7163
,7170
,7178
,7185
,7192
,7201
,7208
,7216
,7223
,7231
,7238
,7245
,7253
,7260
,7268
,7275
,7282
,7290
,7298
,7306
,7313
,7320
,7328
,7335
,7343
,7350
,7356
,7357
,7358
,7360
,7362
,7363
,7365
);
srec.novals := DBMS_STATS.NUMARRAY(
6353357
,19165009
,61095052
,103857333
,158078436
,205695203
,237191496
,286762072
,298360529
,342073802
,411254835
,448813370
,491933446
,518276043
,543952126
,582558741
,583405513
,693981035
,752234184
,785985655
,818684462
,843225437
,905696839
,947970490
,989779249
,1012661493
,1045105810
,1072248922
,1092875988
,1170845012
,1199925872
,1252420619
,1282388011
,1335481045
,1391446531
,1457789555
,1498677156
,1516518546
,1554093781
,1581955866
,1642505644
,1667177449
,1723835817
,1800206545
,1861174359
,1897885918
,1923076393
,1949362001
,1976498249
,2000798994
,2032388184
,2078434890
,2128234039
,2160286459
,2190956822
,2240865385
,2282831696
,2308103973
,2380069772
,2417597445
,2444325794
,2501085112
,2550635965
,2589197274
,2660305637
,2705985815
,2734324295
,2768793985
,2828497551
,2863464379
,2905780184
,2922544995
,2949006814
,2992292430
,3008683377
,3076193389
,3108831920
,3124333126
,3169857641
,3193607761
,3277356560
,3289800541
,3301159163
,3338175602
,3382967095
,3430020122
,3450602244
,3470764292
,3505615484
,3553450314
,3595819036
,3632737464
,3670650961
,3703638111
,3722923892
,3733748186
,3755239900
,3777865343
,3842108520
,3889208852
,3928123224
,3948141563
,3998131997
,4042272751
,4094281951
,4142099644
,4198821022
,4229309816
,4272219476
,4306545360
,4340001111
,4378912854
,4391116912
,4416254310
,4439715665
,4480183345
,4512059238
,4536211297
,4563830842
,4594279812
,4612900836
,4642257402
,4661582103
,4732242411
,4763999909
,4793458988
,4817179667
,4849261312
,4896897617
,4926344959
,4973575390
,5005322898
,5055152169
,5096467823
,5115649718
,5143383011
,5179717089
,5211321156
,5281352166
,5314697284
,5356630581
,5387597406
,5432748772
,5488975240
,5493912747
,5535673748
,5589347245
,5688264675
,5701987746
,5712415622
,5740413836
,5765076604
,5801691363
,5866930650
,5925507884
,5954506837
,6019290660
,6042957684
,6087355594
,6120150136
,6154495713
,6197932028
,6240619431
,6286345760
,6332361242
,6374294537
,6427155632
,6455802430
,6494821106
,6511681828
,6571985402
,6598449008
,6637068117
,6677452010
,6715924543
,6768448008
,6813611307
,6862654685
,6900592246
,6932658611
,6971532350
,7026502580
,7069398013
,7115073280
,7143172733
,7176632300
,7221036574
,7297903639
,7324927495
,7364028207
,7402947671
,7428851040
,7466929556
,7513588825
,7544825725
,7602138185
,7661008016
,7707687733
,7759287363
,7803456989
,7847605966
,7894794195
,7927766437
,7955382664
,8044053530
,8075495844
,8110385791
,8181526057
,8227686842
,8286462462
,8313996618
,8349935138
,8369418315
,8441880278
,8519173420
,8545624953
,8608452456
,8633225736
,8662634540
,8719185899
,8743224000
,8779424006
,8834626096
,8888171773
,8927118204
,8961109475
,9028765837
,9077886165
,9125130444
,9194146545
,9222232634
,9291561286
,9324411209
,9368881133
,9396463819
,9440888627
,9477097586
,9546594534
,9568410114
,9588863010
,9615049073
,9649194013
,9719486171
,9798727583
,9837112577
,9871894854
,9924256162
,9962225689
,9979038649
,9983635385
,9991467371
,9991992962
,9993930330
,9999599556
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,2
,2
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,121
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,43
,1
,1
,1
,1
,1
,1
,1
,2
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,2
,1
,2
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,3
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,2
,1
,2
,1
,1
,1
,5
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,3
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,2
,1
,1
,1
,1
,1
,1
,6
,1
,1
,1
,899
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,51
,1
,1
,1
,1
,1
,2
,3
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,2
,1
,1
,4412
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,3
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,4
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,2
,1
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_STSU99E0JHXWDB$#3#GYFFGPVG', distcnt => 22096, density => .000014, nullcnt => 0, avgclen => 12, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '53656E745461736B';
srec.maxval := '53656E745461736B';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
7365
);
srec.novals := DBMS_STATS.NUMARRAY(
433017913728507000000000000000000000
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'CLASSTYPE', distcnt => 1, density => .00000222105157996947, nullcnt => 0, avgclen => 9, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('050-10000002','050-10632432');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_C4C_ID', distcnt => 223306, density => .00000447816001361361, nullcnt => 0, avgclen => 13, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '787009040B0A0C';
srec.maxval := '78780A1F130A2F';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,30
,59
,88
,117
,146
,175
,204
,234
,263
,292
,321
,350
,379
,408
,437
,466
,496
,525
,554
,583
,612
,641
,670
,699
,728
,758
,787
,816
,845
,874
,903
,932
,961
,991
,1020
,1049
,1078
,1107
,1136
,1165
,1194
,1223
,1253
,1282
,1311
,1340
,1369
,1398
,1427
,1456
,1485
,1515
,1544
,1573
,1602
,1631
,1660
,1689
,1718
,1747
,1777
,1806
,1835
,1864
,1893
,1922
,1951
,1980
,2010
,2039
,2068
,2097
,2126
,2155
,2184
,2213
,2242
,2272
,2301
,2330
,2359
,2388
,2417
,2446
,2475
,2504
,2534
,2563
,2592
,2621
,2650
,2679
,2708
,2737
,2767
,2796
,2825
,2854
,2883
,2912
,2941
,2970
,2999
,3029
,3058
,3087
,3116
,3145
,3174
,3203
,3232
,3261
,3291
,3320
,3349
,3378
,3407
,3436
,3465
,3494
,3523
,3553
,3582
,3611
,3640
,3669
,3698
,3727
,3756
,3786
,3815
,3844
,3873
,3902
,3931
,3960
,3989
,4019
,4049
,4078
,4107
,4136
,4165
,4194
,4223
,4252
,4281
,4311
,4340
,4369
,4398
,4427
,4456
,4485
,4514
,4543
,4573
,4602
,4631
,4660
,4689
,4718
,4747
,4776
,4806
,4835
,4864
,4893
,4922
,4951
,4980
,5009
,5038
,5068
,5097
,5126
,5155
,5184
,5213
,5242
,5271
,5300
,5330
,5359
,5388
,5417
,5446
,5475
,5504
,5533
,5563
,5592
,5621
,5650
,5679
,5708
,5737
,5766
,5795
,5825
,5854
,5883
,5912
,5941
,5970
,5999
,6028
,6057
,6087
,6116
,6145
,6174
,6203
,6232
,6261
,6290
,6319
,6349
,6378
,6407
,6436
,6465
,6494
,6523
,6552
,6582
,6611
,6640
,6669
,6698
,6727
,6756
,6785
,6814
,6844
,6873
,6902
,6931
,6960
,6989
,7018
,7047
,7076
,7106
,7135
,7164
,7193
,7222
,7251
,7280
,7309
,7339
,7367
);
srec.novals := DBMS_STATS.NUMARRAY(
2456175.42304398
,2456555.68034722
,2456567.44834491
,2456588.60115741
,2456608.61936343
,2456630.56983796
,2456654.56381944
,2456673.72946759
,2456694.71340278
,2456709.56038194
,2456728.72305556
,2456743.71292824
,2456758.61451389
,2456779.50366898
,2456793.54513889
,2456808.65903935
,2456822.36664352
,2456835.50025463
,2456848.59912037
,2456862.63666667
,2456874.55193287
,2456883.45840278
,2456895.54142361
,2456907.45699074
,2456913.66271991
,2456923.34222222
,2456930.73378472
,2456946.40607639
,2456953.39278935
,2456960.61105324
,2456972.49814815
,2456983.33890046
,2456994.62909722
,2457002.48738426
,2457009.68746528
,2457025.36581019
,2457036.49349537
,2457045.61805556
,2457052.84604167
,2457064.61546296
,2457073.40291667
,2457081.69655093
,2457094.69597222
,2457112.48736111
,2457122.68859954
,2457135.71414352
,2457143.69949074
,2457151.62775463
,2457163.58883102
,2457178.41206019
,2457190.6975
,2457197.48153935
,2457212.60431713
,2457221.62467593
,2457234.48134259
,2457248.46541667
,2457261.66144676
,2457275.45853009
,2457289.43653935
,2457301.61105324
,2457317.51516204
,2457326.53922454
,2457339.62181713
,2457351.46946759
,2457366.59881944
,2457380.36538194
,2457399.55475694
,2457409.58768519
,2457428.35791667
,2457441.66459491
,2457451.73482639
,2457470.48923611
,2457485.30396991
,2457501.43537037
,2457518.37958333
,2457526.4783912
,2457546.36387731
,2457564.32770833
,2457581.49502315
,2457589.74930556
,2457605.48944444
,2457619.62907407
,2457634.5025463
,2457647.7316088
,2457658.37739583
,2457668.61358796
,2457680.89042824
,2457694.44068287
,2457704.5062963
,2457714.49019676
,2457725.49090278
,2457742.61418982
,2457763.48170139
,2457773.41596065
,2457784.57097222
,2457801.70979167
,2457816.41961806
,2457836.70424769
,2457858.41734954
,2457877.58928241
,2457891.5422338
,2457912.46574074
,2457924.74045139
,2457945.60392361
,2457955.37909722
,2457973.46569444
,2457989.47975694
,2458004.62174769
,2458012.36967593
,2458013.49541667
,2458025.51888889
,2458037.61599537
,2458054.64613426
,2458071.67858796
,2458087.46884259
,2458095.62196759
,2458106.77068287
,2458128.61962963
,2458156.4512963
,2458176.7212963
,2458186.48787037
,2458200.68597222
,2458219.6146875
,2458236.65649306
,2458254.6384838
,2458277.43346065
,2458299.66670139
,2458319.59929398
,2458338.58336806
,2458359.67775463
,2458376.6665162
,2458395.76208333
,2458410.424375
,2458431.61737269
,2458457.65190972
,2458479.52114583
,2458499.68305556
,2458514.63478009
,2458526.68045139
,2458550.52922454
,2458570.91409722
,2458579.54313657
,2458593.40574074
,2458603.46715278
,2458613.6740625
,2458632.42258102
,2458646.65664352
,2458667.53361111
,2458689.60445602
,2458695.69905093
,2458710.38263889
,2458726.65447917
,2458746.57847222
,2458759.68237269
,2458772.56527778
,2458787.67483796
,2458799.45770833
,2458806.61008102
,2458808.69295139
,2458810.54928241
,2458814.66600694
,2458820.74201389
,2458824.47958333
,2458829.38328704
,2458832.71582176
,2458838.63226852
,2458848.41729167
,2458851.67304398
,2458856.66552083
,2458858.62311343
,2458863.51331019
,2458866.39875
,2458869.50225694
,2458872.42078704
,2458875.37552083
,2458877.45518519
,2458879.55052083
,2458884.48553241
,2458886.4021412
,2458887.62256944
,2458890.65583333
,2458891.65603009
,2458893.69799769
,2458897.48512732
,2458899.4528125
,2458900.62486111
,2458901.76753472
,2458904.66726852
,2458906.6358912
,2458907.85702546
,2458909.44916667
,2458912.43560185
,2458914.4609375
,2458918.6034375
,2458920.59568287
,2458922.40693287
,2458925.49703704
,2458927.50711806
,2458929.61760417
,2458932.87920139
,2458935.61115741
,2458940.65153935
,2458946.42788194
,2458949.76771991
,2458953.6700463
,2458955.7027662
,2458957.6171875
,2458962.4303588
,2458964.38925926
,2458968.39837963
,2458970.47844907
,2458974.68543982
,2458977.36650463
,2458982.49931713
,2458984.6522338
,2458988.74989583
,2458991.44251157
,2458997.42547454
,2458999.35436343
,2459004.63445602
,2459009.37179398
,2459011.63893519
,2459013.50530093
,2459018.70247685
,2459023.4796412
,2459025.66990741
,2459031.42553241
,2459037.48277778
,2459039.7925
,2459044.56966435
,2459048.37100694
,2459052.73137731
,2459055.44486111
,2459059.72699074
,2459066.47667824
,2459072.37208333
,2459075.39738426
,2459080.66087963
,2459083.68163194
,2459088.69090278
,2459094.45027778
,2459101.57940972
,2459103.66055556
,2459108.61857639
,2459114.60190972
,2459116.70925926
,2459121.44959491
,2459123.64325232
,2459128.66592593
,2459132.59912037
,2459139.39480324
,2459144.57078704
,2459150.60251157
,2459154.75678241
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CRTD', distcnt => 205680, density => .000005, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C3030119';
srec.epc := 10;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,1889
,182082
,186351
,187866
,187882
,187984
,188013
,223276
,223306
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,2002
,2003
,2004
,2007
,2008
,20012
,20020
,20023
,20024
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_LAS_ACT', distcnt => 10, density => .0000022390800068068, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','10');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_LAS_ACT_ACTRTYP', distcnt => 3, density => .333333333333333, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '787009070C022C';
srec.maxval := '78780A1F130B0D';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,30
,59
,88
,117
,146
,175
,204
,234
,263
,292
,321
,350
,379
,408
,437
,466
,496
,525
,554
,583
,612
,641
,670
,699
,728
,758
,787
,816
,845
,874
,903
,932
,961
,991
,1020
,1049
,1078
,1107
,1136
,1165
,1194
,1223
,1253
,1282
,1311
,1340
,1369
,1398
,1427
,1456
,1485
,1515
,1544
,1573
,1602
,1631
,1660
,1689
,1718
,1747
,1777
,1806
,1835
,1864
,1893
,1922
,1951
,1980
,2010
,2039
,2068
,2097
,2126
,2155
,2184
,2213
,2242
,2272
,2301
,2330
,2359
,2388
,2417
,2446
,2475
,2504
,2534
,2563
,2592
,2621
,2650
,2679
,2708
,2737
,2767
,2796
,2825
,2854
,2883
,2912
,2941
,2970
,2999
,3029
,3058
,3087
,3116
,3145
,3174
,3203
,3232
,3261
,3291
,3320
,3349
,3378
,3407
,3436
,3465
,3494
,3523
,3553
,3582
,3611
,3640
,3669
,3698
,3727
,3756
,3786
,3815
,3844
,3873
,3902
,3931
,3960
,3989
,4018
,4048
,4077
,4106
,4135
,4164
,4193
,4222
,4251
,4280
,4310
,4339
,4368
,4397
,4426
,4455
,4484
,4513
,4542
,4572
,4601
,4630
,4659
,4688
,4717
,4746
,4775
,4805
,4834
,4863
,4892
,4921
,4950
,4979
,5008
,5037
,5067
,5096
,5125
,5154
,5183
,5212
,5241
,5270
,5299
,5329
,5358
,5387
,5416
,5445
,5474
,5503
,5532
,5562
,5591
,5620
,5649
,5678
,5707
,5736
,5765
,5794
,5824
,5853
,5882
,5911
,5940
,5969
,5998
,6027
,6056
,6086
,6115
,6144
,6173
,6202
,6231
,6260
,6289
,6318
,6348
,6377
,6406
,6435
,6464
,6493
,6522
,6551
,6581
,6610
,6639
,6668
,6697
,6726
,6755
,6784
,6813
,6843
,6872
,6901
,6930
,6959
,6988
,7017
,7046
,7075
,7105
,7134
,7163
,7192
,7221
,7250
,7279
,7308
,7338
,7367
);
srec.novals := DBMS_STATS.NUMARRAY(
2456178.45952546
,2456588.75671296
,2456624.60393519
,2456646.67335648
,2456675.48224537
,2456693.55209491
,2456720.74138889
,2456730.58502315
,2456745.59241898
,2456762.67094907
,2456780.77873843
,2456801.56373843
,2456818.53363426
,2456833.67165509
,2456846.51190972
,2456855.57328704
,2456869.52890046
,2456883.39675926
,2456895.58950232
,2456907.46311343
,2456918.56868056
,2456924.67457176
,2456938.50774306
,2456946.70731482
,2456954.45353009
,2456961.60114583
,2456968.74920139
,2456983.3369213
,2456995.59731482
,2457003.36482639
,2457010.68296296
,2457028.41940972
,2457036.49716435
,2457044.46729167
,2457056.64210648
,2457064.68229167
,2457073.33782407
,2457084.37413194
,2457095.61894676
,2457107.71811343
,2457119.3712963
,2457134.47877315
,2457143.3669213
,2457151.61047454
,2457161.63982639
,2457175.9196412
,2457189.60474537
,2457197.49283565
,2457205.54693287
,2457220.43744213
,2457233.63099537
,2457242.50497685
,2457255.57549769
,2457268.63344907
,2457281.3783912
,2457291.67212963
,2457304.47
,2457315.50445602
,2457326.48953704
,2457339.42534722
,2457347.74197917
,2457365.68270833
,2457379.37351852
,2457396.42019676
,2457408.37545139
,2457422.46145833
,2457436.58518519
,2457444.52815972
,2457458.51861111
,2457477.6449537
,2457491.68844907
,2457507.66947917
,2457521.58685185
,2457529.65480324
,2457546.4022338
,2457567.61398148
,2457581.65140046
,2457596.44084491
,2457612.38174769
,2457623.47596065
,2457634.46793982
,2457644.4683912
,2457652.68556713
,2457661.40729167
,2457667.57616898
,2457679.49087963
,2457693.47756944
,2457702.46197917
,2457714.60015046
,2457725.41460648
,2457737.37725694
,2457760.30863426
,2457771.55664352
,2457781.46555556
,2457792.61655093
,2457809.53240741
,2457823.61513889
,2457847.75199074
,2457869.69302083
,2457884.53997685
,2457905.55113426
,2457921.53590278
,2457940.39039352
,2457955.57521991
,2457967.38142361
,2457983.45427083
,2458003.5971875
,2458012.3237963
,2458013.43516204
,2458022.7059838
,2458038.42599537
,2458057.54070602
,2458072.44141204
,2458086.55587963
,2458093.58461806
,2458108.54711806
,2458128.69041667
,2458150.56030093
,2458171.62141204
,2458184.62456019
,2458197.6946412
,2458215.65346065
,2458236.41034722
,2458255.61783565
,2458276.4246412
,2458298.42142361
,2458319.56699074
,2458337.60653935
,2458352.44578704
,2458373.68634259
,2458393.44541667
,2458410.58101852
,2458429.46670139
,2458449.40578704
,2458470.37034722
,2458488.58542824
,2458507.60914352
,2458520.61266204
,2458541.50825232
,2458560.50435185
,2458577.28258102
,2458586.49760417
,2458599.36509259
,2458612.72680556
,2458627.31532407
,2458640.65042824
,2458653.34975694
,2458680.48190972
,2458694.62359954
,2458705.6884375
,2458722.63016204
,2458740.46319444
,2458754.62283565
,2458771.46677083
,2458785.53280093
,2458795.6747338
,2458806.54657407
,2458809.62601852
,2458814.55804398
,2458817.52721065
,2458821.3974537
,2458825.52126157
,2458829.63006944
,2458834.45954861
,2458837.64623843
,2458848.46109954
,2458851.6715162
,2458856.61476852
,2458858.6637963
,2458863.52979167
,2458866.41106481
,2458869.61806713
,2458872.65423611
,2458876.4812037
,2458878.39800926
,2458880.38666667
,2458884.50386574
,2458886.61391204
,2458887.77126157
,2458891.39951389
,2458892.60509259
,2458894.66915509
,2458898.51533565
,2458900.36841435
,2458901.52533565
,2458904.58917824
,2458906.43715278
,2458907.60158565
,2458909.34577546
,2458911.67708333
,2458914.34697917
,2458918.50248843
,2458920.39990741
,2458921.71857639
,2458925.52459491
,2458927.61842593
,2458929.45311343
,2458932.63060185
,2458936.48334491
,2458941.4418287
,2458947.36204861
,2458953.35521991
,2458955.44349537
,2458957.62018519
,2458962.37063657
,2458963.66259259
,2458967.56251157
,2458970.52131944
,2458974.7530787
,2458977.55355324
,2458982.62880787
,2458984.60646991
,2458989.34780093
,2458991.46497685
,2458996.61923611
,2458998.61980324
,2459003.4599537
,2459005.6878125
,2459011.41938657
,2459013.64766204
,2459017.58053241
,2459020.46890046
,2459025.39922454
,2459030.36565972
,2459033.40915509
,2459038.63512732
,2459040.68383102
,2459045.4703125
,2459048.57815972
,2459053.59078704
,2459055.65269676
,2459060.65769676
,2459066.42630787
,2459068.6540625
,2459074.64078704
,2459080.60765046
,2459083.63100694
,2459087.64900463
,2459093.39701389
,2459096.61996528
,2459102.78096065
,2459107.41034722
,2459109.67513889
,2459115.4344213
,2459117.44435185
,2459121.61512732
,2459124.61060185
,2459129.56758102
,2459135.43100694
,2459138.69283565
,2459144.35162037
,2459149.38225694
,2459152.36261574
,2459154.75708333
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_LAS_ACT_TIM', distcnt => 216560, density => .000005, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C20A10';
srec.epc := 10;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,4270
,6158
,7715
,7719
,7832
,7833
,7849
,188042
,223306
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,901
,904
,905
,906
,907
,908
,909
,910
,915
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_OBJ_STT', distcnt => 10, density => .0000022390800068068, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '80';
srec.maxval := 'C2025D';
srec.epc := 117;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,4273
,4281
,7593
,7672
,71366
,76267
,77163
,185349
,193026
,193880
,196500
,197504
,198014
,209958
,211598
,212287
,213034
,213389
,213614
,217191
,217795
,217974
,218303
,218455
,218532
,219904
,220217
,220315
,220451
,220556
,220603
,221250
,221431
,221505
,221588
,221639
,221676
,222030
,222140
,222175
,222225
,222260
,222277
,222495
,222571
,222598
,222639
,222656
,222666
,222797
,222834
,222851
,222872
,222887
,222893
,222958
,222978
,222987
,223002
,223009
,223019
,223070
,223091
,223098
,223106
,223108
,223111
,223135
,223140
,223149
,223152
,223155
,223159
,223174
,223181
,223186
,223189
,223191
,223205
,223215
,223217
,223219
,223223
,223225
,223237
,223241
,223244
,223246
,223254
,223258
,223263
,223266
,223267
,223270
,223272
,223274
,223275
,223276
,223281
,223284
,223285
,223288
,223290
,223292
,223294
,223295
,223296
,223298
,223299
,223300
,223301
,223302
,223303
,223304
,223305
,223306
);
srec.novals := DBMS_STATS.NUMARRAY(
0
,1
,2
,3
,4
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
,22
,23
,24
,25
,26
,27
,28
,29
,30
,31
,32
,33
,34
,35
,36
,37
,38
,39
,40
,41
,42
,43
,44
,45
,46
,47
,48
,49
,50
,51
,52
,53
,54
,55
,56
,57
,58
,59
,60
,61
,62
,63
,64
,65
,66
,67
,68
,69
,70
,71
,72
,73
,74
,75
,76
,77
,79
,80
,81
,82
,83
,84
,85
,86
,87
,88
,89
,92
,93
,94
,95
,96
,98
,99
,100
,101
,102
,103
,104
,106
,110
,111
,113
,116
,117
,118
,120
,122
,127
,134
,140
,150
,152
,177
,192
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_VERS', distcnt => 117, density => .0000022390800068068, nullcnt => 0, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1001','1001');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_VSBT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 4, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_DLTDDT', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C626412';
srec.epc := 98;
srec.bkvals := DBMS_STATS.NUMARRAY(
32
,102
,105
,3351
,3354
,3356
,3385
,16290
,16295
,16298
,16305
,16671
,16777
,16784
,17509
,21747
,22272
,29412
,32420
,33263
,42697
,43231
,43772
,59541
,59656
,78810
,78984
,79016
,87100
,89911
,89914
,97760
,112130
,112869
,114144
,114955
,126285
,126432
,126602
,126681
,126746
,130403
,143545
,145429
,145438
,146756
,148904
,149099
,149100
,149592
,151824
,154961
,162605
,162753
,162762
,162768
,162772
,162810
,162828
,166285
,166288
,166294
,166310
,166744
,166940
,167242
,167574
,167811
,168022
,168192
,168424
,168643
,168658
,168659
,173953
,173954
,177316
,177343
,177365
,179380
,180373
,184885
,191110
,195410
,197417
,197418
,199775
,204258
,209398
,213773
,218187
,219564
,220276
,223121
,223137
,223214
,223237
,223306
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000020
,10000050
,10000052
,10000053
,10000058
,10000084
,10000101
,10543612
,10543615
,10543616
,10543618
,10543624
,10543625
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10573830
,10573844
,10591892
,10619573
,10621934
,10621935
,10621944
,10629658
,10636254
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10687470
,10691234
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11170905
,11190843
,11191549
,11258232
,11280884
,11280885
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11329381
,11337718
,11354776
,11371997
,11424617
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11655183
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_LAS_ACT_BY', distcnt => 98, density => .0000022390800068068, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B010115';
srec.maxval := 'C40C626412';
srec.epc := 98;
srec.bkvals := DBMS_STATS.NUMARRAY(
72
,73
,3536
,3539
,3541
,3572
,17386
,17392
,17395
,17403
,17439
,17528
,17539
,18424
,23349
,24159
,29941
,33514
,34959
,45281
,45847
,46385
,63412
,63737
,83669
,84065
,84083
,89246
,90775
,90786
,97319
,107845
,108352
,109628
,110473
,122501
,122770
,122806
,122868
,122989
,127340
,142239
,144626
,144633
,144654
,145977
,148661
,148856
,148857
,149366
,152128
,153065
,161814
,162039
,162048
,162054
,162085
,162105
,162110
,165663
,165665
,165667
,165684
,166136
,166359
,166685
,167060
,167316
,167536
,167710
,167944
,168162
,168175
,168176
,173959
,173960
,177110
,177148
,177173
,179223
,180293
,186602
,193169
,197564
,199862
,199863
,201866
,206522
,210905
,214932
,218805
,220118
,220698
,223121
,223137
,223214
,223237
,223306
);
srec.novals := DBMS_STATS.NUMARRAY(
10000020
,10000050
,10000052
,10000053
,10000058
,10000084
,10000101
,10543612
,10543615
,10543616
,10543618
,10543624
,10543625
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10573830
,10573844
,10591892
,10619573
,10621934
,10621935
,10621944
,10629658
,10636254
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11190843
,11191549
,11217577
,11258232
,11280884
,11280885
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11329381
,11337718
,11354776
,11371997
,11424617
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11655183
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_ORIGCRTR', distcnt => 98, density => .0000022390800068068, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_LAS_ACT_BY_LOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_UNIVID', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_DDLNALRTRCPT', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('  BI ANNUAL REVIEW','?	Mail Life Planning letter (*found at Case Level) w/ Advanced D');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_NAM', distcnt => 26378, density => .0000379103798620062, nullcnt => 5523, avgclen => 23, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('			','?CM LETTER No Response Final? mailed by CM Asst. to mbr due to n');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_DSCN', distcnt => 29616, density => .0000337655321447866, nullcnt => 17948, avgclen => 62, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','325499');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_DRTN_AMNT', distcnt => 94, density => .0106382978723404, nullcnt => 220430, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C106';
srec.epc := 5;
srec.bkvals := DBMS_STATS.NUMARRAY(
709
,859
,2869
,2870
,2876
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,2
,3
,4
,5
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_DRTN_UNIT', distcnt => 5, density => .000173852573018081, nullcnt => 220430, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','30');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_RMDRPRCDWTH__AMNT', distcnt => 8, density => .125, nullcnt => 223267, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C104';
srec.epc := 3;
srec.bkvals := DBMS_STATS.NUMARRAY(
6
,32
,39
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,2
,3
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_RMDRPRCDWTH__UNIT', distcnt => 3, density => .0128205128205128, nullcnt => 223267, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_PRNL', distcnt => 2, density => .5, nullcnt => 86955, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('  BI ANNUAL REVIEW','?	Mail Life Planning letter (*found at Case Level) w/ Advanced D');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_SUBJ', distcnt => 30536, density => .0000327482315954938, nullcnt => 2, avgclen => 25, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('			','?CM LETTER No Response Final? mailed by CM Asst. to mbr due to n');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CMMT', distcnt => 83392, density => .000011991557943208, nullcnt => 26547, avgclen => 69, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '787009070C022C';
srec.maxval := '78780A1F130B0D';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,25
,48
,72
,95
,119
,142
,166
,189
,213
,236
,260
,283
,307
,330
,354
,377
,401
,424
,448
,471
,495
,518
,542
,566
,589
,613
,636
,660
,683
,707
,730
,754
,777
,801
,824
,848
,871
,895
,918
,942
,965
,989
,1012
,1036
,1059
,1083
,1107
,1130
,1154
,1177
,1201
,1224
,1248
,1271
,1295
,1318
,1342
,1365
,1389
,1412
,1436
,1459
,1483
,1506
,1530
,1553
,1577
,1600
,1624
,1648
,1671
,1695
,1718
,1742
,1765
,1789
,1812
,1836
,1859
,1883
,1906
,1930
,1953
,1977
,2000
,2024
,2047
,2071
,2094
,2118
,2141
,2165
,2189
,2212
,2236
,2259
,2283
,2306
,2330
,2353
,2377
,2400
,2424
,2447
,2471
,2494
,2518
,2541
,2565
,2588
,2612
,2635
,2659
,2682
,2706
,2730
,2753
,2777
,2800
,2824
,2847
,2871
,2894
,2918
,2941
,2965
,2988
,3012
,3035
,3059
,3082
,3106
,3129
,3153
,3176
,3200
,3223
,3247
,3271
,3294
,3318
,3341
,3365
,3388
,3412
,3435
,3459
,3482
,3506
,3529
,3553
,3576
,3600
,3623
,3647
,3670
,3694
,3717
,3741
,3764
,3788
,3812
,3835
,3859
,3882
,3906
,3929
,3953
,3976
,4000
,4023
,4047
,4070
,4094
,4117
,4141
,4164
,4188
,4211
,4235
,4258
,4282
,4305
,4329
,4353
,4376
,4400
,4423
,4447
,4470
,4494
,4517
,4541
,4564
,4588
,4611
,4635
,4658
,4682
,4705
,4729
,4752
,4776
,4799
,4823
,4846
,4870
,4894
,4917
,4941
,4964
,4988
,5011
,5035
,5058
,5082
,5105
,5129
,5152
,5176
,5199
,5223
,5246
,5270
,5293
,5317
,5340
,5364
,5387
,5411
,5435
,5458
,5482
,5505
,5529
,5552
,5576
,5599
,5623
,5646
,5670
,5693
,5717
,5740
,5764
,5787
,5811
,5834
,5858
,5881
,5905
,5928
,5952
);
srec.novals := DBMS_STATS.NUMARRAY(
2456178.45952546
,2456596.71586806
,2456637.68875
,2456661.52020833
,2456681.69079861
,2456701.64137732
,2456727.40363426
,2456735.83413194
,2456748.47237269
,2456764.33447917
,2456787.36119213
,2456805.39445602
,2456821.46450232
,2456835.39708333
,2456848.41946759
,2456860.40648148
,2456871.45866898
,2456888.39087963
,2456897.30987269
,2456911.46069444
,2456920.50005787
,2456930.56953704
,2456940.38832176
,2456951.6841088
,2456958.46717593
,2456962.63489583
,2456972.54233796
,2456986.44086806
,2456995.61300926
,2457003.34258102
,2457010.42283565
,2457022.57291667
,2457035.62292824
,2457042.38645833
,2457052.43630787
,2457059.71480324
,2457066.61533565
,2457077.45505787
,2457086.70667824
,2457099.67436343
,2457112.44849537
,2457119.71298611
,2457134.54142361
,2457143.44288194
,2457151.6077662
,2457161.47962963
,2457172.75038194
,2457186.58396991
,2457196.48962963
,2457205.54693287
,2457219.47859954
,2457232.48969907
,2457240.65783565
,2457253.56791667
,2457263.46466435
,2457275.41349537
,2457289.36027778
,2457297.37606481
,2457310.29984954
,2457319.64789352
,2457330.67520833
,2457344.41017361
,2457357.37246528
,2457371.40540509
,2457387.46196759
,2457401.72658565
,2457409.59047454
,2457424.61413194
,2457436.58518519
,2457444.5090625
,2457457.57016204
,2457471.57228009
,2457486.55487269
,2457500.42162037
,2457519.6584838
,2457526.41445602
,2457535.56259259
,2457557.46054398
,2457571.49212963
,2457584.49909722
,2457599.50813657
,2457612.49396991
,2457623.47596065
,2457638.42138889
,2457648.46362269
,2457659.45662037
,2457665.60159722
,2457675.4127662
,2457683.68491898
,2457697.36356482
,2457707.43224537
,2457721.64277778
,2457728.35570602
,2457738.40943287
,2457759.79202546
,2457770.37167824
,2457779.3459838
,2457787.56002315
,2457802.53262732
,2457819.47908565
,2457840.37502315
,2457856.39320602
,2457872.75658565
,2457890.68037037
,2457912.45179398
,2457926.64149306
,2457945.46956019
,2457960.42524306
,2457969.3697338
,2457983.57850694
,2458003.4666088
,2458011.73077546
,2458012.72957176
,2458018.69260417
,2458034.37805556
,2458052.37321759
,2458067.70325231
,2458080.59493056
,2458090.5034375
,2458107.47256944
,2458130.51528935
,2458152.68944444
,2458176.53993056
,2458187.41909722
,2458205.58798611
,2458222.72832176
,2458241.51096065
,2458261.4556713
,2458278.5931713
,2458299.68834491
,2458327.56225694
,2458339.40570602
,2458361.62965278
,2458379.39230324
,2458403.37709491
,2458425.60283565
,2458449.40578704
,2458466.72625
,2458491.49077546
,2458512.43619213
,2458526.68290509
,2458547.604375
,2458568.57084491
,2458584.69259259
,2458596.35328704
,2458610.40025463
,2458620.61219907
,2458635.41047454
,2458649.43378472
,2458674.59524306
,2458691.42679398
,2458705.67806713
,2458722.3521412
,2458736.7728125
,2458753.69083333
,2458771.65074074
,2458787.41340278
,2458799.55375
,2458807.4225
,2458810.49555556
,2458815.44012732
,2458821.3974537
,2458825.52126157
,2458829.68585648
,2458834.62643519
,2458837.61388889
,2458848.4328588
,2458851.6734838
,2458856.68203704
,2458858.59332176
,2458862.68834491
,2458865.39701389
,2458868.74206019
,2458872.42587963
,2458873.69736111
,2458876.71760417
,2458879.54282407
,2458881.49209491
,2458884.67575231
,2458887.39090278
,2458890.37943287
,2458891.47243056
,2458892.62663194
,2458894.67342593
,2458898.42202546
,2458899.61505787
,2458900.63408565
,2458904.38677083
,2458905.37625
,2458906.64015046
,2458907.65675926
,2458909.34577546
,2458911.67708333
,2458913.61130787
,2458915.59952546
,2458920.42609954
,2458922.40915509
,2458925.52472222
,2458927.61430556
,2458929.38853009
,2458932.46671296
,2458935.48967593
,2458940.65734954
,2458947.40988426
,2458950.78349537
,2458955.49517361
,2458957.7606713
,2458962.48804398
,2458964.59019676
,2458968.39103009
,2458971.47950231
,2458975.6187963
,2458978.54710648
,2458983.60256944
,2458985.48590278
,2458989.69768519
,2458991.75928241
,2458997.47017361
,2459002.36375
,2459003.66086806
,2459006.59372685
,2459011.65774306
,2459013.71649306
,2459018.54841435
,2459023.42023148
,2459026.36096065
,2459031.46524306
,2459037.44407407
,2459040.45236111
,2459044.37732639
,2459046.56612269
,2459053.35144676
,2459054.69474537
,2459059.62172454
,2459065.48128472
,2459068.47540509
,2459072.70016204
,2459080.50011574
,2459082.39836806
,2459087.65516204
,2459093.39701389
,2459101.5587963
,2459104.60915509
,2459109.39162037
,2459114.6441088
,2459116.61206019
,2459121.54854167
,2459124.61060185
,2459129.62758102
,2459135.40798611
,2459139.39538194
,2459145.50658565
,2459150.40579861
,2459154.75708333
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CMPD', distcnt => 176128, density => .000006, nullcnt => 43112, avgclen => 7, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','3');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_RMDRTIM_ORGN', distcnt => 3, density => .333333333333333, nullcnt => 223267, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','120');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_DDLNTIM_BLCK_AMNT', distcnt => 17, density => .0588235294117647, nullcnt => 221644, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','5');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_DDLNTIM_BLCK_UNIT', distcnt => 5, density => .2, nullcnt => 221644, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('
Case closed
','wrong template-needed the level1 not level0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CNCLCMMT', distcnt => 1388, density => .000720461095100865, nullcnt => 214294, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2012-09-04/10:09:12','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-31/18:09:47','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_SENT', distcnt => 206864, density => .00000483409389743986, nullcnt => 4277, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('0014-08-02/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-31/18:10:02','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_SRTD', distcnt => 144464, density => .00000692213977184627, nullcnt => 36812, avgclen => 7, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2012-09-07/11:01:43','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-31/18:10:12','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TMTD', distcnt => 178000, density => .00000561797752808989, nullcnt => 41208, avgclen => 7, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_OTCM', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('1','99999');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_WKFWISTCID', distcnt => 222576, density => .00000449284738695996, nullcnt => 0, avgclen => 7, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CNV_ID', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_OWNRCHNDFLAG', distcnt => 2, density => .5, nullcnt => 1, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','5');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_OWNRCHNDCNT', distcnt => 6, density => .166666666666667, nullcnt => 4277, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_SRC__SRC_TYP', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '78700905010101';
srec.maxval := '78780B04010101';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,8
,16
,26
,37
,52
,60
,74
,86
,98
,111
,126
,135
,143
,152
,159
,174
,185
,195
,202
,210
,219
,232
,247
,262
,274
,284
,293
,308
,326
,342
,351
,368
,380
,392
,411
,427
,443
,451
,460
,475
,489
,505
,517
,527
,545
,560
,574
,583
,593
,608
,620
,637
,652
,675
,688
,703
,718
,730
,748
,756
,763
,770
,792
,803
,828
,842
,850
,860
,870
,877
,886
,893
,901
,917
,929
,949
,957
,965
,974
,986
,993
,1002
,1013
,1040
,1051
,1059
,1070
,1082
,1091
,1098
,1108
,1123
,1132
,1141
,1155
,1162
,1177
,1193
,1200
,1207
,1217
,1227
,1242
,1250
,1265
,1272
,1288
,1305
,1313
,1321
,1329
,1337
,1353
,1363
,1370
,1378
,1389
,1399
,1410
,1417
,1426
,1439
,1457
,1468
,1475
,1485
,1499
,1515
,1532
,1539
,1549
,1556
,1592
,1617
,1633
,1640
,1647
,1655
,1662
,1675
,1683
,1691
,1698
,1705
,1713
,1751
,1759
,1768
,1776
,1783
,1792
,1801
,1809
,1816
,1823
,1841
,1849
,1877
,1885
,1893
,1901
,1909
,1917
,1925
,1933
,1944
,1951
,1960
,1967
,1974
,1981
,1995
,2002
,2010
,2017
,2027
,2040
,2048
,2056
,2074
,2081
,2089
,2099
,2106
,2113
,2120
,2129
,2136
,2162
,2170
,2178
,2187
,2203
,2214
,2221
,2228
,2229
,2230
,2231
,2235
,2236
,2237
,2238
,2240
,2241
,2242
,2243
,2244
,2245
,2246
,2247
,2248
,2249
,2250
,2251
,2252
,2253
,2254
,2255
,2256
,2257
,2259
,2260
,2261
,2262
,2272
,2273
,2287
,2288
,2289
,2290
,2291
,2306
,2307
,2308
,2309
,2310
,2311
,2317
,2318
,2322
,2323
,2325
,2326
,2338
,2340
,2343
,2346
,2348
,2349
,2353
,2358
,2364
);
srec.novals := DBMS_STATS.NUMARRAY(
2456176
,2456206
,2456545
,2456547
,2456549
,2456554
,2456556
,2456560
,2456562
,2456563
,2456566
,2456567
,2456568
,2456569
,2456570
,2456573
,2456575
,2456576
,2456580
,2456581
,2456582
,2456583
,2456584
,2456587
,2456589
,2456590
,2456591
,2456594
,2456596
,2456601
,2456602
,2456603
,2456605
,2456608
,2456609
,2456611
,2456612
,2456616
,2456617
,2456618
,2456619
,2456621
,2456622
,2456623
,2456624
,2456629
,2456630
,2456631
,2456632
,2456633
,2456636
,2456637
,2456638
,2456639
,2456640
,2456643
,2456644
,2456645
,2456646
,2456647
,2456648.27096065
,2456650
,2456653
,2456657
,2456659
,2456660
,2456661
,2456661.27100694
,2456664
,2456665
,2456666
,2456667
,2456668.2709838
,2456671
,2456672
,2456673
,2456674
,2456675.27094907
,2456677
,2456680
,2456682
,2456683.25018519
,2456685
,2456687
,2456688
,2456689
,2456692
,2456693
,2456694
,2456696
,2456699
,2456700
,2456701
,2456702
,2456703
,2456706
,2456707.25032407
,2456708
,2456709
,2456710.25024306
,2456710.25027778
,2456713
,2456715
,2456716
,2456717
,2456720
,2456721.25043982
,2456722
,2456723
,2456723.2503125
,2456724.25021991
,2456724.25027778
,2456727
,2456729
,2456730
,2456730.2502662
,2456731.2502662
,2456735
,2456736
,2456738
,2456738.25097222
,2456741
,2456742
,2456743
,2456744
,2456745
,2456745.25030093
,2456748
,2456749
,2456750
,2456750.2502662
,2456751
,2456751.25030093
,2456752
,2456755
,2456756
,2456756.25037037
,2456757.2518287
,2456757.25188657
,2456758.25070602
,2456762
,2456763.2509375
,2456764.25059028
,2456764.25063657
,2456765.25038194
,2456768
,2456769
,2456770.25045139
,2456770.25048611
,2456770.25052083
,2456771.25090278
,2456772
,2456773
,2456773.40561343
,2456777
,2456778
,2456779
,2456780.25028935
,2456783
,2456784.2502662
,2456785
,2456786.25021991
,2456793
,2456801
,2456806
,2456811
,2456814
,2456820
,2456834
,2456839
,2456853
,2456863
,2456870
,2456881
,2456883
,2456890
,2456904
,2456914
,2456919
,2456931
,2456932
,2456940
,2456959
,2456965
,2456969
,2456975
,2456993
,2457000
,2457003
,2457010
,2457023
,2457038
,2457039
,2457053
,2457058
,2457081
,2457115
,2457123
,2457176
,2457396
,2457927
,2458289
,2458331
,2458337
,2458345
,2458348
,2458354
,2458376
,2458390
,2458403
,2458493
,2458562
,2458781
,2458921
,2458922
,2458925
,2458935
,2458941
,2458948
,2458956
,2458958
,2458965
,2458983
,2458984
,2458998
,2459033
,2459039
,2459040
,2459045
,2459053
,2459054
,2459055
,2459057
,2459058
,2459060
,2459061
,2459067
,2459075
,2459079
,2459086
,2459089
,2459093
,2459111
,2459117
,2459124
,2459125
,2459135
,2459136
,2459137
,2459138
,2459144
,2459150
,2459151
,2459158
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,1
,3
,7
,8
,9
,7
,8
,6
,12
,13
,15
,9
,8
,9
,7
,11
,11
,3
,7
,8
,9
,13
,15
,10
,12
,10
,9
,12
,13
,16
,9
,12
,12
,12
,13
,16
,9
,8
,9
,15
,14
,16
,12
,10
,15
,15
,14
,9
,10
,15
,12
,17
,15
,23
,12
,15
,13
,10
,11
,3
,6
,4
,21
,5
,25
,14
,3
,6
,10
,7
,7
,1
,8
,16
,7
,17
,2
,1
,7
,7
,2
,9
,6
,22
,7
,6
,11
,8
,3
,2
,10
,10
,6
,5
,9
,1
,11
,12
,2
,3
,6
,6
,12
,6
,11
,1
,12
,14
,3
,3
,2
,4
,12
,6
,1
,2
,5
,5
,7
,1
,6
,13
,11
,9
,1
,4
,11
,15
,12
,3
,8
,1
,36
,20
,16
,1
,1
,4
,2
,8
,2
,1
,2
,1
,4
,38
,2
,3
,2
,3
,9
,4
,1
,3
,5
,12
,1
,28
,3
,2
,1
,2
,3
,2
,3
,9
,1
,2
,4
,2
,1
,11
,2
,3
,5
,3
,8
,2
,3
,18
,2
,2
,5
,1
,1
,1
,3
,2
,21
,5
,4
,9
,10
,6
,3
,1
,1
,1
,1
,4
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,10
,1
,14
,1
,1
,1
,1
,15
,1
,1
,1
,1
,1
,6
,1
,4
,1
,2
,1
,12
,2
,3
,3
,2
,1
,4
,5
,2
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_DDLN_DT', distcnt => 642, density => .001287, nullcnt => 220942, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','86399');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_DDLN_TIM_IN_DY', distcnt => 276, density => .0036231884057971, nullcnt => 220942, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C104';
srec.epc := 3;
srec.bkvals := DBMS_STATS.NUMARRAY(
53
,83
,49094
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,2
,3
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_DDLNACT', distcnt => 3, density => .0000101845439361225, nullcnt => 174212, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '64720802010101';
srec.maxval := '78790503010101';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,24
,46
,67
,91
,114
,140
,162
,183
,210
,231
,256
,281
,305
,336
,358
,379
,402
,425
,449
,471
,494
,517
,539
,566
,599
,622
,645
,667
,695
,720
,749
,777
,808
,836
,860
,884
,911
,939
,963
,986
,1015
,1044
,1065
,1092
,1117
,1144
,1169
,1192
,1222
,1244
,1266
,1288
,1313
,1335
,1356
,1378
,1402
,1427
,1450
,1475
,1498
,1520
,1548
,1570
,1591
,1616
,1644
,1669
,1693
,1714
,1739
,1760
,1785
,1807
,1828
,1856
,1878
,1900
,1924
,1946
,1970
,1991
,2015
,2037
,2059
,2080
,2102
,2124
,2145
,2167
,2188
,2211
,2234
,2257
,2281
,2304
,2325
,2349
,2375
,2397
,2419
,2442
,2465
,2486
,2508
,2529
,2550
,2572
,2594
,2617
,2639
,2663
,2684
,2705
,2727
,2748
,2771
,2794
,2828
,2906
,2953
,2975
,2996
,3018
,3040
,3083
,3105
,3126
,3147
,3171
,3194
,3217
,3240
,3265
,3289
,3310
,3334
,3355
,3380
,3406
,3428
,3450
,3471
,3495
,3518
,3540
,3563
,3587
,3609
,3633
,3655
,3684
,3705
,3727
,3749
,3770
,3792
,3814
,3838
,3862
,3886
,3908
,3929
,3954
,3980
,4002
,4031
,4052
,4076
,4097
,4119
,4146
,4178
,4206
,4227
,4251
,4272
,4294
,4318
,4348
,4377
,4400
,4435
,4459
,4485
,4512
,4542
,4564
,4588
,4620
,4651
,4678
,4702
,4725
,4754
,4778
,4799
,4822
,4843
,4868
,4896
,4919
,4945
,4967
,4988
,5013
,5034
,5060
,5082
,5112
,5134
,5156
,5178
,5199
,5224
,5246
,5267
,5289
,5312
,5334
,5359
,5380
,5404
,5425
,5452
,5454
,5455
,5456
,5457
,5458
,5463
,5464
,5469
,5470
,5471
,5472
,5475
,5481
,5482
,5483
,5489
,5491
,5492
,5494
,5497
,5498
,5499
,5503
,5504
,5505
,5510
,5511
,5514
);
srec.novals := DBMS_STATS.NUMARRAY(
1726385
,2456549
,2456561
,2456568
,2456575
,2456581
,2456587
,2456589.62782407
,2456594.44986111
,2456602
,2456609.4312963
,2456622
,2456630
,2456638
,2456644
,2456650
,2456664
,2456673
,2456679
,2456687
,2456693
,2456701
,2456707
,2456714
,2456722
,2456727
,2456734
,2456741
,2456745
,2456751
,2456755
,2456763
,2456769
,2456776
,2456779
,2456785
,2456791
,2456794
,2456800
,2456806
,2456811
,2456814
,2456821
,2456826
,2456832
,2456836
,2456846
,2456853
,2456856
,2456864
,2456871
,2456877
,2456884
,2456891
,2456897
,2456905
,2456912
,2456918
,2456925
,2456931
,2456940
,2456946
,2456954
,2456961
,2456967
,2456976
,2456986
,2456996
,2457004
,2457014
,2457023
,2457031
,2457037
,2457044
,2457052
,2457060
,2457067
,2457078
,2457086
,2457094
,2457102
,2457114
,2457127
,2457141
,2457157
,2457179
,2457197
,2457220
,2457241
,2457259
,2457268
,2457288
,2457311
,2457331
,2457358
,2457386
,2457407
,2457438
,2457463
,2457480
,2457504.7321412
,2457519
,2457543
,2457562
,2457585
,2457602
,2457626
,2457655
,2457674
,2457702
,2457723
,2457770
,2457799
,2457835
,2457886
,2457940
,2457966
,2457994
,2458005
,2458011
,2458012
,2458013
,2458030.60232639
,2458052.50380787
,2458065
,2458085
,2458090
,2458095
,2458121.5491088
,2458148
,2458166
,2458184
,2458201.42405093
,2458213
,2458234
,2458262
,2458296
,2458319
,2458347
,2458359
,2458368
,2458395
,2458423.64138889
,2458464
,2458493
,2458512
,2458522
,2458542
,2458553
,2458563
,2458572
,2458582
,2458598
,2458610
,2458628
,2458635
,2458659
,2458680
,2458705
,2458726
,2458746
,2458758
,2458774
,2458789
,2458806
,2458809
,2458813.70454861
,2458820
,2458825.6258912
,2458828
,2458831
,2458837.65219907
,2458848
,2458857
,2458862
,2458868
,2458872
,2458876.43800926
,2458879
,2458884
,2458887
,2458892
,2458898
,2458901
,2458904
,2458907
,2458909
,2458912
,2458918
,2458920
,2458925
,2458928
,2458933
,2458936
,2458942
,2458948
,2458953
,2458957
,2458964
,2458968.478125
,2458974
,2458978
,2458983
,2458988
,2458991
,2458997.68689815
,2459004
,2459009
,2459013
,2459019
,2459025
,2459030.4127662
,2459037
,2459041.70196759
,2459052.49415509
,2459055
,2459061.67898148
,2459069
,2459075.68447917
,2459083
,2459090
,2459102
,2459111
,2459121
,2459125
,2459136
,2459136.57074074
,2459136.60108796
,2459136.60109954
,2459136.7193287
,2459136.72636574
,2459137
,2459137.45434028
,2459138
,2459138.50738426
,2459138.63243056
,2459138.65299769
,2459139
,2459142
,2459142.61798611
,2459142.62233796
,2459143
,2459144
,2459144.50520833
,2459145
,2459146
,2459149
,2459149.58957176
,2459150
,2459150.56421296
,2459151
,2459152
,2459152.48686343
,2459338
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,3
,3
,5
,5
,8
,6
,1
,1
,7
,1
,7
,6
,4
,10
,6
,3
,2
,3
,4
,8
,6
,7
,7
,8
,14
,3
,3
,5
,9
,11
,8
,11
,13
,8
,5
,9
,10
,11
,9
,6
,11
,9
,10
,11
,5
,9
,6
,8
,10
,3
,7
,4
,8
,6
,3
,7
,8
,4
,5
,5
,4
,6
,9
,4
,4
,4
,9
,4
,7
,3
,8
,4
,5
,5
,2
,9
,4
,2
,4
,2
,6
,4
,3
,2
,2
,2
,2
,4
,2
,5
,2
,3
,4
,3
,3
,3
,2
,3
,8
,1
,4
,3
,2
,1
,2
,2
,1
,2
,2
,2
,2
,4
,1
,1
,1
,4
,2
,3
,24
,77
,44
,1
,1
,3
,1
,37
,2
,1
,4
,3
,8
,2
,4
,6
,4
,1
,4
,2
,8
,6
,2
,1
,1
,3
,6
,2
,3
,5
,3
,8
,3
,8
,3
,2
,4
,1
,1
,4
,4
,7
,6
,1
,1
,4
,6
,1
,12
,1
,9
,3
,1
,8
,15
,10
,1
,6
,1
,4
,12
,12
,11
,3
,15
,22
,17
,8
,13
,4
,11
,12
,14
,7
,5
,8
,10
,11
,1
,6
,1
,8
,10
,10
,8
,5
,1
,6
,4
,5
,2
,10
,1
,8
,1
,1
,9
,1
,6
,1
,5
,5
,5
,2
,4
,5
,6
,1
,1
,1
,1
,1
,5
,1
,5
,1
,1
,1
,3
,6
,1
,1
,6
,2
,1
,2
,3
,1
,1
,4
,1
,1
,5
,1
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_STRTDT', distcnt => 5214, density => .000029, nullcnt => 168916, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','86399');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_SCLDAT', distcnt => 32208, density => .0000310481867858917, nullcnt => 29508, avgclen => 4, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_SNLTTSK', distcnt => 2, density => .5, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('0015-02-15/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2022-07-11/00:00:00','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_SNLTDT', distcnt => 2365, density => .000422832980972516, nullcnt => 54390, avgclen => 7, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_SNLTACT', distcnt => 2, density => .5, nullcnt => 50547, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_DDLNBFR_NXT_IRTN', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','5');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_DDLNSLTN', distcnt => 4, density => .25, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TIMG_SCLD', distcnt => 1, density => 1, nullcnt => 138735, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10224367');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_ID', distcnt => 223306, density => .00000447816001361361, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SCBT_STRTTIM_BLCK_AMNT', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SCBT_STRTTIM_BLCK_UNIT', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SCBT_NMBR', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SCBT_AFT_EACHISTC', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SCBT_ID', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_AFFN_UM_EVNTREQT', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_AFFN_UM_EXTN', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_AFFN_PVDR', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000020','10425609');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_AFFN_CM', distcnt => 42344, density => .0000236160967315322, nullcnt => 55193, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000209','11987371');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_AFFN_MEMB', distcnt => 17032, density => .000058713010803194, nullcnt => 168134, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C40B1D0A32';
srec.maxval := 'C40B244461';
srec.epc := 20;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,2
,3
,5
,6
,7
,8
,9
,10
,11
,12
,13
,14
,15
,16
,17
,18
,19
,20
,21
);
srec.novals := DBMS_STATS.NUMARRAY(
10280949
,10286112
,10286475
,10288414
,10288453
,10293425
,10295359
,10295412
,10295415
,10296539
,10297922
,10298968
,10309856
,10310990
,10328798
,10349555
,10350570
,10354956
,10355218
,10356796
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_AFFN_UM_EVNT', distcnt => 20, density => .0238095238095238, nullcnt => 223285, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C626412';
srec.epc := 188;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,124
,438
,440
,441
,442
,443
,444
,445
,446
,447
,448
,449
,450
,452
,453
,454
,455
,456
,457
,458
,459
,460
,461
,462
,463
,464
,465
,466
,467
,468
,469
,470
,471
,472
,473
,474
,475
,476
,477
,478
,479
,480
,481
,482
,490
,493
,512
,685
,701
,910
,987
,1011
,1339
,1354
,1373
,1932
,1942
,2597
,2600
,2601
,2602
,2872
,2971
,2972
,2973
,2974
,3223
,3224
,3661
,3677
,3715
,3756
,3757
,4102
,4103
,4104
,4109
,4110
,4111
,4113
,4114
,4115
,4116
,4117
,4229
,4667
,4731
,4733
,4734
,4735
,4736
,4737
,4738
,4782
,4783
,4784
,4785
,4851
,4856
,4857
,4858
,4860
,4861
,4862
,4863
,4864
,4865
,4866
,4945
,4946
,4947
,4948
,4949
,4950
,5043
,5044
,5309
,5310
,5311
,5312
,5313
,5318
,5319
,5321
,5322
,5323
,5324
,5325
,5326
,5327
,5328
,5329
,5330
,5331
,5332
,5333
,5334
,5454
,5455
,5456
,5457
,5462
,5465
,5467
,5478
,5481
,5492
,5501
,5512
,5517
,5521
,5529
,5530
,5531
,5532
,5533
,5534
,5536
,5537
,5538
,5539
,5542
,5543
,5544
,5719
,5722
,5726
,5728
,5839
,5840
,5910
,5943
,6080
,6288
,6439
,6510
,6586
,6725
,6887
,7060
,7222
,7255
,7282
,7359
,7362
,7363
,7366
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000052
,10000101
,10084014
,10087560
,10098405
,10109415
,10112291
,10122598
,10137503
,10145913
,10149926
,10162043
,10171182
,10182009
,10190983
,10206766
,10214079
,10222354
,10229405
,10230287
,10234731
,10240528
,10242248
,10245687
,10248485
,10249867
,10252526
,10254694
,10256492
,10260822
,10276481
,10284210
,10422823
,10457446
,10466719
,10467595
,10477338
,10491324
,10492138
,10497339
,10502765
,10519298
,10538591
,10543615
,10543618
,10543624
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10565349
,10573830
,10573844
,10576388
,10577736
,10618296
,10619573
,10620651
,10621934
,10621935
,10621944
,10629658
,10631030
,10636254
,10639040
,10642634
,10648712
,10656714
,10658651
,10660787
,10661757
,10669223
,10669452
,10669552
,10672217
,10672218
,10672219
,10673714
,10673804
,10674360
,10684357
,10688645
,10689982
,10691234
,10692577
,10700185
,10700829
,10700843
,10700940
,10701202
,10703308
,10705182
,10708283
,10708729
,10710726
,10710895
,10712091
,10714166
,10715811
,10716190
,10723501
,10725646
,10727036
,10729730
,10730600
,10914550
,10927938
,11021054
,11021418
,11032197
,11035305
,11036513
,11054470
,11055581
,11073121
,11080384
,11097012
,11099057
,11107121
,11107315
,11170188
,11180549
,11189743
,11190843
,11191549
,11217602
,11228937
,11258232
,11276562
,11277520
,11280262
,11280885
,11280888
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11286676
,11290537
,11291900
,11292116
,11292150
,11293020
,11293161
,11321868
,11325192
,11329381
,11357082
,11362189
,11371997
,11632026
,11632027
,11632028
,11632127
,11632128
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,123
,314
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,8
,3
,19
,173
,16
,209
,77
,24
,328
,15
,19
,559
,10
,655
,3
,1
,1
,270
,99
,1
,1
,1
,249
,1
,437
,16
,38
,41
,1
,345
,1
,1
,5
,1
,1
,2
,1
,1
,1
,1
,112
,438
,64
,2
,1
,1
,1
,1
,1
,44
,1
,1
,1
,66
,5
,1
,1
,2
,1
,1
,1
,1
,1
,1
,79
,1
,1
,1
,1
,1
,93
,1
,265
,1
,1
,1
,1
,5
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,120
,1
,1
,1
,5
,3
,2
,11
,3
,11
,9
,11
,5
,4
,8
,1
,1
,1
,1
,1
,2
,1
,1
,1
,3
,1
,1
,175
,3
,4
,2
,111
,1
,70
,33
,137
,208
,151
,71
,76
,139
,162
,173
,162
,33
,27
,77
,3
,1
,3
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_ORIGRCPT', distcnt => 1499, density => .000064, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10182648','12301499');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_RFNGWKFWTSK', distcnt => 1669, density => .000599161174355902, nullcnt => 221637, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10007157','12301500');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_PRVSRFNGTSK', distcnt => 216480, density => .00000461936437546194, nullcnt => 7814, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10007157','12301500');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_PRVSRFNGTSK_PRMN', distcnt => 216480, density => .00000461936437546194, nullcnt => 7808, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C626412';
srec.epc := 144;
srec.bkvals := DBMS_STATS.NUMARRAY(
8
,71
,72
,73
,3443
,3446
,3448
,3449
,3479
,13288
,13292
,13296
,13300
,13302
,13306
,13310
,13314
,13318
,13322
,13326
,13330
,13334
,13336
,13338
,13341
,13345
,13353
,13357
,13361
,13365
,13369
,13371
,13373
,13375
,13378
,13388
,13395
,13398
,13410
,13720
,13819
,13826
,13828
,14626
,19063
,19624
,26056
,28760
,29669
,39206
,39740
,40307
,55930
,56113
,75241
,75441
,75458
,75462
,75464
,83658
,86499
,86503
,86507
,86508
,94369
,94371
,94375
,108712
,109421
,110698
,112106
,123390
,123540
,123581
,123668
,123758
,127486
,140264
,142164
,142169
,142176
,143491
,143493
,145381
,145576
,145585
,145672
,147800
,150942
,158486
,158601
,158610
,158616
,158620
,158645
,158666
,158671
,158677
,162146
,162182
,162233
,162434
,162446
,162882
,163079
,163382
,163715
,163952
,164163
,164333
,164564
,164565
,164728
,164739
,164740
,164744
,169835
,169836
,169881
,169945
,169953
,169968
,173317
,173343
,173362
,175267
,176240
,180501
,186683
,190962
,192952
,192953
,195299
,199742
,204991
,209479
,213975
,215327
,216040
,218902
,218916
,218968
,218981
,219029
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000020
,10000050
,10000051
,10000052
,10000053
,10000058
,10000070
,10000084
,10000101
,10079539
,10083279
,10084014
,10087560
,10094862
,10098405
,10099847
,10105519
,10107752
,10111698
,10112367
,10148440
,10179777
,10183397
,10187107
,10188407
,10191894
,10218737
,10218864
,10227241
,10229405
,10252521
,10283473
,10393118
,10466003
,10477338
,10543612
,10543615
,10543616
,10543618
,10543624
,10543625
,10547900
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10565415
,10566016
,10573830
,10573844
,10583336
,10591892
,10614334
,10619573
,10619699
,10619792
,10621934
,10621935
,10621944
,10629658
,10636254
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10699673
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11170905
,11190843
,11191549
,11217577
,11257967
,11258232
,11280884
,11280885
,11280888
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11296887
,11329381
,11337718
,11354776
,11369754
,11371997
,11424617
,11632025
,11632026
,11632027
,11632028
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11655183
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_OWNR', distcnt => 144, density => .00000228280273388455, nullcnt => 4277, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C626412';
srec.epc := 103;
srec.bkvals := DBMS_STATS.NUMARRAY(
2
,53
,1531
,1550
,5763
,5764
,5766
,5773
,5815
,5900
,5903
,6455
,7654
,7991
,9875
,10790
,11656
,15829
,16303
,16484
,21742
,21953
,26865
,27020
,27032
,29228
,30113
,30114
,32124
,35377
,35570
,35951
,36839
,38985
,38986
,39126
,39229
,39315
,39356
,40526
,45134
,45806
,45808
,45820
,46181
,47242
,47437
,47440
,47527
,48233
,48908
,52583
,52697
,52706
,52711
,52712
,52735
,52740
,52745
,52748
,53473
,53495
,53567
,53762
,53779
,54214
,54418
,54722
,55072
,55309
,55522
,55692
,55924
,55994
,55999
,56000
,56625
,56626
,56631
,56646
,56665
,56702
,57314
,57331
,57344
,58030
,58244
,59024
,60352
,61310
,61431
,61848
,62715
,63007
,63492
,64029
,64160
,64239
,64460
,64472
,64498
,64510
,64537
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000020
,10000052
,10000084
,10000101
,10083279
,10543612
,10543616
,10543618
,10543624
,10543625
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10573830
,10573844
,10591892
,10619573
,10621934
,10621935
,10621944
,10629658
,10636254
,10648143
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11170905
,11190843
,11191549
,11217577
,11257967
,11258232
,11280884
,11280885
,11280888
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11329381
,11337718
,11369754
,11371997
,11424617
,11632025
,11632026
,11632027
,11632028
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_PRVSOWNR', distcnt => 103, density => .00000774749368579265, nullcnt => 158769, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C626412';
srec.epc := 103;
srec.bkvals := DBMS_STATS.NUMARRAY(
2
,53
,1531
,1550
,5763
,5764
,5766
,5773
,5815
,5900
,5903
,6455
,7654
,7991
,9875
,10790
,11656
,15829
,16303
,16484
,21742
,21953
,26865
,27020
,27032
,29228
,30113
,30114
,32124
,35377
,35570
,35951
,36839
,38985
,38986
,39126
,39229
,39315
,39356
,40526
,45134
,45806
,45808
,45820
,46181
,47242
,47437
,47440
,47527
,48233
,48908
,52583
,52697
,52706
,52711
,52712
,52735
,52740
,52745
,52748
,53473
,53495
,53567
,53762
,53779
,54214
,54418
,54722
,55072
,55309
,55522
,55692
,55924
,55994
,55999
,56000
,56625
,56626
,56631
,56646
,56665
,56702
,57314
,57331
,57344
,58030
,58244
,59024
,60352
,61310
,61431
,61848
,62715
,63007
,63492
,64029
,64160
,64239
,64460
,64472
,64498
,64510
,64537
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000020
,10000052
,10000084
,10000101
,10083279
,10543612
,10543616
,10543618
,10543624
,10543625
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10573830
,10573844
,10591892
,10619573
,10621934
,10621935
,10621944
,10629658
,10636254
,10648143
,10648712
,10656714
,10660787
,10661757
,10672217
,10672218
,10672219
,10676369
,10687470
,10691234
,10700843
,10700940
,10702342
,10705182
,10715811
,10730600
,10927938
,11036513
,11085043
,11103909
,11170905
,11190843
,11191549
,11217577
,11257967
,11258232
,11280884
,11280885
,11280888
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11329381
,11337718
,11369754
,11371997
,11424617
,11632025
,11632026
,11632027
,11632028
,11632127
,11632128
,11632178
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978424
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_PRVSSNDR', distcnt => 103, density => .00000774749368579265, nullcnt => 158769, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_PRVSOWNRPRMN', distcnt => 103, density => .00970873786407767, nullcnt => 158769, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10055912','10055912');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TNFR', distcnt => 1, density => 1, nullcnt => 223305, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_PRVSTNFR', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_SRC__ASMTCARECALC', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_SRC__PAT_ID_QRY', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000289','10887285');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CAUDBY', distcnt => 3130, density => .000319488817891374, nullcnt => 220037, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10944364','12299997');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CSTMFLDS', distcnt => 183856, density => .00000543903924810721, nullcnt => 33661, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C234';
srec.maxval := 'C40B02244F';
srec.epc := 6;
srec.bkvals := DBMS_STATS.NUMARRAY(
12139
,17519
,32948
,34385
,34711
,35264
);
srec.novals := DBMS_STATS.NUMARRAY(
5100
,10000092
,10000093
,10000094
,10000095
,10013578
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_CNCLRESN', distcnt => 6, density => .0000141787658802178, nullcnt => 188042, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_GRP', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SCBT_CAREBEAN', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SCBT_CAREBEANTSK', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C10B';
srec.maxval := 'C40B022437';
srec.epc := 33;
srec.bkvals := DBMS_STATS.NUMARRAY(
120
,2061
,3753
,5253
,5562
,123472
,146247
,148966
,168861
,168912
,200217
,200225
,210151
,215838
,215856
,215858
,215866
,215867
,215868
,215881
,215897
,217325
,218026
,218138
,218169
,218188
,218745
,222375
,222403
,223174
,223254
,223259
,223306
);
srec.novals := DBMS_STATS.NUMARRAY(
10
,104
,105
,109
,112
,126
,129
,131
,132
,139
,141
,148
,149
,153
,93990
,93991
,93992
,93993
,93994
,93995
,93996
,10013199
,10013200
,10013202
,10013206
,10013207
,10013211
,10013214
,10013216
,10013219
,10013220
,10013223
,10013554
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TSK_TYP', distcnt => 33, density => .0000022390800068068, nullcnt => 0, avgclen => 5, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_RETNPTRN', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000001','10222966');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TMPT', distcnt => 219168, density => .00000456270988465469, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000007','10064836');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_TAKNASMTCC_BASE', distcnt => 2799, density => .000357270453733476, nullcnt => 219498, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SETK_UM_BASE', distcnt => 0, density => 0, nullcnt => 223306, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('47024926584346','18446725735557366922');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_STSFVT4HNGTXGHARJKFEH$YQAA', distcnt => 152432, density => .00000656030229872993, nullcnt => 0, avgclen => 12, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('5044711285858676','18445379609794934165');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_STSIZCQSE5TFYM2#BYJWLKKATD', distcnt => 7579, density => .000131943528169943, nullcnt => 0, avgclen => 12, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1563130632297138','18446377293541822553');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_STSNJ78Z9XYTPBEEO561FVERMH', distcnt => 53572, density => .0000186664675576794, nullcnt => 0, avgclen => 12, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '80';
srec.maxval := 'C102';
srec.epc := 2;
srec.bkvals := DBMS_STATS.NUMARRAY(
223305
,223306
);
srec.novals := DBMS_STATS.NUMARRAY(
0
,1
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
,0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_NC00086$', distcnt => 2, density => .0000022390800068068, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C102';
srec.maxval := 'C40C626412';
srec.epc := 189;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,123
,436
,438
,439
,440
,441
,442
,443
,444
,445
,446
,447
,448
,450
,451
,452
,453
,454
,455
,456
,457
,458
,459
,460
,461
,462
,463
,464
,465
,466
,467
,468
,469
,470
,471
,472
,473
,474
,475
,476
,477
,478
,479
,480
,488
,490
,509
,682
,698
,915
,996
,1019
,1342
,1357
,1376
,1925
,1931
,2581
,2584
,2585
,2586
,2862
,2962
,2963
,2964
,2965
,3219
,3220
,3668
,3684
,3722
,3763
,3764
,4106
,4107
,4108
,4114
,4115
,4116
,4119
,4120
,4121
,4122
,4123
,4235
,4672
,4736
,4738
,4739
,4740
,4741
,4742
,4743
,4787
,4788
,4789
,4790
,4856
,4861
,4862
,4863
,4865
,4866
,4867
,4868
,4869
,4870
,4871
,4950
,4951
,4952
,4953
,4954
,4955
,5047
,5048
,5311
,5312
,5313
,5314
,5315
,5320
,5321
,5323
,5324
,5325
,5326
,5327
,5328
,5329
,5330
,5331
,5332
,5333
,5334
,5335
,5336
,5454
,5455
,5456
,5457
,5458
,5460
,5466
,5467
,5478
,5481
,5492
,5501
,5512
,5516
,5520
,5528
,5529
,5530
,5531
,5532
,5533
,5535
,5536
,5537
,5538
,5541
,5542
,5543
,5719
,5722
,5724
,5725
,5837
,5839
,5910
,5939
,6077
,6283
,6435
,6507
,6586
,6724
,6888
,7057
,7218
,7252
,7278
,7359
,7362
,7363
,7366
);
srec.novals := DBMS_STATS.NUMARRAY(
1
,10000052
,10000101
,10084014
,10087560
,10098405
,10109415
,10112291
,10122598
,10137503
,10145913
,10149926
,10162043
,10171182
,10182009
,10190983
,10206766
,10214079
,10222354
,10229405
,10230287
,10234731
,10240528
,10242248
,10245687
,10248485
,10249867
,10252526
,10254694
,10256492
,10260822
,10276481
,10284210
,10422823
,10457446
,10466719
,10467595
,10477338
,10491324
,10492138
,10497339
,10502765
,10519298
,10538591
,10543615
,10543618
,10543624
,10550662
,10550663
,10550664
,10550665
,10550666
,10550667
,10550669
,10550670
,10550671
,10550672
,10550673
,10550675
,10550676
,10559638
,10565349
,10573830
,10573844
,10576388
,10577736
,10618296
,10619573
,10620651
,10621934
,10621935
,10621944
,10629658
,10631030
,10636254
,10639040
,10642634
,10648712
,10656714
,10658651
,10660787
,10661757
,10669223
,10669452
,10669552
,10672217
,10672218
,10672219
,10673714
,10673804
,10674360
,10684357
,10688645
,10689982
,10691234
,10692577
,10700185
,10700829
,10700843
,10700940
,10701202
,10703308
,10705182
,10708283
,10708729
,10710726
,10710895
,10712091
,10714166
,10715811
,10716190
,10723501
,10725646
,10727036
,10729730
,10730600
,10914550
,10927938
,11021054
,11021418
,11032197
,11035305
,11036513
,11054470
,11055581
,11073121
,11080384
,11097012
,11099057
,11107121
,11107315
,11170188
,11180549
,11189743
,11190843
,11191549
,11217602
,11228937
,11258232
,11276562
,11277520
,11280262
,11280884
,11280885
,11280888
,11281001
,11281003
,11281007
,11282539
,11282540
,11282542
,11283050
,11283054
,11283056
,11286676
,11290537
,11291900
,11292116
,11292150
,11293020
,11293161
,11321868
,11325192
,11329381
,11357082
,11362189
,11371997
,11632026
,11632027
,11632028
,11632127
,11632128
,11636406
,11639142
,11640563
,11641474
,11642315
,11649744
,11657139
,11657502
,11657539
,11657540
,11657619
,11662567
,11670581
,11677657
,11978427
,11979903
,11979917
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,122
,313
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,8
,2
,19
,173
,16
,217
,81
,23
,323
,15
,19
,549
,6
,650
,3
,1
,1
,276
,100
,1
,1
,1
,254
,1
,448
,16
,38
,41
,1
,342
,1
,1
,6
,1
,1
,3
,1
,1
,1
,1
,112
,437
,64
,2
,1
,1
,1
,1
,1
,44
,1
,1
,1
,66
,5
,1
,1
,2
,1
,1
,1
,1
,1
,1
,79
,1
,1
,1
,1
,1
,92
,1
,263
,1
,1
,1
,1
,5
,1
,2
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,1
,118
,1
,1
,1
,1
,2
,6
,1
,11
,3
,11
,9
,11
,4
,4
,8
,1
,1
,1
,1
,1
,2
,1
,1
,1
,3
,1
,1
,176
,3
,2
,1
,112
,2
,71
,29
,138
,206
,152
,72
,79
,138
,164
,169
,161
,34
,26
,81
,3
,1
,3
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_NC00087$', distcnt => 1500, density => .000063, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '78700904010101';
srec.maxval := '78780A1F010101';
srec.epc := 254;
srec.bkvals := DBMS_STATS.NUMARRAY(
1
,30
,58
,87
,116
,146
,174
,203
,232
,260
,289
,318
,347
,378
,407
,439
,468
,497
,525
,555
,583
,613
,645
,679
,710
,743
,773
,804
,834
,863
,893
,924
,953
,982
,1015
,1045
,1074
,1104
,1136
,1164
,1195
,1225
,1256
,1286
,1314
,1348
,1379
,1408
,1437
,1470
,1499
,1529
,1560
,1590
,1620
,1648
,1679
,1710
,1738
,1768
,1797
,1826
,1854
,1884
,1916
,1944
,1975
,2010
,2041
,2069
,2099
,2128
,2156
,2186
,2215
,2245
,2275
,2304
,2333
,2362
,2393
,2422
,2451
,2482
,2514
,2548
,2576
,2606
,2634
,2663
,2692
,2723
,2752
,2783
,2813
,2841
,2872
,2900
,2931
,2960
,2988
,3022
,3066
,3099
,3127
,3157
,3189
,3219
,3254
,3282
,3312
,3340
,3369
,3402
,3432
,3461
,3489
,3519
,3547
,3576
,3606
,3636
,3670
,3699
,3728
,3756
,3785
,3815
,3844
,3874
,3905
,3934
,3966
,3996
,4028
,4058
,4088
,4117
,4149
,4180
,4209
,4238
,4270
,4300
,4329
,4359
,4387
,4416
,4463
,4506
,4537
,4571
,4605
,4640
,4673
,4716
,4752
,4790
,4830
,4862
,4898
,4931
,4972
,5004
,5036
,5066
,5095
,5145
,5184
,5221
,5265
,5318
,5351
,5399
,5428
,5458
,5500
,5534
,5563
,5596
,5628
,5665
,5697
,5727
,5764
,5797
,5826
,5858
,5886
,5924
,5953
,5989
,6030
,6060
,6094
,6130
,6167
,6201
,6238
,6273
,6307
,6338
,6377
,6410
,6445
,6481
,6520
,6557
,6595
,6629
,6661
,6695
,6729
,6774
,6813
,6848
,6879
,6918
,6935
,6945
,6951
,6959
,6965
,6976
,6989
,7002
,7013
,7023
,7024
,7042
,7048
,7060
,7073
,7081
,7089
,7094
,7104
,7113
,7118
,7121
,7127
,7136
,7143
,7153
,7161
,7167
,7174
,7183
,7190
,7196
,7206
,7210
,7220
,7232
);
srec.novals := DBMS_STATS.NUMARRAY(
2456175
,2456573
,2456602
,2456630
,2456645
,2456666
,2456686
,2456708
,2456728
,2456742
,2456756
,2456780
,2456798
,2456815
,2456829
,2456840
,2456853
,2456867
,2456877
,2456890
,2456899
,2456912
,2456920
,2456930
,2456945
,2456953
,2456960
,2456968
,2456982
,2456994
,2457003
,2457010
,2457029
,2457038
,2457049
,2457059
,2457067
,2457080
,2457094
,2457107
,2457119
,2457135
,2457144
,2457157
,2457169
,2457184
,2457193
,2457205
,2457219
,2457232
,2457245
,2457259
,2457274
,2457287
,2457297
,2457312
,2457325
,2457340
,2457357
,2457371
,2457388
,2457402
,2457415
,2457429
,2457442
,2457456
,2457473
,2457490
,2457508
,2457518
,2457532
,2457552
,2457567
,2457581
,2457589
,2457605
,2457617
,2457633
,2457645
,2457655
,2457666
,2457679
,2457693
,2457703
,2457715
,2457728
,2457751
,2457763
,2457773
,2457785
,2457802
,2457820
,2457843
,2457868
,2457883
,2457910
,2457924
,2457938
,2457953
,2457969
,2457987
,2458005
,2458012
,2458019
,2458033
,2458054
,2458071
,2458089
,2458099
,2458115
,2458138
,2458164
,2458180
,2458191
,2458211
,2458229
,2458247
,2458269
,2458296
,2458317
,2458337
,2458359
,2458376
,2458396
,2458411
,2458435
,2458459
,2458486
,2458502
,2458519
,2458537
,2458560
,2458575
,2458585
,2458599
,2458612
,2458627
,2458645
,2458660
,2458688
,2458695
,2458710
,2458726
,2458746
,2458759
,2458772
,2458787
,2458799
,2458807
,2458810
,2458814
,2458821
,2458827
,2458831
,2458837
,2458848
,2458855
,2458858
,2458863
,2458867
,2458871
,2458873
,2458877
,2458880
,2458884
,2458886
,2458888
,2458891
,2458894
,2458898
,2458900
,2458904
,2458906
,2458908
,2458911
,2458913
,2458918
,2458920
,2458923
,2458926
,2458928
,2458932
,2458935
,2458940
,2458947
,2458950
,2458954
,2458956
,2458960
,2458963
,2458967
,2458970
,2458975
,2458978
,2458983
,2458988
,2458991
,2458997
,2459002
,2459006
,2459011
,2459013
,2459019
,2459024
,2459030
,2459037
,2459040
,2459045
,2459052
,2459055
,2459060
,2459067
,2459073
,2459080
,2459086
,2459090
,2459097
,2459103
,2459107
,2459108
,2459109
,2459110
,2459111
,2459114
,2459115
,2459116
,2459117
,2459118
,2459119
,2459121
,2459122
,2459123
,2459124
,2459125
,2459128
,2459129
,2459130
,2459131
,2459132
,2459135
,2459136
,2459137
,2459138
,2459139
,2459142
,2459143
,2459144
,2459145
,2459146
,2459149
,2459150
,2459151
,2459152
,2459154
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
1
,1
,3
,2
,4
,4
,1
,1
,2
,8
,1
,2
,1
,4
,1
,4
,5
,1
,2
,10
,4
,12
,6
,7
,3
,7
,6
,5
,4
,4
,6
,7
,4
,9
,8
,2
,4
,5
,5
,3
,4
,3
,3
,3
,4
,6
,9
,4
,4
,5
,3
,4
,5
,6
,2
,3
,8
,6
,2
,2
,3
,2
,1
,4
,5
,3
,5
,8
,4
,12
,4
,1
,3
,4
,6
,6
,3
,3
,3
,6
,3
,5
,6
,5
,4
,6
,5
,7
,6
,2
,2
,4
,3
,4
,2
,2
,3
,4
,6
,4
,3
,6
,22
,5
,3
,4
,7
,4
,7
,3
,2
,1
,1
,8
,4
,1
,3
,3
,2
,1
,3
,4
,7
,5
,1
,4
,1
,3
,4
,5
,4
,1
,8
,4
,5
,7
,3
,2
,4
,4
,2
,2
,6
,4
,2
,7
,5
,2
,20
,16
,19
,9
,10
,8
,7
,15
,9
,14
,19
,9
,9
,16
,15
,5
,18
,16
,4
,23
,15
,13
,21
,31
,15
,25
,18
,16
,15
,22
,1
,11
,13
,18
,6
,9
,10
,14
,13
,18
,11
,15
,13
,13
,13
,14
,12
,18
,13
,18
,12
,13
,11
,15
,15
,16
,8
,10
,13
,14
,12
,9
,9
,6
,9
,22
,15
,8
,9
,13
,7
,10
,6
,8
,6
,11
,13
,13
,11
,10
,1
,18
,6
,12
,13
,8
,8
,5
,10
,9
,5
,3
,6
,9
,7
,10
,8
,6
,7
,9
,7
,6
,10
,4
,10
,1
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_NC00088$', distcnt => 1958, density => .000498, nullcnt => 4277, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('0014-08-02/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2022-07-11/15:43:33','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_NC00089$', distcnt => 81208, density => .0000123140577283026, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('0014-08-02/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2022-07-11/00:00:00','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_NC00090$', distcnt => 2483, density => .000402738622633911, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2012-09-07/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('9999-12-31/00:00:00','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_NC00091$', distcnt => 1951, density => .000512557662737058, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2012-09-07/00:00:00','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('9999-12-31/00:00:00','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_SENTTSK', colname => 'SYS_NC00092$', distcnt => 1951, density => .000512557662737058, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
------------ Table: T_STTS--------------------------
EXEC DBMS_STATS.SET_TABLE_STATS(user, tabname => 'T_STTS', numrows => 26820, numblks => 378 );
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STA_CRTD', numrows => 26820, numlblks => 70, numdist => 26754, clstfct => 22307, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STA_TAKNASMTCC', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STA_THE_BRNCACT', numrows => 52, numlblks => 1, numdist => 52, clstfct => 1, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STA_OBJ_STT', numrows => 26820, numlblks => 69, numdist => 1, clstfct => 368, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'PK_T_STTS', numrows => 26820, numlblks => 58, numdist => 26820, clstfct => 22295, indlevel => 1);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STA_UNIVID', numrows => 52, numlblks => 1, numdist => 52, clstfct => 1, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STA_CAUDBY', numrows => 0, numlblks => 0, numdist => 0, clstfct => 0, indlevel => 0);
EXEC DBMS_STATS.SET_INDEX_STATS(user, indname => 'IX_STA_CLASSTYPE', numrows => 26820, numlblks => 86, numdist => 1, clstfct => 368, indlevel => 1);
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := '537461747573';
srec.maxval := '537461747573';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
5493
);
srec.novals := DBMS_STATS.NUMARRAY(
433321119946427000000000000000000000
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'CLASSTYPE', distcnt => 1, density => .0000186665613193824, nullcnt => 0, avgclen => 7, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_C4C_ID', distcnt => 0, density => 0, nullcnt => 26820, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2010-08-16/17:12:27','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:56:13','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_CRTD', distcnt => 26754, density => .0000373775883979966, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_LAS_ACT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_LAS_ACT_ACTRTYP', distcnt => 0, density => 0, nullcnt => 26820, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.DATEARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.DATEARRAY(TO_DATE('2013-08-30/10:11:54','YYYY-MM-DD/HH24:MI:SS'),TO_DATE('2020-10-30/16:56:13','YYYY-MM-DD/HH24:MI:SS'));
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_LAS_ACT_TIM', distcnt => 26750, density => .0000373831775700935, nullcnt => 0, avgclen => 8, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_OBJ_STT', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('0','0');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_VERS', distcnt => 1, density => 1, nullcnt => 0, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
BEGIN
srec.minval := 'C20B02';
srec.maxval := 'C20B02';
srec.epc := 1;
srec.bkvals := DBMS_STATS.NUMARRAY(
5493
);
srec.novals := DBMS_STATS.NUMARRAY(
1001
);
srec.rpcnts := DBMS_STATS.NUMARRAY(
0
);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_VSBT', distcnt => 1, density => .0000186665613193824, nullcnt => 0, avgclen => 4, srec => srec);
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
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_DLTDDT', distcnt => 0, density => 0, nullcnt => 26820, avgclen => 1, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_LAS_ACT_BY', distcnt => 85, density => .0117647058823529, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','11979917');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_ORIGCRTR', distcnt => 85, density => .0117647058823529, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_ORIGCRTRLOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','1');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_LAS_ACT_BY_LOGDIN', distcnt => 1, density => 1, nullcnt => 0, avgclen => 3, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.CHARARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.CHARARRAY('1504d4f3-d022-4953-87fe-4cd339ef7c29','ffcaacc3-d27b-458d-9c7e-c1cc1d5ea82a');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_UNIVID', distcnt => 52, density => .0192307692307692, nullcnt => 26768, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_PYSL', distcnt => 2, density => .5, nullcnt => 26799, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_EMTN', distcnt => 2, density => .5, nullcnt => 26803, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('1','2');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_CMPC', distcnt => 2, density => .5, nullcnt => 26806, avgclen => 2, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_FINC', distcnt => 0, density => 0, nullcnt => 26820, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10000000','10027755');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_ID', distcnt => 26820, density => .0000372856077554064, nullcnt => 0, avgclen => 6, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_CAUDBY', distcnt => 0, density => 0, nullcnt => 26820, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('','');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_TAKNASMTCC', distcnt => 0, density => 0, nullcnt => 26820, avgclen => 0, srec => srec);
COMMIT;
END;
/
DECLARE
srec DBMS_STATS.STATREC;
my_minmax DBMS_STATS.NUMARRAY;
BEGIN
srec.epc := 2;
my_minmax := DBMS_STATS.NUMARRAY('10001128','10001182');
DBMS_STATS.PREPARE_COLUMN_VALUES(srec,my_minmax);
DBMS_STATS.SET_COLUMN_STATS(user, tabname => 'T_STTS', colname => 'STA_THE_BRNCACT', distcnt => 52, density => .0192307692307692, nullcnt => 26768, avgclen => 2, srec => srec);
COMMIT;
END;
/
