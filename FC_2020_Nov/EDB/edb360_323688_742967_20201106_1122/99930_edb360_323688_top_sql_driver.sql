COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:1 sql_id:3hwq5m5h3gkaq
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL Developer
PRO UPDATE T_USR SET &#34;CLASSTYPE&#34; = :B1 ,&#34;USR_C4C_ID&#34; = :B2 ,&#34;USR_CRTD&#34; = :B3 ,&#34;USR_LAS_ACT&#34; = :B4 ,&#34;USR_LAS_ACT_ACTRTYP&#34; = :B5 ,&#34;USR_LAS_ACT_TIM&#34; = :B6 ,&#34;USR_OBJ_STT&#34; = :B7 ,&#34;USR_VERS&#34; = :B8 ,&#34;USR_VSBT&#34; = :B9 ,&#34;USR_DLTDDT&#34; = :B10 ,&#34;USR_LAS_ACT_BY&#34; = :B11 ,&#34;USR_ORIGCRTR&#34; = :B12 ,&#34;USR_ORIGCRTRLOGDIN&#34; = :B13 ,&#34;USR_LAS_ACT_BY_LOGDIN&#34; = :B14 ,&#34;USR_UNIVID&#34; = :B15 ,&#34;USR_FRSTNAM&#34; = :B16 ,&#34;USR_MDLENAM&#34; = :B17 ,&#34;USR_LAS_NAM&#34; = :B18 ,&#34;USR_DT_OF_BRTH&#34; = :B19 ,&#34;USR_GNDRCODE&#34; = :B20 ,&#34;USR_FRSTATVD&#34; = :B21 ,&#34;USR_LAS_ATVD&#34; = :B22 ,&#34;USR_LAS_DCTD&#34; = :B23 ,&#34;USR_WKFWISTCID&#34; = :B24 ,&#34;USR_CNV_ID&#34; = :B25 ,&#34;USR_OWNRCHNDFLAG&#34; = :B26 ,&#34;USR_OWNRCHNDCNT&#34; = :B27 ,&#34;USR_SBTDAT&#34; = :B28 ,&#34;USR_ID&#34; = :B29 ,&#34;PRV_PLN_ID&#34; = :B30 ,&#34;PRV_UPN_ID&#34; = :B31 ,&#34;PRV_FED_TAX&#34; = :B32 ,&#34;PRV_TOTLPNTS&#34; = :B33 ,&#34;PRV_TOTLPNTSIN_PCTC&#34; = :B34 ,&#34;PRV_TOTLPAYRMEMS&#34; = :B35 ,&#34;PRV_TOTLPAYRMEMSIN_PCTC&#34; = :B36 ,&#34;PRV_ACNGNEW_PNTS&#34; = :B37 ,&#34;PRV_ATHDFOR_AUMTDTMN&#34; = :B38 ,&#34;PRV_INSCID&#34; = :B39 ,&#34;PRV_IS_ADM&#34; = :B40 ,&#34;PRV_PCP_IND&#34; = :B41 ,&#34;PRV_ID&#34; = :B42 ,&#34;MBUR_">
PRO rank:1 3hwq5m5h3gkaq et:96.88h cpu:0.27h io:0.02h type:UPDATE
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:1 SQL_ID:3hwq5m5h3gkaq TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 3hwq5m5h3gkaq
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_3hwq5m5h3gkaq_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_3hwq5m5h3gkaq_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_3hwq5m5h3gkaq_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:1 sql_id:00540ttuxh7n9
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user: module:
PRO MERGE INTO DW_DIM_NOTE A USING (SELECT MAIN.NOTE_ID AS NOTE_ID, MAIN.NOTE_C4C_ID AS C4C_ID, MAIN.NOTE_CRTD AS CREATION_DATE, MAIN.NOTE_LAS_ACT_TIM AS MODIFIED_DATE, C1.LBL AS NOTE_RECORDSTATE, MAIN.NOTE_DLTDDT AS DELETION_DATE, MAIN.NOTE_UNIVID AS UNIVERSAL_ID, MAIN.NOTE_CALLDT_TIM AS CALL_TIME, PITY.DDLI_LBL AS PRIORITY, NVL2(UM_NOTETYP3.DDLI_LBL,'/' || UM_NOTETYP3.DDLI_LBL,'') || NVL2(UM_NOTETYP2.DDLI_LBL,'/' || UM_NOTETYP2.DDLI_LBL,'') ||NVL2(UM_NOTETYP1.DDLI_LBL,'/' || UM_NOTETYP1.DDLI_LBL ,'') || '/' ||UM_NOTETYP.DDLI_LBL AS UMEVENT_NOTETYPE, NVL2(CM_NOTETYP3.DDLI_LBL,'/' || CM_NOTETYP3.DDLI_LBL,'') || NVL2(CM_NOTETYP2.DDLI_LBL,'/' || CM_NOTETYP2.DDLI_LBL,'') ||NVL2(CM_NOTETYP1.DDLI_LBL,'/' || CM_NOTETYP1.DDLI_LBL ,'') || '/' ||CM_NOTETYP.DDLI_LBL AS CMPROGRAM_NOTETYPE, NVL2(CASENOTETYP3.DDLI_LBL,'/' || CASENOTETYP3.DDLI_LBL,'') || NVL2(CASENOTETYP2.DDLI_LBL,'/' || CASENOTETYP2.DDLI_LBL,'') ||NVL2(CASENOTETYP1.DDLI_LBL,'/' || CASENOTETYP1.DDLI_LBL ,'') || '/' ||CASENOTETYP.DDLI_LB">
PRO rank:1 00540ttuxh7n9 signature:0(439)
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:1 SQL_ID:00540ttuxh7n9 TOP_type:3
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 00540ttuxh7n9
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_00540ttuxh7n9_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_00540ttuxh7n9_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_00540ttuxh7n9_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:2 sql_id:d1bmu84pdu6gx
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL*Plus
PRO begin dbms_mview.REFRESH('MV_DIM_MEMBER_ADDR_TMPRL','C'); end;">
PRO rank:2 d1bmu84pdu6gx et:30.28h cpu:28.68h io:1.46h type:PL/SQL
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:2 SQL_ID:d1bmu84pdu6gx TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y d1bmu84pdu6gx
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_d1bmu84pdu6gx_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_d1bmu84pdu6gx_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_d1bmu84pdu6gx_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:2 sql_id:3hwq5m5h3gkaq
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user: module:
PRO UPDATE T_USR SET &#34;CLASSTYPE&#34; = :B1 ,&#34;USR_C4C_ID&#34; = :B2 ,&#34;USR_CRTD&#34; = :B3 ,&#34;USR_LAS_ACT&#34; = :B4 ,&#34;USR_LAS_ACT_ACTRTYP&#34; = :B5 ,&#34;USR_LAS_ACT_TIM&#34; = :B6 ,&#34;USR_OBJ_STT&#34; = :B7 ,&#34;USR_VERS&#34; = :B8 ,&#34;USR_VSBT&#34; = :B9 ,&#34;USR_DLTDDT&#34; = :B10 ,&#34;USR_LAS_ACT_BY&#34; = :B11 ,&#34;USR_ORIGCRTR&#34; = :B12 ,&#34;USR_ORIGCRTRLOGDIN&#34; = :B13 ,&#34;USR_LAS_ACT_BY_LOGDIN&#34; = :B14 ,&#34;USR_UNIVID&#34; = :B15 ,&#34;USR_FRSTNAM&#34; = :B16 ,&#34;USR_MDLENAM&#34; = :B17 ,&#34;USR_LAS_NAM&#34; = :B18 ,&#34;USR_DT_OF_BRTH&#34; = :B19 ,&#34;USR_GNDRCODE&#34; = :B20 ,&#34;USR_FRSTATVD&#34; = :B21 ,&#34;USR_LAS_ATVD&#34; = :B22 ,&#34;USR_LAS_DCTD&#34; = :B23 ,&#34;USR_WKFWISTCID&#34; = :B24 ,&#34;USR_CNV_ID&#34; = :B25 ,&#34;USR_OWNRCHNDFLAG&#34; = :B26 ,&#34;USR_OWNRCHNDCNT&#34; = :B27 ,&#34;USR_SBTDAT&#34; = :B28 ,&#34;USR_ID&#34; = :B29 ,&#34;PRV_PLN_ID&#34; = :B30 ,&#34;PRV_UPN_ID&#34; = :B31 ,&#34;PRV_FED_TAX&#34; = :B32 ,&#34;PRV_TOTLPNTS&#34; = :B33 ,&#34;PRV_TOTLPNTSIN_PCTC&#34; = :B34 ,&#34;PRV_TOTLPAYRMEMS&#34; = :B35 ,&#34;PRV_TOTLPAYRMEMSIN_PCTC&#34; = :B36 ,&#34;PRV_ACNGNEW_PNTS&#34; = :B37 ,&#34;PRV_ATHDFOR_AUMTDTMN&#34; = :B38 ,&#34;PRV_INSCID&#34; = :B39 ,&#34;PRV_IS_ADM&#34; = :B40 ,&#34;PRV_PCP_IND&#34; = :B41 ,&#34;PRV_ID&#34; = :B42 ,&#34;MBUR_">
PRO rank:2 3hwq5m5h3gkaq signature:18424341177367344559(1)
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:2 SQL_ID:3hwq5m5h3gkaq TOP_type:3
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 3hwq5m5h3gkaq
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_3hwq5m5h3gkaq_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_3hwq5m5h3gkaq_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_3hwq5m5h3gkaq_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:3 sql_id:17vjd1aast5q7
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:JDBC Thin Client
PRO SELECT DISTINCT PF.PERF_USR FROM T_WKFWTSK WF , T_WKFWTSK_STT_CNGE CNG , T_PRMR PF, T_USR U WHERE WF.WTSK_OBJ_STT IN (SELECT COLUMN_VALUE FROM TABLE(CAST (:B1 AS NUMBER_TT))) AND WF.WTSK_TNFR IS NULL AND WF.WTSK_CURRSTT = CNG.WTSC_ID AND CNG.WTSC_ID = PF.PERF_STT AND U.USR_ID = PF.PERF_USR AND U.USR_ID = U.PAYR_ID">
PRO rank:3 17vjd1aast5q7 et:26.94h cpu:26.43h io:0.46h type:SELECT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:3 SQL_ID:17vjd1aast5q7 TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 17vjd1aast5q7
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_17vjd1aast5q7_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_17vjd1aast5q7_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_17vjd1aast5q7_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:4 sql_id:0sjx29v99zfqc
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:JDBC Thin Client
PRO SELECT INFO_WITH_MEMBER_ID.*,     enrollment.ELNS_INSCPRSRGRP ipgGroupId,     benefit.BENP_LWSTLVL_PRODCAT productCategoryId,     affMember.USR_FRSTNAM affiliatedMemberFirstName,     affMember.USR_LAS_NAM affiliatedMemberLastName FROM (   SELECT INFO.*,     CASE     WHEN INFO.memberAffiliationId IS NOT NULL THEN (INFO.memberAffiliationId)     WHEN INFO.authAffiliationId IS NOT NULL THEN (SELECT UMBS_MEMB FROM T_UM_BASE WHERE UMBS_ID=INFO.authAffiliationId)     WHEN INFO.careManagementAffiliationId IS NOT NULL THEN (SELECT CMBS_MEMB FROM T_CM_BASEBASE WHERE CMBB_ID=INFO.careManagementAffiliationId)     WHEN INFO.providerAffiliationId IS NOT NULL THEN (INFO.providerAffiliationId)     ELSE (NULL)     END         affiliatedMemberId   FROM (   SELECT * FROM (     SELECT         T.SETK_ID AS id,         T.SETK_C4C_ID AS c4cId,         T.SETK_UNIVID AS universalId,         taskType.TSKT_RCPTTYP AS categoryId,         T.SETK_TSK_TYP AS taskTypeId,         taskType.DDLI_LBL AS taskTypeLabel,   ">
PRO rank:4 0sjx29v99zfqc et:26.20h cpu:25.30h io:0.26h type:SELECT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:4 SQL_ID:0sjx29v99zfqc TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 0sjx29v99zfqc
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_0sjx29v99zfqc_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_0sjx29v99zfqc_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_0sjx29v99zfqc_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:5 sql_id:brg5vk35jcqtv
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:JDBC Thin Client
PRO SELECT * FROM   (SELECT count(DISTINCT T.UMBS_ID) AS opened    FROM T_UM_BASE T      INNER JOIN T_MEMBDGISBASE diag ON diag.UMDS_DGISUM_EVNT = T.UMBS_ID      INNER JOIN T_APBL msrv ON msrv.MSRV_SRVCDGIS = diag.MBDB_ID AND msrv.APBL_IS_ERR = :&#34;SYS_B_0&#34;    WHERE T.UMBS_OBJ_STT = :&#34;SYS_B_1&#34; AND (T.UMBS_MEMB = :1  OR T.UMBS_MEMB in (select MBUR_ID from T_USR where USR_MRGEMSTR=:2 ))),   (SELECT count(DISTINCT T.UMBS_ID) AS closed    FROM T_UM_BASE T      INNER JOIN T_MEMBDGISBASE diag ON diag.UMDS_DGISUM_EVNT = T.UMBS_ID      INNER JOIN T_APBL msrv ON msrv.MSRV_SRVCDGIS = diag.MBDB_ID AND msrv.APBL_IS_ERR = :&#34;SYS_B_2&#34;    WHERE T.UMBS_OBJ_STT = :&#34;SYS_B_3&#34; AND (T.UMBS_MEMB = :3  OR T.UMBS_MEMB in (select MBUR_ID from T_USR where USR_MRGEMSTR=:4 )))">
PRO rank:5 brg5vk35jcqtv et:20.85h cpu:20.77h io:0.01h type:SELECT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:5 SQL_ID:brg5vk35jcqtv TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y brg5vk35jcqtv
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_brg5vk35jcqtv_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_brg5vk35jcqtv_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_brg5vk35jcqtv_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:6 sql_id:6ta0azw9znyz8
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL Developer
PRO delete from T_OTHER_INSURANCE where INS_MEMBER= :1 and CLASSTYPE=:2">
PRO rank:6 6ta0azw9znyz8 et:17.86h cpu:17.65h io:0.01h type:DELETE
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:6 SQL_ID:6ta0azw9znyz8 TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 6ta0azw9znyz8
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_6ta0azw9znyz8_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_6ta0azw9znyz8_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_6ta0azw9znyz8_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:7 sql_id:cydgfyx406q8j
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL*Plus
PRO INSERT /*+ BYPASS_RECURSIVE_CHECK */ INTO &#34;THH_C4C&#34;.&#34;MV_PATID_CM_COND_PROVIDER&#34; SELECT get_aud_mrgmstr(member_id, valid_from, valid_to) member_id,        get_aud_mrgmstr(care_giver, valid_from, valid_to) care_giver,        valid_from,        valid_to,        PRAS_STRTDT,        PRAS_END_DT   FROM (SELECT a_cm_basebase.cmbs_memb member_id,                a_pvdrastn.pras_pvdr care_giver,                GREATEST(a_pvdrastn.valid_from, NVL(a_cm_basebase.valid_from, TO_DATE(:&#34;SYS_B_00&#34;, :&#34;SYS_B_01&#34;))) valid_from,                CASE WHEN a_pvdrastn.valid_to IS NULL AND a_cm_basebase.valid_to IS NULL THEN                        TO_DATE(:&#34;SYS_B_02&#34;, :&#34;SYS_B_03&#34;)                    WHEN a_pvdrastn.valid_to IS NOT NULL AND a_cm_basebase.valid_to IS NOT NULL THEN                        LEAST(a_pvdrastn.valid_to, a_cm_basebase.valid_to)                    WHEN a_pvdrastn.valid_to IS NULL THEN  a_cm_basebase.valid_to                    ELSE a_pvdrastn.valid_to                END valid_to,         ">
PRO rank:7 cydgfyx406q8j et:13.64h cpu:12.35h io:1.14h type:INSERT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:7 SQL_ID:cydgfyx406q8j TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y cydgfyx406q8j
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_cydgfyx406q8j_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_cydgfyx406q8j_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_cydgfyx406q8j_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:8 sql_id:7uxfahgurqu0d
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL*Plus
PRO begin dbms_mview.REFRESH('MV_DIM_CLAIM','C'); end;">
PRO rank:8 7uxfahgurqu0d et:7.28h cpu:5.61h io:1.57h type:PL/SQL
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:8 SQL_ID:7uxfahgurqu0d TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 7uxfahgurqu0d
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_7uxfahgurqu0d_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_7uxfahgurqu0d_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report6
SPO 00001_edb360_323688_index.html APP;
PRO <a href="sqld360_323688_7uxfahgurqu0d_742967_20201106_1122.zip">sqld360(zip)</a>
SPO OFF;
PRO PRO zip
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:9 sql_id:1hd6zv2xrvp7a
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL*Plus
PRO begin dbms_mview.REFRESH('FACT_ENROLLMENT','C'); end;">
PRO rank:9 1hd6zv2xrvp7a et:6.48h cpu:5.39h io:0.94h type:PL/SQL
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:9 SQL_ID:1hd6zv2xrvp7a TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 1hd6zv2xrvp7a
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_1hd6zv2xrvp7a_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_1hd6zv2xrvp7a_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:10 sql_id:561s98r3c15ad
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL*Plus
PRO begin dbms_mview.REFRESH('MV_DIM_ENROLLMENT','C'); end;">
PRO rank:10 561s98r3c15ad et:6.38h cpu:4.48h io:1.83h type:PL/SQL
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:10 SQL_ID:561s98r3c15ad TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 561s98r3c15ad
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_561s98r3c15ad_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_561s98r3c15ad_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:11 sql_id:gczs60dfwg9gm
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:SYSTEM module:DBMS_SCHEDULER
PRO select /*+  parallel(t,4) parallel_index(t,4) dbms_stats cursor_sharing_exact use_weak_name_resl dynamic_sampling(0) no_monitoring xmlindex_sel_idx_tbl no_substrb_pad  */count(*), count(&#34;SYS_STSQDP_SYD22Z#C_6A0##W5FOV&#34;), sum(sys_op_opnsize(&#34;SYS_STSQDP_SYD22Z#C_6A0##W5FOV&#34;)), count(&#34;ELNS_MEDICAID_PROD_ID&#34;), sum(sys_op_opnsize(&#34;ELNS_MEDICAID_PROD_ID&#34;)), count(&#34;SYS_NC00030$&#34;), count(&#34;SYS_NC00031$&#34;), count(&#34;SYS_NC00032$&#34;), sum(sys_op_opnsize(&#34;SYS_NC00032$&#34;)), count(&#34;SYS_NC00033$&#34;), count(distinct &#34;SYS_NC00033$&#34;), sum(sys_op_opnsize(&#34;SYS_NC00033$&#34;)), substrb(dump(min(substrb(&#34;SYS_NC00033$&#34;,1,64)),16,0,64),1,240), substrb(dump(max(substrb(&#34;SYS_NC00033$&#34;,1,64)),16,0,64),1,240), count(&#34;SYS_NC00034$&#34;), count(distinct &#34;SYS_NC00034$&#34;), sum(sys_op_opnsize(&#34;SYS_NC00034$&#34;)), substrb(dump(min(substrb(&#34;SYS_NC00034$&#34;,1,64)),16,0,64),1,240), substrb(dump(max(substrb(&#34;SYS_NC00034$&#34;,1,64)),16,0,64),1,240), count(&#34;CLASSTYPE&#34;), count(distinct &#34;CLASSTYPE&#34;), sum(sys_op_opnsize(&#34;CLASSTYPE&#34;)), count(&#34;ELNS_C4C_I">
PRO rank:11 gczs60dfwg9gm et:6.38h cpu:6.22h io:0.11h type:SELECT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:11 SQL_ID:gczs60dfwg9gm TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y gczs60dfwg9gm
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_gczs60dfwg9gm_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_gczs60dfwg9gm_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:12 sql_id:gd4x6gvgb9xa0
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:JDBC Thin Client
PRO SELECT /* CM-WB-CASE-QUERY */ MYWORK.*,        :1   AS                         requestorId,        :2   AS                         viewedWbOwnerId FROM (  SELECT * FROM (   SELECT BASE.*,        CASE WHEN dueDate IS NOT NULL THEN dueDate             ELSE createDate        END sortDate   FROM (     SELECT T.CLASSTYPE      classType,        T.cmbb_id            id,        T.cmbb_c4c_id        c4cId,        :&#34;SYS_B_00&#34; AS                 affiliationType,        T.cmbs_memb          memberId,        T.cmbb_las_act_by    lastModifiedById,        T.cmbb_las_act_tim   lastModifiedDate,        coalesce(T.DUEDATE, T.CSRQ_DDLNDT__DT)            dueDate,        T.CSRQ_DDLNDT__TIM_IN_DY           dueDateSeconds,        T.cmbb_crtd          createDate,        coalesce(T.case_ownr, t.cmpr_ownr, t.csrq_ownr, t.cmpq_ownr)         ownerId,        T.CMBB_SRC           sourceId,        T.CMBB_RESN          reasonId,        T.CMBB_TYP           typeId,        CASE WHEN T.CLASSTYPE=:&#34;SYS_B_01&#34; THEN T.CASE_">
PRO rank:12 gd4x6gvgb9xa0 et:4.95h cpu:4.90h io:0.00h type:SELECT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:12 SQL_ID:gd4x6gvgb9xa0 TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y gd4x6gvgb9xa0
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_gd4x6gvgb9xa0_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_gd4x6gvgb9xa0_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:13 sql_id:0g2sz99zbn7ur
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL*Plus
PRO INSERT /*+ BYPASS_RECURSIVE_CHECK */ INTO &#34;THH_C4C&#34;.&#34;MV_PATID_THRESH_COND_CLAIM&#34; SELECT     nvl(t_usr.usr_mrgemstr, t_usr.usr_id) member_id,     mclm_mdc_id                           mdc,     mclm_clm_typ                          claim_type,     mclm_amntcrgd                         charged,     mclm_amntalwd                         allowed,     mclm_amntpaid                         paid,     mclm_frstdt_of_srvc                   submitted_date   FROM     t_mdclclm     INNER JOIN     t_usr       ON t_mdclclm.mclm_pat_id = t_usr.usr_id          AND          t_mdclclm.mclm_obj_stt != :&#34;SYS_B_0&#34;          AND          t_usr.usr_obj_stt != :&#34;SYS_B_1&#34;   UNION   SELECT     nvl(t_usr.usr_mrgemstr, t_usr.usr_id) member_id,     NULL                                  mdc,     dclm_clm_typ                          claim_type,     dclm_amntcrgd                         charged,     dclm_amntalwd                         allowed,     dclm_amntpaid                         paid,     dclm_frstdt_of_srvc  ">
PRO rank:13 0g2sz99zbn7ur et:4.81h cpu:3.99h io:0.71h type:INSERT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:13 SQL_ID:0g2sz99zbn7ur TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 0g2sz99zbn7ur
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_0g2sz99zbn7ur_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_0g2sz99zbn7ur_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:14 sql_id:2mrjsarqc32h3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL Developer
PRO DELETE FROM T_PROVIDER_CHOICE WHERE PRCE_MEMB = :B1 ">
PRO rank:14 2mrjsarqc32h3 et:4.76h cpu:4.69h io:0.00h type:DELETE
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:14 SQL_ID:2mrjsarqc32h3 TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 2mrjsarqc32h3
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_2mrjsarqc32h3_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_2mrjsarqc32h3_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:15 sql_id:bzsm5n1q7g4z6
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL Developer
PRO DELETE FROM T_PROVIDER_CHOICE_ROLE_XREF WHERE PCRX_PRCE_ID IN (SELECT A.PRCE_ID FROM T_PROVIDER_CHOICE A, T_PROVIDER_CHOICE_ROLE_XREF X WHERE A.PRCE_ID = X.PCRX_PRCE_ID AND A.PRCE_MEMB = :B1 )">
PRO rank:15 bzsm5n1q7g4z6 et:4.68h cpu:4.64h io:0.00h type:DELETE
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:15 SQL_ID:bzsm5n1q7g4z6 TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y bzsm5n1q7g4z6
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_bzsm5n1q7g4z6_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_bzsm5n1q7g4z6_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO rank:16 sql_id:1wjt2ut7cah6k
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO PRO update main report1
SPO 00001_edb360_323688_index.html APP;
PRO <li title="pdb:FRSTPROD user:THH_C4C module:SQL*Plus
PRO INSERT /*+ BYPASS_RECURSIVE_CHECK */ INTO &#34;THH_C4C&#34;.&#34;MV_PATID_CLINIC_COND_SRVCD&#34; SELECT /*+ ORDERED */            greatest(t_userdiagbase.valid_from, nvl(tapbl.valid_from, to_date(:&#34;SYS_B_00&#34;, :&#34;SYS_B_01&#34;))) valid_from,            CASE              WHEN t_userdiagbase.valid_to IS NULL AND                   tapbl.valid_to IS NULL THEN                TO_DATE(:&#34;SYS_B_02&#34;, :&#34;SYS_B_03&#34;)              WHEN t_userdiagbase.valid_to IS NOT NULL AND                   tapbl.valid_to IS NOT NULL THEN                least(t_userdiagbase.valid_to, tapbl.valid_to)              WHEN t_userdiagbase.valid_to IS NULL THEN                tapbl.valid_to              ELSE                t_userdiagbase.valid_to            END                         valid_to,            t_userdiagbase.mbur_id      member_id,            tapbl.srvc_id               srvcd,            -- CP-268     	   tapbl.APBL_RQTDDT_FROM      srv_date_from,     	   tapbl.APBL_RQTDDT_TO        srv_date_to          FROM            (SELECT      ">
PRO rank:16 1wjt2ut7cah6k et:4.47h cpu:3.11h io:1.12h type:INSERT
SET HEAD OFF VER OFF FEED OFF ECHO OFF;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. PLANX rank:16 SQL_ID:1wjt2ut7cah6k TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
@@&&edb360_bypass.sql/planx.sql Y 1wjt2ut7cah6k
PRO PRO update main report2
SPO 00001_edb360_323688_index.html APP;
PRO <a href="planx_1wjt2ut7cah6k_&&current_time..txt">planx(text)</a>
SPO OFF;
PRO PRO zip
HOS zip -mj edb360_323688_742967_20201106_1122 planx_1wjt2ut7cah6k_&&current_time..txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
PRO PRO update main report7
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO changes PDB to FRSTPROD
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
PRO
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO prepares to execute sqld360
PRO PRO deleting content of global temporary table "plan_table" as preparation to execute sqld360
DELETE plan_table;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:1 SQL_ID:3hwq5m5h3gkaq TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 1, 'SQLD360_SQLID', '3hwq5m5h3gkaq', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:1 SQL_ID:00540ttuxh7n9 TOP_type:3
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 1, 'SQLD360_SQLID', '00540ttuxh7n9', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:2 SQL_ID:d1bmu84pdu6gx TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 2, 'SQLD360_SQLID', 'd1bmu84pdu6gx', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:2 SQL_ID:3hwq5m5h3gkaq TOP_type:3
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 2, 'SQLD360_SQLID', '3hwq5m5h3gkaq', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:3 SQL_ID:17vjd1aast5q7 TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 3, 'SQLD360_SQLID', '17vjd1aast5q7', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:4 SQL_ID:0sjx29v99zfqc TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 4, 'SQLD360_SQLID', '0sjx29v99zfqc', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:5 SQL_ID:brg5vk35jcqtv TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 5, 'SQLD360_SQLID', 'brg5vk35jcqtv', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:6 SQL_ID:6ta0azw9znyz8 TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 6, 'SQLD360_SQLID', '6ta0azw9znyz8', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:7 SQL_ID:cydgfyx406q8j TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 7, 'SQLD360_SQLID', 'cydgfyx406q8j', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
PRO PRO update log
SPO 00002_edb360_323688_log.txt APP;
SET HEAD OFF TERM ON;
PRO &&hh_mm_ss. SQLD360 rank:8 SQL_ID:7uxfahgurqu0d TOP_type:1
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET HEAD ON TERM OFF;
SPO OFF;
PRO PRO prepares execution of sqld360
INSERT INTO plan_table (id, statement_id, operation, options, object_node, projection) SELECT 8, 'SQLD360_SQLID', '7uxfahgurqu0d', '110031', 'FRSTPROD' , 'null' FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  <  :edb360_max_seconds;
UNDEF 1
HOS zip -j edb360_323688_742967_20201106_1122 99930_edb360_323688_top_sql_driver.sql >> 00004_edb360_323688_log3.txt
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO plan_table content before calling sqld360
SELECT operation||' '||object_node||' '||options||' '||object_node FROM plan_table WHERE statement_id = 'SQLD360_SQLID';
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DEF;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO calling eadam (ash) for top sql and peak snaps
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
EXEC DBMS_APPLICATION_INFO.SET_MODULE('edb360','eadam');
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
@@sql/&&edb360_bypass.edb360_7c_eadam.sql
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO seconds left on eDB360 before calling SQLd360
VAR edb360_secs2go NUMBER;
EXEC :edb360_secs2go := 0;
EXEC :edb360_secs2go := :edb360_max_seconds - ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100);
PRINT :edb360_secs2go;
DEF edb360_secs2go = '0';
COL edb360_secs2go NEW_V edb360_secs2go FOR A8;
SELECT TO_CHAR(:edb360_secs2go) edb360_secs2go FROM DUAL;
PRO PRO calling sqld360
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
EXEC DBMS_APPLICATION_INFO.SET_MODULE('edb360','sqld360');
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
@@&&edb360_bypass.sqld360.sql
SPO 00002_edb360_323688_log.txt APP;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO PRO returns to original PDB
ALTER SESSION SET CONTAINER = FRSTPROD;
PRO PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
