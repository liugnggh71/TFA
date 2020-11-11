PRO
VAR lv_inst_num      VARCHAR2(1023);
VAR lv_dbid          NUMBER;
VAR lv_bid           NUMBER;
VAR lv_eid           NUMBER;
VAR lv_begin_date    VARCHAR2(14);
VAR lv_end_date      VARCHAR2(14);
VAR lv_rep           VARCHAR2(14);
PRO
VAR lv_m1_inst_num   VARCHAR2(1023);
VAR lv_m1_dbid       NUMBER;
VAR lv_m1_bid        NUMBER;
VAR lv_m1_eid        NUMBER;
VAR lv_m1_begin_date VARCHAR2(14);
VAR lv_m1_end_date   VARCHAR2(14);
VAR lv_m1_rep        VARCHAR2(14);
PRO
VAR lv_m2_inst_num   VARCHAR2(1023);
VAR lv_m2_dbid       NUMBER;
VAR lv_m2_bid        NUMBER;
VAR lv_m2_eid        NUMBER;
VAR lv_m2_begin_date VARCHAR2(14);
VAR lv_m2_end_date   VARCHAR2(14);
VAR lv_m2_rep        VARCHAR2(14);
EXEC :lv_m1_begin_date := '20201031100041';
EXEC :lv_m1_end_date := '20201031103043';
EXEC :lv_m1_dbid := 2109323688;
EXEC :lv_m1_bid := 4670;
EXEC :lv_m1_eid := 4671;
EXEC :lv_m1_inst_num := NULL;
EXEC :lv_m1_rep := 'med7d';
EXEC :lv_m2_begin_date := '20201008080007';
EXEC :lv_m2_end_date := '20201008083010';
EXEC :lv_m2_dbid := 2109323688;
EXEC :lv_m2_bid := 3561;
EXEC :lv_m2_eid := 3562;
EXEC :lv_m2_inst_num := NULL;
EXEC :lv_m2_rep := 'med31d';
EXEC :lv_begin_date := '20201105160034';
EXEC :lv_end_date := '20201105163037';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4924;
EXEC :lv_eid := 4925;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max5wd1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4924_4925_max5wd1 <small><em>(2020-11-05T16:00:34 to 2020-11-05T16:30:37)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 4925';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_4924_4925_max5wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01617_edb360_323688_perfhub_rac_4924_4925_max5wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01617_edb360_323688_perfhub_rac_4924_4925_max5wd1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01617_edb360_323688_perfhub_rac_4924_4925_max5wd1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01617_edb360_323688_perfhub_rac_4924_4925_max5wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4924_4925_max5wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01618_edb360_323688_awrrpt_rac_4924_4925_max5wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01618_edb360_323688_awrrpt_rac_4924_4925_max5wd1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01618_edb360_323688_awrrpt_rac_4924_4925_max5wd1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01618_edb360_323688_awrrpt_rac_4924_4925_max5wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01619_edb360_323688_awrrpt_rac_4924_4925_max5wd1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01619_edb360_323688_awrrpt_rac_4924_4925_max5wd1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_4670_4671_med7d AWR" href="01619_edb360_323688_awrrpt_rac_4924_4925_max5wd1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01619_edb360_323688_awrrpt_rac_4924_4925_max5wd1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201104120014';
EXEC :lv_end_date := '20201104123016';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4868;
EXEC :lv_eid := 4869;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max5wd2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4868_4869_max5wd2 <small><em>(2020-11-04T12:00:14 to 2020-11-04T12:30:16)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 4869';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_4868_4869_max5wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01620_edb360_323688_perfhub_rac_4868_4869_max5wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01620_edb360_323688_perfhub_rac_4868_4869_max5wd2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01620_edb360_323688_perfhub_rac_4868_4869_max5wd2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01620_edb360_323688_perfhub_rac_4868_4869_max5wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4868_4869_max5wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01621_edb360_323688_awrrpt_rac_4868_4869_max5wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01621_edb360_323688_awrrpt_rac_4868_4869_max5wd2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01621_edb360_323688_awrrpt_rac_4868_4869_max5wd2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01621_edb360_323688_awrrpt_rac_4868_4869_max5wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01622_edb360_323688_awrrpt_rac_4868_4869_max5wd2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01622_edb360_323688_awrrpt_rac_4868_4869_max5wd2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_4670_4671_med7d AWR" href="01622_edb360_323688_awrrpt_rac_4868_4869_max5wd2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01622_edb360_323688_awrrpt_rac_4868_4869_max5wd2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201103120004';
EXEC :lv_end_date := '20201103123007';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4820;
EXEC :lv_eid := 4821;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max5wd3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4820_4821_max5wd3 <small><em>(2020-11-03T12:00:04 to 2020-11-03T12:30:07)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 4821';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_4820_4821_max5wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01623_edb360_323688_perfhub_rac_4820_4821_max5wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01623_edb360_323688_perfhub_rac_4820_4821_max5wd3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01623_edb360_323688_perfhub_rac_4820_4821_max5wd3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01623_edb360_323688_perfhub_rac_4820_4821_max5wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4820_4821_max5wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01624_edb360_323688_awrrpt_rac_4820_4821_max5wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01624_edb360_323688_awrrpt_rac_4820_4821_max5wd3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01624_edb360_323688_awrrpt_rac_4820_4821_max5wd3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01624_edb360_323688_awrrpt_rac_4820_4821_max5wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01625_edb360_323688_awrrpt_rac_4820_4821_max5wd3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01625_edb360_323688_awrrpt_rac_4820_4821_max5wd3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_4670_4671_med7d AWR" href="01625_edb360_323688_awrrpt_rac_4820_4821_max5wd3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01625_edb360_323688_awrrpt_rac_4820_4821_max5wd3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201104210048';
EXEC :lv_end_date := '20201104213001';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4886;
EXEC :lv_eid := 4887;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max7d1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4886_4887_max7d1 <small><em>(2020-11-04T21:00:48 to 2020-11-04T21:30:01)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 4887';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_4886_4887_max7d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01626_edb360_323688_perfhub_rac_4886_4887_max7d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01626_edb360_323688_perfhub_rac_4886_4887_max7d1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01626_edb360_323688_perfhub_rac_4886_4887_max7d1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01626_edb360_323688_perfhub_rac_4886_4887_max7d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4886_4887_max7d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01627_edb360_323688_awrrpt_rac_4886_4887_max7d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01627_edb360_323688_awrrpt_rac_4886_4887_max7d1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01627_edb360_323688_awrrpt_rac_4886_4887_max7d1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01627_edb360_323688_awrrpt_rac_4886_4887_max7d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01628_edb360_323688_awrrpt_rac_4886_4887_max7d1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01628_edb360_323688_awrrpt_rac_4886_4887_max7d1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_4670_4671_med7d AWR" href="01628_edb360_323688_awrrpt_rac_4886_4887_max7d1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01628_edb360_323688_awrrpt_rac_4886_4887_max7d1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201103210030';
EXEC :lv_end_date := '20201103213002';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4838;
EXEC :lv_eid := 4839;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max7d2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4838_4839_max7d2 <small><em>(2020-11-03T21:00:30 to 2020-11-03T21:30:02)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 4839';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_4838_4839_max7d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01629_edb360_323688_perfhub_rac_4838_4839_max7d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01629_edb360_323688_perfhub_rac_4838_4839_max7d2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01629_edb360_323688_perfhub_rac_4838_4839_max7d2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01629_edb360_323688_perfhub_rac_4838_4839_max7d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4838_4839_max7d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01630_edb360_323688_awrrpt_rac_4838_4839_max7d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01630_edb360_323688_awrrpt_rac_4838_4839_max7d2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01630_edb360_323688_awrrpt_rac_4838_4839_max7d2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01630_edb360_323688_awrrpt_rac_4838_4839_max7d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01631_edb360_323688_awrrpt_rac_4838_4839_max7d2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01631_edb360_323688_awrrpt_rac_4838_4839_max7d2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_4670_4671_med7d AWR" href="01631_edb360_323688_awrrpt_rac_4838_4839_max7d2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01631_edb360_323688_awrrpt_rac_4838_4839_max7d2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201102210023';
EXEC :lv_end_date := '20201102213026';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4790;
EXEC :lv_eid := 4791;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max7d3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4790_4791_max7d3 <small><em>(2020-11-02T21:00:23 to 2020-11-02T21:30:26)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 4791';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_4790_4791_max7d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01632_edb360_323688_perfhub_rac_4790_4791_max7d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01632_edb360_323688_perfhub_rac_4790_4791_max7d3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01632_edb360_323688_perfhub_rac_4790_4791_max7d3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01632_edb360_323688_perfhub_rac_4790_4791_max7d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4790_4791_max7d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01633_edb360_323688_awrrpt_rac_4790_4791_max7d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01633_edb360_323688_awrrpt_rac_4790_4791_max7d3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01633_edb360_323688_awrrpt_rac_4790_4791_max7d3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01633_edb360_323688_awrrpt_rac_4790_4791_max7d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01634_edb360_323688_awrrpt_rac_4790_4791_max7d3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01634_edb360_323688_awrrpt_rac_4790_4791_max7d3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_4670_4671_med7d AWR" href="01634_edb360_323688_awrrpt_rac_4790_4791_max7d3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01634_edb360_323688_awrrpt_rac_4790_4791_max7d3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201016090033';
EXEC :lv_end_date := '20201016093036';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3947;
EXEC :lv_eid := 3948;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max23wd1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_3947_3948_max23wd1 <small><em>(2020-10-16T09:00:33 to 2020-10-16T09:30:36)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 3948';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_3947_3948_max23wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01635_edb360_323688_perfhub_rac_3947_3948_max23wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01635_edb360_323688_perfhub_rac_3947_3948_max23wd1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01635_edb360_323688_perfhub_rac_3947_3948_max23wd1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01635_edb360_323688_perfhub_rac_3947_3948_max23wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_3947_3948_max23wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01636_edb360_323688_awrrpt_rac_3947_3948_max23wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01636_edb360_323688_awrrpt_rac_3947_3948_max23wd1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01636_edb360_323688_awrrpt_rac_3947_3948_max23wd1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01636_edb360_323688_awrrpt_rac_3947_3948_max23wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01637_edb360_323688_awrrpt_rac_3947_3948_max23wd1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01637_edb360_323688_awrrpt_rac_3947_3948_max23wd1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_3561_3562_med31d AWR" href="01637_edb360_323688_awrrpt_rac_3947_3948_max23wd1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01637_edb360_323688_awrrpt_rac_3947_3948_max23wd1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201015090014';
EXEC :lv_end_date := '20201015093017';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3899;
EXEC :lv_eid := 3900;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max23wd2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_3899_3900_max23wd2 <small><em>(2020-10-15T09:00:14 to 2020-10-15T09:30:17)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 3900';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_3899_3900_max23wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01638_edb360_323688_perfhub_rac_3899_3900_max23wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01638_edb360_323688_perfhub_rac_3899_3900_max23wd2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01638_edb360_323688_perfhub_rac_3899_3900_max23wd2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01638_edb360_323688_perfhub_rac_3899_3900_max23wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_3899_3900_max23wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01639_edb360_323688_awrrpt_rac_3899_3900_max23wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01639_edb360_323688_awrrpt_rac_3899_3900_max23wd2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01639_edb360_323688_awrrpt_rac_3899_3900_max23wd2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01639_edb360_323688_awrrpt_rac_3899_3900_max23wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01640_edb360_323688_awrrpt_rac_3899_3900_max23wd2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01640_edb360_323688_awrrpt_rac_3899_3900_max23wd2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_3561_3562_med31d AWR" href="01640_edb360_323688_awrrpt_rac_3899_3900_max23wd2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01640_edb360_323688_awrrpt_rac_3899_3900_max23wd2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201014090038';
EXEC :lv_end_date := '20201014093041';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3851;
EXEC :lv_eid := 3852;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max23wd3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_3851_3852_max23wd3 <small><em>(2020-10-14T09:00:38 to 2020-10-14T09:30:41)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 3852';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_3851_3852_max23wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01641_edb360_323688_perfhub_rac_3851_3852_max23wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01641_edb360_323688_perfhub_rac_3851_3852_max23wd3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01641_edb360_323688_perfhub_rac_3851_3852_max23wd3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01641_edb360_323688_perfhub_rac_3851_3852_max23wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_3851_3852_max23wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01642_edb360_323688_awrrpt_rac_3851_3852_max23wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01642_edb360_323688_awrrpt_rac_3851_3852_max23wd3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01642_edb360_323688_awrrpt_rac_3851_3852_max23wd3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01642_edb360_323688_awrrpt_rac_3851_3852_max23wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01643_edb360_323688_awrrpt_rac_3851_3852_max23wd3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01643_edb360_323688_awrrpt_rac_3851_3852_max23wd3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_3561_3562_med31d AWR" href="01643_edb360_323688_awrrpt_rac_3851_3852_max23wd3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01643_edb360_323688_awrrpt_rac_3851_3852_max23wd3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201017090055';
EXEC :lv_end_date := '20201017093057';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3995;
EXEC :lv_eid := 3996;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max31d1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_3995_3996_max31d1 <small><em>(2020-10-17T09:00:55 to 2020-10-17T09:30:57)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 3996';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_3995_3996_max31d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01644_edb360_323688_perfhub_rac_3995_3996_max31d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01644_edb360_323688_perfhub_rac_3995_3996_max31d1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01644_edb360_323688_perfhub_rac_3995_3996_max31d1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01644_edb360_323688_perfhub_rac_3995_3996_max31d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_3995_3996_max31d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01645_edb360_323688_awrrpt_rac_3995_3996_max31d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01645_edb360_323688_awrrpt_rac_3995_3996_max31d1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01645_edb360_323688_awrrpt_rac_3995_3996_max31d1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01645_edb360_323688_awrrpt_rac_3995_3996_max31d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01646_edb360_323688_awrrpt_rac_3995_3996_max31d1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01646_edb360_323688_awrrpt_rac_3995_3996_max31d1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_3561_3562_med31d AWR" href="01646_edb360_323688_awrrpt_rac_3995_3996_max31d1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01646_edb360_323688_awrrpt_rac_3995_3996_max31d1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201013090002';
EXEC :lv_end_date := '20201013093005';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3803;
EXEC :lv_eid := 3804;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max31d2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_3803_3804_max31d2 <small><em>(2020-10-13T09:00:02 to 2020-10-13T09:30:05)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 3804';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_3803_3804_max31d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01647_edb360_323688_perfhub_rac_3803_3804_max31d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01647_edb360_323688_perfhub_rac_3803_3804_max31d2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01647_edb360_323688_perfhub_rac_3803_3804_max31d2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01647_edb360_323688_perfhub_rac_3803_3804_max31d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_3803_3804_max31d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01648_edb360_323688_awrrpt_rac_3803_3804_max31d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01648_edb360_323688_awrrpt_rac_3803_3804_max31d2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01648_edb360_323688_awrrpt_rac_3803_3804_max31d2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01648_edb360_323688_awrrpt_rac_3803_3804_max31d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01649_edb360_323688_awrrpt_rac_3803_3804_max31d2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01649_edb360_323688_awrrpt_rac_3803_3804_max31d2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_3561_3562_med31d AWR" href="01649_edb360_323688_awrrpt_rac_3803_3804_max31d2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01649_edb360_323688_awrrpt_rac_3803_3804_max31d2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201012090027';
EXEC :lv_end_date := '20201012093030';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3755;
EXEC :lv_eid := 3756;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'max31d3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_3755_3756_max31d3 <small><em>(2020-10-12T09:00:27 to 2020-10-12T09:30:30)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
DEF edb360_eadam_snaps = '&&edb360_eadam_snaps., 3756';
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_rac_3755_3756_max31d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01650_edb360_323688_perfhub_rac_3755_3756_max31d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01650_edb360_323688_perfhub_rac_3755_3756_max31d3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01650_edb360_323688_perfhub_rac_3755_3756_max31d3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01650_edb360_323688_perfhub_rac_3755_3756_max31d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_3755_3756_max31d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01651_edb360_323688_awrrpt_rac_3755_3756_max31d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01651_edb360_323688_awrrpt_rac_3755_3756_max31d3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01651_edb360_323688_awrrpt_rac_3755_3756_max31d3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01651_edb360_323688_awrrpt_rac_3755_3756_max31d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01652_edb360_323688_awrrpt_rac_3755_3756_max31d3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01652_edb360_323688_awrrpt_rac_3755_3756_max31d3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="Global DIFF with rac_3561_3562_med31d AWR" href="01652_edb360_323688_awrrpt_rac_3755_3756_max31d3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01652_edb360_323688_awrrpt_rac_3755_3756_max31d3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201031100041';
EXEC :lv_end_date := '20201031103043';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4670;
EXEC :lv_eid := 4671;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'med7d';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4670_4671_med7d <small><em>(2020-10-31T10:00:41 to 2020-10-31T10:30:43)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4670_4671_med7d
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01653_edb360_323688_awrrpt_rac_4670_4671_med7d.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01653_edb360_323688_awrrpt_rac_4670_4671_med7d.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01653_edb360_323688_awrrpt_rac_4670_4671_med7d.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01653_edb360_323688_awrrpt_rac_4670_4671_med7d.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201008080007';
EXEC :lv_end_date := '20201008083010';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3561;
EXEC :lv_eid := 3562;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'med31d';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_3561_3562_med31d <small><em>(2020-10-08T08:00:07 to 2020-10-08T08:30:10)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_3561_3562_med31d
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01654_edb360_323688_awrrpt_rac_3561_3562_med31d.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01654_edb360_323688_awrrpt_rac_3561_3562_med31d.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01654_edb360_323688_awrrpt_rac_3561_3562_med31d.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01654_edb360_323688_awrrpt_rac_3561_3562_med31d.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201030173014';
EXEC :lv_end_date := '20201030180017';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4637;
EXEC :lv_eid := 4638;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'min5wd';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4637_4638_min5wd <small><em>(2020-10-30T17:30:14 to 2020-10-30T18:00:17)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4637_4638_min5wd
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01655_edb360_323688_awrrpt_rac_4637_4638_min5wd.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01655_edb360_323688_awrrpt_rac_4637_4638_min5wd.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01655_edb360_323688_awrrpt_rac_4637_4638_min5wd.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01655_edb360_323688_awrrpt_rac_4637_4638_min5wd.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201028142521';
EXEC :lv_end_date := '20201028142915';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4534;
EXEC :lv_eid := 4535;
EXEC :lv_inst_num := NULL;
EXEC :lv_rep := 'min23wd';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>rac_4534_4535_min23wd <small><em>(2020-10-28T14:25:21 to 2020-10-28T14:29:15)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_rac_4534_4535_min23wd
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01656_edb360_323688_awrrpt_rac_4534_4535_min23wd.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01656_edb360_323688_awrrpt_rac_4534_4535_min23wd.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_global_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01656_edb360_323688_awrrpt_rac_4534_4535_min23wd.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01656_edb360_323688_awrrpt_rac_4534_4535_min23wd.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_m1_begin_date := '20201102223031';
EXEC :lv_m1_end_date := '20201102230034';
EXEC :lv_m1_dbid := 2109323688;
EXEC :lv_m1_bid := 4793;
EXEC :lv_m1_eid := 4794;
EXEC :lv_m1_inst_num := 1;
EXEC :lv_m1_rep := 'med7d';
EXEC :lv_m2_begin_date := '20201022143030';
EXEC :lv_m2_end_date := '20201022150033';
EXEC :lv_m2_dbid := 2109323688;
EXEC :lv_m2_bid := 4246;
EXEC :lv_m2_eid := 4247;
EXEC :lv_m2_inst_num := 1;
EXEC :lv_m2_rep := 'med31d';
EXEC :lv_begin_date := '20201030190022';
EXEC :lv_end_date := '20201030193024';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4640;
EXEC :lv_eid := 4641;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max5wd1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4640_4641_max5wd1 <small><em>(2020-10-30T19:00:22 to 2020-10-30T19:30:24)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4640_4641_max5wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01657_edb360_323688_perfhub_1_4640_4641_max5wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01657_edb360_323688_perfhub_1_4640_4641_max5wd1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01657_edb360_323688_perfhub_1_4640_4641_max5wd1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01657_edb360_323688_perfhub_1_4640_4641_max5wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4640_4641_max5wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01658_edb360_323688_awrrpt_1_4640_4641_max5wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01658_edb360_323688_awrrpt_1_4640_4641_max5wd1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01658_edb360_323688_awrrpt_1_4640_4641_max5wd1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01658_edb360_323688_awrrpt_1_4640_4641_max5wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01659_edb360_323688_awrrpt_1_4640_4641_max5wd1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01659_edb360_323688_awrrpt_1_4640_4641_max5wd1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4793_4794_med7d AWR" href="01659_edb360_323688_awrrpt_1_4640_4641_max5wd1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01659_edb360_323688_awrrpt_1_4640_4641_max5wd1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201103183018';
EXEC :lv_end_date := '20201103190021';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4833;
EXEC :lv_eid := 4834;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max5wd2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4833_4834_max5wd2 <small><em>(2020-11-03T18:30:18 to 2020-11-03T19:00:21)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4833_4834_max5wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01660_edb360_323688_perfhub_1_4833_4834_max5wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01660_edb360_323688_perfhub_1_4833_4834_max5wd2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01660_edb360_323688_perfhub_1_4833_4834_max5wd2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01660_edb360_323688_perfhub_1_4833_4834_max5wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4833_4834_max5wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01661_edb360_323688_awrrpt_1_4833_4834_max5wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01661_edb360_323688_awrrpt_1_4833_4834_max5wd2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01661_edb360_323688_awrrpt_1_4833_4834_max5wd2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01661_edb360_323688_awrrpt_1_4833_4834_max5wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01662_edb360_323688_awrrpt_1_4833_4834_max5wd2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01662_edb360_323688_awrrpt_1_4833_4834_max5wd2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4793_4794_med7d AWR" href="01662_edb360_323688_awrrpt_1_4833_4834_max5wd2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01662_edb360_323688_awrrpt_1_4833_4834_max5wd2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201103190021';
EXEC :lv_end_date := '20201103193023';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4834;
EXEC :lv_eid := 4835;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max5wd3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4834_4835_max5wd3 <small><em>(2020-11-03T19:00:21 to 2020-11-03T19:30:23)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4834_4835_max5wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01663_edb360_323688_perfhub_1_4834_4835_max5wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01663_edb360_323688_perfhub_1_4834_4835_max5wd3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01663_edb360_323688_perfhub_1_4834_4835_max5wd3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01663_edb360_323688_perfhub_1_4834_4835_max5wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4834_4835_max5wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01664_edb360_323688_awrrpt_1_4834_4835_max5wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01664_edb360_323688_awrrpt_1_4834_4835_max5wd3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01664_edb360_323688_awrrpt_1_4834_4835_max5wd3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01664_edb360_323688_awrrpt_1_4834_4835_max5wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01665_edb360_323688_awrrpt_1_4834_4835_max5wd3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01665_edb360_323688_awrrpt_1_4834_4835_max5wd3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4793_4794_med7d AWR" href="01665_edb360_323688_awrrpt_1_4834_4835_max5wd3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01665_edb360_323688_awrrpt_1_4834_4835_max5wd3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201029193025';
EXEC :lv_end_date := '20201029200028';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4593;
EXEC :lv_eid := 4594;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max7d1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4593_4594_max7d1 <small><em>(2020-10-29T19:30:25 to 2020-10-29T20:00:28)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4593_4594_max7d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01666_edb360_323688_perfhub_1_4593_4594_max7d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01666_edb360_323688_perfhub_1_4593_4594_max7d1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01666_edb360_323688_perfhub_1_4593_4594_max7d1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01666_edb360_323688_perfhub_1_4593_4594_max7d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4593_4594_max7d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01667_edb360_323688_awrrpt_1_4593_4594_max7d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01667_edb360_323688_awrrpt_1_4593_4594_max7d1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01667_edb360_323688_awrrpt_1_4593_4594_max7d1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01667_edb360_323688_awrrpt_1_4593_4594_max7d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01668_edb360_323688_awrrpt_1_4593_4594_max7d1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01668_edb360_323688_awrrpt_1_4593_4594_max7d1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4793_4794_med7d AWR" href="01668_edb360_323688_awrrpt_1_4593_4594_max7d1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01668_edb360_323688_awrrpt_1_4593_4594_max7d1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201101043029';
EXEC :lv_end_date := '20201101050033';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4709;
EXEC :lv_eid := 4710;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max7d2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4709_4710_max7d2 <small><em>(2020-11-01T04:30:29 to 2020-11-01T05:00:33)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4709_4710_max7d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01669_edb360_323688_perfhub_1_4709_4710_max7d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01669_edb360_323688_perfhub_1_4709_4710_max7d2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01669_edb360_323688_perfhub_1_4709_4710_max7d2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01669_edb360_323688_perfhub_1_4709_4710_max7d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4709_4710_max7d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01670_edb360_323688_awrrpt_1_4709_4710_max7d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01670_edb360_323688_awrrpt_1_4709_4710_max7d2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01670_edb360_323688_awrrpt_1_4709_4710_max7d2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01670_edb360_323688_awrrpt_1_4709_4710_max7d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01671_edb360_323688_awrrpt_1_4709_4710_max7d2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01671_edb360_323688_awrrpt_1_4709_4710_max7d2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4793_4794_med7d AWR" href="01671_edb360_323688_awrrpt_1_4709_4710_max7d2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01671_edb360_323688_awrrpt_1_4709_4710_max7d2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201102040026';
EXEC :lv_end_date := '20201102043029';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4756;
EXEC :lv_eid := 4757;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max7d3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4756_4757_max7d3 <small><em>(2020-11-02T04:00:26 to 2020-11-02T04:30:29)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4756_4757_max7d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01672_edb360_323688_perfhub_1_4756_4757_max7d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01672_edb360_323688_perfhub_1_4756_4757_max7d3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01672_edb360_323688_perfhub_1_4756_4757_max7d3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01672_edb360_323688_perfhub_1_4756_4757_max7d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4756_4757_max7d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01673_edb360_323688_awrrpt_1_4756_4757_max7d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01673_edb360_323688_awrrpt_1_4756_4757_max7d3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01673_edb360_323688_awrrpt_1_4756_4757_max7d3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01673_edb360_323688_awrrpt_1_4756_4757_max7d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01674_edb360_323688_awrrpt_1_4756_4757_max7d3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01674_edb360_323688_awrrpt_1_4756_4757_max7d3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4793_4794_med7d AWR" href="01674_edb360_323688_awrrpt_1_4756_4757_max7d3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01674_edb360_323688_awrrpt_1_4756_4757_max7d3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201023183045';
EXEC :lv_end_date := '20201023190001';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4302;
EXEC :lv_eid := 4303;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max23wd1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4302_4303_max23wd1 <small><em>(2020-10-23T18:30:45 to 2020-10-23T19:00:01)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4302_4303_max23wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01675_edb360_323688_perfhub_1_4302_4303_max23wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01675_edb360_323688_perfhub_1_4302_4303_max23wd1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01675_edb360_323688_perfhub_1_4302_4303_max23wd1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01675_edb360_323688_perfhub_1_4302_4303_max23wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4302_4303_max23wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01676_edb360_323688_awrrpt_1_4302_4303_max23wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01676_edb360_323688_awrrpt_1_4302_4303_max23wd1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01676_edb360_323688_awrrpt_1_4302_4303_max23wd1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01676_edb360_323688_awrrpt_1_4302_4303_max23wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01677_edb360_323688_awrrpt_1_4302_4303_max23wd1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01677_edb360_323688_awrrpt_1_4302_4303_max23wd1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4246_4247_med31d AWR" href="01677_edb360_323688_awrrpt_1_4302_4303_max23wd1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01677_edb360_323688_awrrpt_1_4302_4303_max23wd1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201023100006';
EXEC :lv_end_date := '20201023103008';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4285;
EXEC :lv_eid := 4286;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max23wd2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4285_4286_max23wd2 <small><em>(2020-10-23T10:00:06 to 2020-10-23T10:30:08)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4285_4286_max23wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01678_edb360_323688_perfhub_1_4285_4286_max23wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01678_edb360_323688_perfhub_1_4285_4286_max23wd2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01678_edb360_323688_perfhub_1_4285_4286_max23wd2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01678_edb360_323688_perfhub_1_4285_4286_max23wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4285_4286_max23wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01679_edb360_323688_awrrpt_1_4285_4286_max23wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01679_edb360_323688_awrrpt_1_4285_4286_max23wd2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01679_edb360_323688_awrrpt_1_4285_4286_max23wd2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01679_edb360_323688_awrrpt_1_4285_4286_max23wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01680_edb360_323688_awrrpt_1_4285_4286_max23wd2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01680_edb360_323688_awrrpt_1_4285_4286_max23wd2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4246_4247_med31d AWR" href="01680_edb360_323688_awrrpt_1_4285_4286_max23wd2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01680_edb360_323688_awrrpt_1_4285_4286_max23wd2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201023093005';
EXEC :lv_end_date := '20201023100006';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4284;
EXEC :lv_eid := 4285;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max23wd3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4284_4285_max23wd3 <small><em>(2020-10-23T09:30:05 to 2020-10-23T10:00:06)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4284_4285_max23wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01681_edb360_323688_perfhub_1_4284_4285_max23wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01681_edb360_323688_perfhub_1_4284_4285_max23wd3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01681_edb360_323688_perfhub_1_4284_4285_max23wd3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01681_edb360_323688_perfhub_1_4284_4285_max23wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4284_4285_max23wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01682_edb360_323688_awrrpt_1_4284_4285_max23wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01682_edb360_323688_awrrpt_1_4284_4285_max23wd3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01682_edb360_323688_awrrpt_1_4284_4285_max23wd3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01682_edb360_323688_awrrpt_1_4284_4285_max23wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01683_edb360_323688_awrrpt_1_4284_4285_max23wd3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01683_edb360_323688_awrrpt_1_4284_4285_max23wd3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4246_4247_med31d AWR" href="01683_edb360_323688_awrrpt_1_4284_4285_max23wd3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01683_edb360_323688_awrrpt_1_4284_4285_max23wd3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201025203054';
EXEC :lv_end_date := '20201025210059';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4402;
EXEC :lv_eid := 4403;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max31d1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4402_4403_max31d1 <small><em>(2020-10-25T20:30:54 to 2020-10-25T21:00:59)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4402_4403_max31d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01684_edb360_323688_perfhub_1_4402_4403_max31d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01684_edb360_323688_perfhub_1_4402_4403_max31d1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01684_edb360_323688_perfhub_1_4402_4403_max31d1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01684_edb360_323688_perfhub_1_4402_4403_max31d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4402_4403_max31d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01685_edb360_323688_awrrpt_1_4402_4403_max31d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01685_edb360_323688_awrrpt_1_4402_4403_max31d1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01685_edb360_323688_awrrpt_1_4402_4403_max31d1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01685_edb360_323688_awrrpt_1_4402_4403_max31d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01686_edb360_323688_awrrpt_1_4402_4403_max31d1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01686_edb360_323688_awrrpt_1_4402_4403_max31d1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4246_4247_med31d AWR" href="01686_edb360_323688_awrrpt_1_4402_4403_max31d1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01686_edb360_323688_awrrpt_1_4402_4403_max31d1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201025183039';
EXEC :lv_end_date := '20201025190042';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4398;
EXEC :lv_eid := 4399;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max31d2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4398_4399_max31d2 <small><em>(2020-10-25T18:30:39 to 2020-10-25T19:00:42)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4398_4399_max31d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01687_edb360_323688_perfhub_1_4398_4399_max31d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01687_edb360_323688_perfhub_1_4398_4399_max31d2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01687_edb360_323688_perfhub_1_4398_4399_max31d2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01687_edb360_323688_perfhub_1_4398_4399_max31d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4398_4399_max31d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01688_edb360_323688_awrrpt_1_4398_4399_max31d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01688_edb360_323688_awrrpt_1_4398_4399_max31d2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01688_edb360_323688_awrrpt_1_4398_4399_max31d2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01688_edb360_323688_awrrpt_1_4398_4399_max31d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01689_edb360_323688_awrrpt_1_4398_4399_max31d2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01689_edb360_323688_awrrpt_1_4398_4399_max31d2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4246_4247_med31d AWR" href="01689_edb360_323688_awrrpt_1_4398_4399_max31d2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01689_edb360_323688_awrrpt_1_4398_4399_max31d2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201024203001';
EXEC :lv_end_date := '20201024210004';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4354;
EXEC :lv_eid := 4355;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'max31d3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4354_4355_max31d3 <small><em>(2020-10-24T20:30:01 to 2020-10-24T21:00:04)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_1_4354_4355_max31d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01690_edb360_323688_perfhub_1_4354_4355_max31d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01690_edb360_323688_perfhub_1_4354_4355_max31d3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01690_edb360_323688_perfhub_1_4354_4355_max31d3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01690_edb360_323688_perfhub_1_4354_4355_max31d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4354_4355_max31d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01691_edb360_323688_awrrpt_1_4354_4355_max31d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01691_edb360_323688_awrrpt_1_4354_4355_max31d3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01691_edb360_323688_awrrpt_1_4354_4355_max31d3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01691_edb360_323688_awrrpt_1_4354_4355_max31d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01692_edb360_323688_awrrpt_1_4354_4355_max31d3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01692_edb360_323688_awrrpt_1_4354_4355_max31d3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 1_4246_4247_med31d AWR" href="01692_edb360_323688_awrrpt_1_4354_4355_max31d3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01692_edb360_323688_awrrpt_1_4354_4355_max31d3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201102223031';
EXEC :lv_end_date := '20201102230034';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4793;
EXEC :lv_eid := 4794;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'med7d';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4793_4794_med7d <small><em>(2020-11-02T22:30:31 to 2020-11-02T23:00:34)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4793_4794_med7d
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01693_edb360_323688_awrrpt_1_4793_4794_med7d.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01693_edb360_323688_awrrpt_1_4793_4794_med7d.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01693_edb360_323688_awrrpt_1_4793_4794_med7d.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01693_edb360_323688_awrrpt_1_4793_4794_med7d.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201022143030';
EXEC :lv_end_date := '20201022150033';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4246;
EXEC :lv_eid := 4247;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'med31d';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4246_4247_med31d <small><em>(2020-10-22T14:30:30 to 2020-10-22T15:00:33)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4246_4247_med31d
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01694_edb360_323688_awrrpt_1_4246_4247_med31d.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01694_edb360_323688_awrrpt_1_4246_4247_med31d.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01694_edb360_323688_awrrpt_1_4246_4247_med31d.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01694_edb360_323688_awrrpt_1_4246_4247_med31d.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201105173043';
EXEC :lv_end_date := '20201105180046';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4927;
EXEC :lv_eid := 4928;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'min5wd';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4927_4928_min5wd <small><em>(2020-11-05T17:30:43 to 2020-11-05T18:00:46)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4927_4928_min5wd
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01695_edb360_323688_awrrpt_1_4927_4928_min5wd.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01695_edb360_323688_awrrpt_1_4927_4928_min5wd.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01695_edb360_323688_awrrpt_1_4927_4928_min5wd.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01695_edb360_323688_awrrpt_1_4927_4928_min5wd.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201028142521';
EXEC :lv_end_date := '20201028142915';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4534;
EXEC :lv_eid := 4535;
EXEC :lv_inst_num := 1;
EXEC :lv_rep := 'min23wd';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>1_4534_4535_min23wd <small><em>(2020-10-28T14:25:21 to 2020-10-28T14:29:15)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_1_4534_4535_min23wd
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01696_edb360_323688_awrrpt_1_4534_4535_min23wd.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01696_edb360_323688_awrrpt_1_4534_4535_min23wd.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01696_edb360_323688_awrrpt_1_4534_4535_min23wd.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01696_edb360_323688_awrrpt_1_4534_4535_min23wd.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_m1_begin_date := '20201106020027';
EXEC :lv_m1_end_date := '20201106023030';
EXEC :lv_m1_dbid := 2109323688;
EXEC :lv_m1_bid := 4944;
EXEC :lv_m1_eid := 4945;
EXEC :lv_m1_inst_num := 2;
EXEC :lv_m1_rep := 'med7d';
EXEC :lv_m2_begin_date := '20201014080034';
EXEC :lv_m2_end_date := '20201014083036';
EXEC :lv_m2_dbid := 2109323688;
EXEC :lv_m2_bid := 3849;
EXEC :lv_m2_eid := 3850;
EXEC :lv_m2_inst_num := 2;
EXEC :lv_m2_rep := 'med31d';
EXEC :lv_begin_date := '20201105160034';
EXEC :lv_end_date := '20201105163037';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4924;
EXEC :lv_eid := 4925;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max5wd1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4924_4925_max5wd1 <small><em>(2020-11-05T16:00:34 to 2020-11-05T16:30:37)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_4924_4925_max5wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01697_edb360_323688_perfhub_2_4924_4925_max5wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01697_edb360_323688_perfhub_2_4924_4925_max5wd1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01697_edb360_323688_perfhub_2_4924_4925_max5wd1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01697_edb360_323688_perfhub_2_4924_4925_max5wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4924_4925_max5wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01698_edb360_323688_awrrpt_2_4924_4925_max5wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01698_edb360_323688_awrrpt_2_4924_4925_max5wd1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01698_edb360_323688_awrrpt_2_4924_4925_max5wd1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01698_edb360_323688_awrrpt_2_4924_4925_max5wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01699_edb360_323688_awrrpt_2_4924_4925_max5wd1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01699_edb360_323688_awrrpt_2_4924_4925_max5wd1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_4944_4945_med7d AWR" href="01699_edb360_323688_awrrpt_2_4924_4925_max5wd1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01699_edb360_323688_awrrpt_2_4924_4925_max5wd1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201104120014';
EXEC :lv_end_date := '20201104123016';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4868;
EXEC :lv_eid := 4869;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max5wd2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4868_4869_max5wd2 <small><em>(2020-11-04T12:00:14 to 2020-11-04T12:30:16)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_4868_4869_max5wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01700_edb360_323688_perfhub_2_4868_4869_max5wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01700_edb360_323688_perfhub_2_4868_4869_max5wd2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01700_edb360_323688_perfhub_2_4868_4869_max5wd2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01700_edb360_323688_perfhub_2_4868_4869_max5wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4868_4869_max5wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01701_edb360_323688_awrrpt_2_4868_4869_max5wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01701_edb360_323688_awrrpt_2_4868_4869_max5wd2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01701_edb360_323688_awrrpt_2_4868_4869_max5wd2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01701_edb360_323688_awrrpt_2_4868_4869_max5wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01702_edb360_323688_awrrpt_2_4868_4869_max5wd2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01702_edb360_323688_awrrpt_2_4868_4869_max5wd2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_4944_4945_med7d AWR" href="01702_edb360_323688_awrrpt_2_4868_4869_max5wd2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01702_edb360_323688_awrrpt_2_4868_4869_max5wd2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201103120004';
EXEC :lv_end_date := '20201103123007';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4820;
EXEC :lv_eid := 4821;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max5wd3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4820_4821_max5wd3 <small><em>(2020-11-03T12:00:04 to 2020-11-03T12:30:07)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_4820_4821_max5wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01703_edb360_323688_perfhub_2_4820_4821_max5wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01703_edb360_323688_perfhub_2_4820_4821_max5wd3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01703_edb360_323688_perfhub_2_4820_4821_max5wd3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01703_edb360_323688_perfhub_2_4820_4821_max5wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4820_4821_max5wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01704_edb360_323688_awrrpt_2_4820_4821_max5wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01704_edb360_323688_awrrpt_2_4820_4821_max5wd3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01704_edb360_323688_awrrpt_2_4820_4821_max5wd3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01704_edb360_323688_awrrpt_2_4820_4821_max5wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01705_edb360_323688_awrrpt_2_4820_4821_max5wd3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01705_edb360_323688_awrrpt_2_4820_4821_max5wd3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_4944_4945_med7d AWR" href="01705_edb360_323688_awrrpt_2_4820_4821_max5wd3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01705_edb360_323688_awrrpt_2_4820_4821_max5wd3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201104210048';
EXEC :lv_end_date := '20201104213001';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4886;
EXEC :lv_eid := 4887;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max7d1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4886_4887_max7d1 <small><em>(2020-11-04T21:00:48 to 2020-11-04T21:30:01)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_4886_4887_max7d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01706_edb360_323688_perfhub_2_4886_4887_max7d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01706_edb360_323688_perfhub_2_4886_4887_max7d1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01706_edb360_323688_perfhub_2_4886_4887_max7d1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01706_edb360_323688_perfhub_2_4886_4887_max7d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4886_4887_max7d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01707_edb360_323688_awrrpt_2_4886_4887_max7d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01707_edb360_323688_awrrpt_2_4886_4887_max7d1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01707_edb360_323688_awrrpt_2_4886_4887_max7d1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01707_edb360_323688_awrrpt_2_4886_4887_max7d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01708_edb360_323688_awrrpt_2_4886_4887_max7d1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01708_edb360_323688_awrrpt_2_4886_4887_max7d1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_4944_4945_med7d AWR" href="01708_edb360_323688_awrrpt_2_4886_4887_max7d1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01708_edb360_323688_awrrpt_2_4886_4887_max7d1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201103210030';
EXEC :lv_end_date := '20201103213002';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4838;
EXEC :lv_eid := 4839;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max7d2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4838_4839_max7d2 <small><em>(2020-11-03T21:00:30 to 2020-11-03T21:30:02)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_4838_4839_max7d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01709_edb360_323688_perfhub_2_4838_4839_max7d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01709_edb360_323688_perfhub_2_4838_4839_max7d2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01709_edb360_323688_perfhub_2_4838_4839_max7d2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01709_edb360_323688_perfhub_2_4838_4839_max7d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4838_4839_max7d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01710_edb360_323688_awrrpt_2_4838_4839_max7d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01710_edb360_323688_awrrpt_2_4838_4839_max7d2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01710_edb360_323688_awrrpt_2_4838_4839_max7d2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01710_edb360_323688_awrrpt_2_4838_4839_max7d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01711_edb360_323688_awrrpt_2_4838_4839_max7d2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01711_edb360_323688_awrrpt_2_4838_4839_max7d2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_4944_4945_med7d AWR" href="01711_edb360_323688_awrrpt_2_4838_4839_max7d2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01711_edb360_323688_awrrpt_2_4838_4839_max7d2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201102210023';
EXEC :lv_end_date := '20201102213026';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4790;
EXEC :lv_eid := 4791;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max7d3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4790_4791_max7d3 <small><em>(2020-11-02T21:00:23 to 2020-11-02T21:30:26)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_4790_4791_max7d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01712_edb360_323688_perfhub_2_4790_4791_max7d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01712_edb360_323688_perfhub_2_4790_4791_max7d3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01712_edb360_323688_perfhub_2_4790_4791_max7d3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01712_edb360_323688_perfhub_2_4790_4791_max7d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4790_4791_max7d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01713_edb360_323688_awrrpt_2_4790_4791_max7d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01713_edb360_323688_awrrpt_2_4790_4791_max7d3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01713_edb360_323688_awrrpt_2_4790_4791_max7d3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01713_edb360_323688_awrrpt_2_4790_4791_max7d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01714_edb360_323688_awrrpt_2_4790_4791_max7d3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01714_edb360_323688_awrrpt_2_4790_4791_max7d3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m1_dbid,:lv_m1_inst_num,:lv_m1_bid,:lv_m1_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_4944_4945_med7d AWR" href="01714_edb360_323688_awrrpt_2_4790_4791_max7d3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01714_edb360_323688_awrrpt_2_4790_4791_max7d3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201016090033';
EXEC :lv_end_date := '20201016093036';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3947;
EXEC :lv_eid := 3948;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max23wd1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_3947_3948_max23wd1 <small><em>(2020-10-16T09:00:33 to 2020-10-16T09:30:36)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_3947_3948_max23wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01715_edb360_323688_perfhub_2_3947_3948_max23wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01715_edb360_323688_perfhub_2_3947_3948_max23wd1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01715_edb360_323688_perfhub_2_3947_3948_max23wd1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01715_edb360_323688_perfhub_2_3947_3948_max23wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_3947_3948_max23wd1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01716_edb360_323688_awrrpt_2_3947_3948_max23wd1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01716_edb360_323688_awrrpt_2_3947_3948_max23wd1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01716_edb360_323688_awrrpt_2_3947_3948_max23wd1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01716_edb360_323688_awrrpt_2_3947_3948_max23wd1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01717_edb360_323688_awrrpt_2_3947_3948_max23wd1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01717_edb360_323688_awrrpt_2_3947_3948_max23wd1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_3849_3850_med31d AWR" href="01717_edb360_323688_awrrpt_2_3947_3948_max23wd1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01717_edb360_323688_awrrpt_2_3947_3948_max23wd1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201015090014';
EXEC :lv_end_date := '20201015093017';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3899;
EXEC :lv_eid := 3900;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max23wd2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_3899_3900_max23wd2 <small><em>(2020-10-15T09:00:14 to 2020-10-15T09:30:17)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_3899_3900_max23wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01718_edb360_323688_perfhub_2_3899_3900_max23wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01718_edb360_323688_perfhub_2_3899_3900_max23wd2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01718_edb360_323688_perfhub_2_3899_3900_max23wd2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01718_edb360_323688_perfhub_2_3899_3900_max23wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_3899_3900_max23wd2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01719_edb360_323688_awrrpt_2_3899_3900_max23wd2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01719_edb360_323688_awrrpt_2_3899_3900_max23wd2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01719_edb360_323688_awrrpt_2_3899_3900_max23wd2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01719_edb360_323688_awrrpt_2_3899_3900_max23wd2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01720_edb360_323688_awrrpt_2_3899_3900_max23wd2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01720_edb360_323688_awrrpt_2_3899_3900_max23wd2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_3849_3850_med31d AWR" href="01720_edb360_323688_awrrpt_2_3899_3900_max23wd2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01720_edb360_323688_awrrpt_2_3899_3900_max23wd2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201014090038';
EXEC :lv_end_date := '20201014093041';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3851;
EXEC :lv_eid := 3852;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max23wd3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_3851_3852_max23wd3 <small><em>(2020-10-14T09:00:38 to 2020-10-14T09:30:41)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_3851_3852_max23wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01721_edb360_323688_perfhub_2_3851_3852_max23wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01721_edb360_323688_perfhub_2_3851_3852_max23wd3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01721_edb360_323688_perfhub_2_3851_3852_max23wd3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01721_edb360_323688_perfhub_2_3851_3852_max23wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_3851_3852_max23wd3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01722_edb360_323688_awrrpt_2_3851_3852_max23wd3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01722_edb360_323688_awrrpt_2_3851_3852_max23wd3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01722_edb360_323688_awrrpt_2_3851_3852_max23wd3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01722_edb360_323688_awrrpt_2_3851_3852_max23wd3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01723_edb360_323688_awrrpt_2_3851_3852_max23wd3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01723_edb360_323688_awrrpt_2_3851_3852_max23wd3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_3849_3850_med31d AWR" href="01723_edb360_323688_awrrpt_2_3851_3852_max23wd3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01723_edb360_323688_awrrpt_2_3851_3852_max23wd3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201017090055';
EXEC :lv_end_date := '20201017093057';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3995;
EXEC :lv_eid := 3996;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max31d1';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_3995_3996_max31d1 <small><em>(2020-10-17T09:00:55 to 2020-10-17T09:30:57)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_3995_3996_max31d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01724_edb360_323688_perfhub_2_3995_3996_max31d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01724_edb360_323688_perfhub_2_3995_3996_max31d1.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01724_edb360_323688_perfhub_2_3995_3996_max31d1.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01724_edb360_323688_perfhub_2_3995_3996_max31d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_3995_3996_max31d1
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01725_edb360_323688_awrrpt_2_3995_3996_max31d1.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01725_edb360_323688_awrrpt_2_3995_3996_max31d1.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01725_edb360_323688_awrrpt_2_3995_3996_max31d1.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01725_edb360_323688_awrrpt_2_3995_3996_max31d1.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01726_edb360_323688_awrrpt_2_3995_3996_max31d1_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01726_edb360_323688_awrrpt_2_3995_3996_max31d1_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_3849_3850_med31d AWR" href="01726_edb360_323688_awrrpt_2_3995_3996_max31d1_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01726_edb360_323688_awrrpt_2_3995_3996_max31d1_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201013090002';
EXEC :lv_end_date := '20201013093005';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3803;
EXEC :lv_eid := 3804;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max31d2';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_3803_3804_max31d2 <small><em>(2020-10-13T09:00:02 to 2020-10-13T09:30:05)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_3803_3804_max31d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01727_edb360_323688_perfhub_2_3803_3804_max31d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01727_edb360_323688_perfhub_2_3803_3804_max31d2.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01727_edb360_323688_perfhub_2_3803_3804_max31d2.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01727_edb360_323688_perfhub_2_3803_3804_max31d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_3803_3804_max31d2
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01728_edb360_323688_awrrpt_2_3803_3804_max31d2.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01728_edb360_323688_awrrpt_2_3803_3804_max31d2.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01728_edb360_323688_awrrpt_2_3803_3804_max31d2.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01728_edb360_323688_awrrpt_2_3803_3804_max31d2.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01729_edb360_323688_awrrpt_2_3803_3804_max31d2_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01729_edb360_323688_awrrpt_2_3803_3804_max31d2_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_3849_3850_med31d AWR" href="01729_edb360_323688_awrrpt_2_3803_3804_max31d2_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01729_edb360_323688_awrrpt_2_3803_3804_max31d2_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201012090027';
EXEC :lv_end_date := '20201012093030';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3755;
EXEC :lv_eid := 3756;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'max31d3';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_3755_3756_max31d3 <small><em>(2020-10-12T09:00:27 to 2020-10-12T09:30:30)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_perfhub_2_3755_3756_max31d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01730_edb360_323688_perfhub_2_3755_3756_max31d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01730_edb360_323688_perfhub_2_3755_3756_max31d3.html;
SELECT /* 7a */ DBMS_PERF.REPORT_PERFHUB(0,GREATEST(TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(12/24),TO_DATE('2020-10-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),LEAST(TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(12/24),TO_DATE('2020-11-06T11:22:16','YYYY-MM-DD"T"HH24:MI:SS')),TO_DATE(:lv_begin_date,'YYYYMMDDHH24MISS')-(1/24),TO_DATE(:lv_end_date,'YYYYMMDDHH24MISS')+(1/24),:lv_inst_num,:lv_dbid) FROM DUAL WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01730_edb360_323688_perfhub_2_3755_3756_max31d3.html">perfhub html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01730_edb360_323688_perfhub_2_3755_3756_max31d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_3755_3756_max31d3
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01731_edb360_323688_awrrpt_2_3755_3756_max31d3.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01731_edb360_323688_awrrpt_2_3755_3756_max31d3.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01731_edb360_323688_awrrpt_2_3755_3756_max31d3.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01731_edb360_323688_awrrpt_2_3755_3756_max31d3.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01732_edb360_323688_awrrpt_2_3755_3756_max31d3_diff.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01732_edb360_323688_awrrpt_2_3755_3756_max31d3_diff.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_diff_report_html(:lv_m2_dbid,:lv_m2_inst_num,:lv_m2_bid,:lv_m2_eid,:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a title="DIFF with 2_3849_3850_med31d AWR" href="01732_edb360_323688_awrrpt_2_3755_3756_max31d3_diff.html">awr diff html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01732_edb360_323688_awrrpt_2_3755_3756_max31d3_diff.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201106020027';
EXEC :lv_end_date := '20201106023030';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4944;
EXEC :lv_eid := 4945;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'med7d';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4944_4945_med7d <small><em>(2020-11-06T02:00:27 to 2020-11-06T02:30:30)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4944_4945_med7d
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01733_edb360_323688_awrrpt_2_4944_4945_med7d.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01733_edb360_323688_awrrpt_2_4944_4945_med7d.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01733_edb360_323688_awrrpt_2_4944_4945_med7d.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01733_edb360_323688_awrrpt_2_4944_4945_med7d.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201014080034';
EXEC :lv_end_date := '20201014083036';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 3849;
EXEC :lv_eid := 3850;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'med31d';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_3849_3850_med31d <small><em>(2020-10-14T08:00:34 to 2020-10-14T08:30:36)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_3849_3850_med31d
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01734_edb360_323688_awrrpt_2_3849_3850_med31d.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01734_edb360_323688_awrrpt_2_3849_3850_med31d.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01734_edb360_323688_awrrpt_2_3849_3850_med31d.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01734_edb360_323688_awrrpt_2_3849_3850_med31d.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201030173014';
EXEC :lv_end_date := '20201030180017';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4637;
EXEC :lv_eid := 4638;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'min5wd';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4637_4638_min5wd <small><em>(2020-10-30T17:30:14 to 2020-10-30T18:00:17)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4637_4638_min5wd
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01735_edb360_323688_awrrpt_2_4637_4638_min5wd.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01735_edb360_323688_awrrpt_2_4637_4638_min5wd.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01735_edb360_323688_awrrpt_2_4637_4638_min5wd.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01735_edb360_323688_awrrpt_2_4637_4638_min5wd.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :lv_begin_date := '20201028142521';
EXEC :lv_end_date := '20201028142915';
EXEC :lv_dbid := 2109323688;
EXEC :lv_bid := 4534;
EXEC :lv_eid := 4535;
EXEC :lv_inst_num := 2;
EXEC :lv_rep := 'min23wd';
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <li>2_4534_4535_min23wd <small><em>(2020-10-28T14:25:21 to 2020-10-28T14:29:15)</em></small><br />
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
EXEC :repo_seq := :repo_seq + 1;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
COL edb360_bypass NEW_V edb360_bypass;
SELECT ' echo timeout ' edb360_bypass FROM DUAL WHERE (DBMS_UTILITY.GET_TIME - :edb360_time0) / 100  >  :edb360_max_seconds;
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
PRO
PRO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRO
PRO &&hh_mm_ss. edb360_323688_awrrpt_2_4534_4535_min23wd
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00002_edb360_323688_log.txt >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00004_edb360_323688_log3.txt
COL hh_mm_ss NEW_V hh_mm_ss NOPRI FOR A8;
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') hh_mm_ss FROM DUAL;
-- update log
SPO 00002_edb360_323688_log.txt APP;
SET TERM ON;
PRO &&hh_mm_ss. 7a 01736_edb360_323688_awrrpt_2_4534_4535_min23wd.html
SELECT 'Elapsed Hours so far: '||ROUND((DBMS_UTILITY.GET_TIME - :edb360_time0) / 100 / 3600, 3) FROM DUAL;
SET TERM OFF;
SPO OFF;
SPO 01736_edb360_323688_awrrpt_2_4534_4535_min23wd.html;
SELECT output /* 7a */ FROM TABLE(DBMS_WORKLOAD_REPOSITORY.awr_report_html(:lv_dbid,:lv_inst_num,:lv_bid,:lv_eid,9)) WHERE '&&edb360_bypass.' IS NULL;
SELECT '*** time limit exceeded ***' FROM DUAL WHERE '&&edb360_bypass.' IS NOT NULL;
SPO OFF;
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO <a href="01736_edb360_323688_awrrpt_2_4534_4535_min23wd.html">awr html</a>
SPO OFF;
-- zip
HOS zip -mj edb360_323688_742967_20201106_1122 01736_edb360_323688_awrrpt_2_4534_4535_min23wd.html >> 00004_edb360_323688_log3.txt
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
-- update main report
SPO 00001_edb360_323688_index.html APP;
PRO </li>
SPO OFF;
HOS zip -j edb360_323688_742967_20201106_1122 00001_edb360_323688_index.html >> 00004_edb360_323688_log3.txt
