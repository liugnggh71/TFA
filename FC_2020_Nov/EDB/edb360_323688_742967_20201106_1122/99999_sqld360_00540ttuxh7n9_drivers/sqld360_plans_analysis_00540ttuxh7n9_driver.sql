SET PAGES 50000
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO <td>
SPO OFF
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO <h2>Execution Plan</h2>
SET DEF @
PRO <ol start="@report_sequence.">
SET DEF &
SPO OFF
DEF bubbleMaxValue = ''
COL bubbleMaxValue NEW_V bubbleMaxValue
SELECT NVL2(MAX(id), 'maxValue:'||TO_CHAR(MAX(id)+2)||',' , '') bubbleMaxValue
FROM (SELECT MAX(id) id
FROM gv$sql_plan
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531
UNION ALL
SELECT MAX(id) id
FROM dba_hist_sql_plan
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value = 368490531
AND 'Y' = 'Y');
----------------------------
COL treeColor NEW_V treeColor
DELETE plan_table WHERE statement_id = 'SQLD360_TREECOLOR' AND operation = '00540ttuxh7n9';
INSERT ALL
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', expanded_node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', collapsed_node_color)
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id LIKE 'SQLD360_ASH_DATA%'
AND /*cost*/ bytes =368490531
AND remarks = '00540ttuxh7n9'
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = '00540ttuxh7n9'
AND 'Y' = 'Y')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),'/row/@op') stepid, EXTRACTVALUE(VALUE(b),'/row/@skp') skp, EXTRACTVALUE(VALUE(b),'/row/@dep') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),'/*/display_map/row'))) b
WHERE sql_id = '00540ttuxh7n9'
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT adapt_id id,
'data.setRowProperty('||adapt_id||', ''style'',          ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' node_color,
'data.setRowProperty('||adapt_id||', ''expandedStyle'',  ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' expanded_node_color,
'data.setRowProperty('||adapt_id||', ''collapsedStyle'', ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*sum_perc_impact/100),'XXXX')),2,'0')||CASE WHEN sum_perc_impact = 0 THEN 'FF' ELSE '00' END||''');' collapsed_node_color
FROM plan_with_rec_impact
ORDER BY adapt_id;
DEF title='Plan Tree for PHV 368490531 with subtree'
DEF main_table = 'DBA_HIST_SQL_PLAN'
DEF skip_html='Y'
DEF skip_text='Y'
DEF skip_csv='Y'
DEF skip_tch=''
BEGIN
:sql_text := '
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id LIKE ''SQLD360_ASH_DATA%''
AND /*cost*/ bytes =368490531
AND remarks = ''00540ttuxh7n9''
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = ''00540ttuxh7n9''
AND ''Y'' = ''Y'')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),''/row/@op'') stepid, EXTRACTVALUE(VALUE(b),''/row/@skp'') skp, EXTRACTVALUE(VALUE(b),''/row/@dep'') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),''/*/display_map/row''))) b
WHERE sql_id = ''00540ttuxh7n9''
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT ''{v: ''''''||adapt_id||'''''',f: ''''''||adapt_id||'' - ''||operation||'' ''||options||NVL2(object_name,''<br>'','' '')||object_name||''''''}'' id,
parent_id,
SUBSTR(''Step ID: ''||adapt_id||'' (ASH Step ID: ''||id||'')\nASH Samples: ''||num_samples||'' (''||perc_impact||''%)''||
''\nSubstree Impact ''||sum_perc_impact||''%''||
NVL2(access_predicates,''\n\nAccess Predicates: ''||access_predicates,'''')||NVL2(filter_predicates,''\n\nFilter Predicates: ''||filter_predicates,''''),1,4000) message,
adapt_id id3
FROM plan_with_rec_impact
ORDER BY id3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title = 'Plan from Memory for PHV 368490531'
DEF main_table = 'GV$SQL_PLAN_STATISTICS_ALL'
@sql/sqld360_0s_pre_nondef
SET DEF @
SPO @@one_spool_filename..txt;
PRO @@title.@@title_suffix. (@@main_table.)
PRO @@abstract.
PRO @@abstract2.
COL inst_child FOR A21;
BREAK ON inst_child SKIP 2;
SET PAGES 0;
WITH v AS (
SELECT /*+ MATERIALIZE */
DISTINCT sql_id, inst_id, child_number, child_address
FROM gv$sql
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value = 368490531
AND loaded_versions > 0
AND is_obsolete = 'N'
ORDER BY 1, 2, 3 )
SELECT /*+ ORDERED USE_NL(t) */
RPAD('Inst: '||v.inst_id, 9)||' '||RPAD('Child: '||v.child_number, 11) inst_child,
t.plan_table_output
FROM v, TABLE(DBMS_XPLAN.DISPLAY('gv$sql_plan_statistics_all', NULL, 'ADVANCED ALLSTATS LAST',
'inst_id='||v.inst_id||' AND sql_id='''||v.sql_id||''' AND plan_hash_value=368490531 AND child_number='||v.child_number||' AND child_address='''||v.child_address||'''')) t
/
SET TERM ON
-- get current time
SPO 00002_sqld360_323688_00540ttuxh7n9_log.txt APP;
COL current_time NEW_V current_time FOR A15;
SELECT 'Completed: ' x, TO_CHAR(SYSDATE, 'HH24:MI:SS') current_time FROM DUAL;
SET TERM OFF
HOS zip -q sqld360_323688_00540ttuxh7n9_742967_20201106_1650 00002_sqld360_323688_00540ttuxh7n9_log.txt
-- update main report
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO <li title="@@main_table.">@@title.
PRO <a href="@@one_spool_filename..txt">text</a>
SPO OFF;
HOS zip -mq sqld360_323688_00540ttuxh7n9_742967_20201106_1650 @@one_spool_filename..txt
HOS zip -q sqld360_323688_00540ttuxh7n9_742967_20201106_1650 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html
-- update main report
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </li>
SPO OFF;
HOS zip -q sqld360_323688_00540ttuxh7n9_742967_20201106_1650 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html
SET DEF &
----------------------------
DEF title = 'Plan from History for PHV 368490531'
DEF main_table = 'DBA_HIST_SQL_PLAN'
@sql/sqld360_0s_pre_nondef
SET DEF @
SPO @@one_spool_filename..txt;
PRO @@title.@@title_suffix. (@@main_table.)
PRO @@abstract.
PRO @@abstract2.
COL inst_child FOR A21;
BREAK ON inst_child SKIP 2;
SET PAGES 0;
WITH v AS (
SELECT /*+ MATERIALIZE */
DISTINCT sql_id, plan_hash_value, dbid
FROM dba_hist_sql_plan
WHERE 'Y' = 'Y'
AND dbid = '2109323688'
AND sql_id = '00540ttuxh7n9'
AND plan_hash_value = 368490531
ORDER BY 1, 2, 3 )
SELECT /*+ ORDERED USE_NL(t) */ t.plan_table_output
FROM v, TABLE(DBMS_XPLAN.DISPLAY_AWR(v.sql_id, v.plan_hash_value, v.dbid, 'ADVANCED')) t;
SET TERM ON
-- get current time
SPO 00002_sqld360_323688_00540ttuxh7n9_log.txt APP;
COL current_time NEW_V current_time FOR A15;
SELECT 'Completed: ' x, TO_CHAR(SYSDATE, 'HH24:MI:SS') current_time FROM DUAL;
SET TERM OFF
HOS zip -q sqld360_323688_00540ttuxh7n9_742967_20201106_1650 00002_sqld360_323688_00540ttuxh7n9_log.txt
-- update main report
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO <li title="@@main_table.">@@title.
PRO <a href="@@one_spool_filename..txt">text</a>
SPO OFF;
HOS zip -mq sqld360_323688_00540ttuxh7n9_742967_20201106_1650 @@one_spool_filename..txt
HOS zip -q sqld360_323688_00540ttuxh7n9_742967_20201106_1650 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html
-- update main report
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </li>
SPO OFF;
HOS zip -q sqld360_323688_00540ttuxh7n9_742967_20201106_1650 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html
SET DEF &
----------------------------
EXEC repo_seq := repo_seq + 2;
SELECT TO_CHAR(:repo_seq) report_sequence FROM DUAL;
----------------------------
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </ol>
PRO <h2>Elapsed Time</h2>
SET DEF @
PRO <ol start="@report_sequence.">
SET DEF &
SPO OFF
SET PAGES 50000
DEF title='Avg et/exec for recent execs for PHV 368490531'
DEF main_table = 'GV$ACTIVE_SESSION_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Elapsed Time in secs'
DEF tit_01 = 'Average Elapsed Time/exec'
DEF tit_02 = 'Average Time on CPU/exec'
DEF tit_03 = 'Average DB Time/exec'
DEF tit_04 = 'Min Elapsed Time/exec'
DEF tit_05 = 'Max Elapsed Time/exec'
DEF tit_06 = 'Average Elapsed Time/exec Trend'
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(start_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(start_time, ''YYYY-MM-DD HH24:MI'') end_time,
avg_et,
avg_cpu_time,
avg_db_time,
min_et,
max_et,
AVG(avg_et) OVER (ORDER BY start_time ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) avg_et_trend,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT start_time,
TRUNC(AVG(et),2) avg_et,
TRUNC(AVG(cpu_time),2) avg_cpu_time,
TRUNC(AVG(db_time),2) avg_db_time,
TRUNC(MIN(et),2) min_et,
TRUNC(MAX(et),2) max_et
FROM (SELECT TO_DATE(SUBSTR(distribution,1,12),''YYYYMMDDHH24MI'') start_time,
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost)||''-''||
NVL(partition_id,0)||''-''||NVL(distribution,''x'') uniq_exec,
1+86400*(MAX(timestamp)-MIN(timestamp)) et,
SUM(CASE WHEN object_node = ''ON CPU'' THEN                    1 ELSE 0 END) cpu_time,
COUNT(*) db_time
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_MEM''
AND /*cost*/ bytes =  368490531
AND remarks = ''00540ttuxh7n9''
AND partition_id IS NOT NULL
AND ''Y'' = ''Y''
GROUP BY TO_DATE(SUBSTR(distribution,1,12),''YYYYMMDDHH24MI''),
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost)||''-''||
NVL(partition_id,0)||''-''||NVL(distribution,''x''))
GROUP BY start_time)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Avg et/exec for historical execs for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Elapsed Time in secs'
DEF tit_01 = 'Average Elapsed Time/exec'
DEF tit_02 = 'Average Time on CPU/exec'
DEF tit_03 = 'Average DB Time/exec'
DEF tit_04 = 'Min Elapsed Time/exec'
DEF tit_05 = 'Max Elapsed Time/exec'
DEF tit_06 = 'Average Elapsed Time/exec Trend'
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT b.snap_id snap_id,
TO_CHAR(b.begin_interval_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(b.end_interval_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(avg_et,0) avg_et,
NVL(avg_cpu_time,0) avg_cpu_time,
NVL(avg_db_time,0) avg_db_time,
NVL(min_et,0) min_et,
NVL(max_et,0) max_et,
NVL(AVG(avg_et) OVER (ORDER BY b.snap_id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),0) avg_et_trend,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT snap_id,
TRUNC(MAX(avg_et),2) avg_et,
TRUNC(MAX(avg_cpu_time),2) avg_cpu_time,
TRUNC(MAX(avg_db_time),2) avg_db_time,
TRUNC(MAX(min_et),2) min_et,
TRUNC(MAX(max_et),2) max_et
FROM (SELECT start_time,
MIN(start_snap_id) snap_id,
AVG(et) avg_et,
AVG(cpu_time) avg_cpu_time,
AVG(db_time) avg_db_time,
MIN(et) min_et,
MAX(et) max_et
FROM (SELECT TO_DATE(SUBSTR(distribution,1,12),''YYYYMMDDHH24MI'') start_time,
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost)||''-''||
NVL(partition_id,0)||''-''||NVL(distribution,''x'') uniq_exec,
MIN(cardinality) start_snap_id,
10+86400*(MAX(timestamp)-MIN(timestamp)) et,
SUM(CASE WHEN object_node = ''ON CPU'' THEN                   10 ELSE 0 END) cpu_time,
SUM(                  10) db_time
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND partition_id IS NOT NULL
AND /*cost*/ bytes = 368490531
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
GROUP BY TO_DATE(SUBSTR(distribution,1,12),''YYYYMMDDHH24MI''),
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost)||''-''||
NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost)||''-''||
NVL(partition_id,0)||''-''||NVL(distribution,''x''))
GROUP BY start_time)
GROUP BY snap_id) ash,
(SELECT snap_id, begin_interval_time, end_interval_time
FROM (SELECT snap_id, begin_interval_time, end_interval_time,
ROW_NUMBER() OVER (PARTITION BY snap_id ORDER BY instance_number) rn
FROM dba_hist_snapshot)
WHERE rn = 1) b
WHERE ash.snap_id(+) = b.snap_id
AND b.snap_id BETWEEN 3484 AND 4973
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </ol>
PRO <h2>Resource Consumption</h2>
SET DEF @
PRO <ol start="@report_sequence.">
SET DEF &
SPO OFF
DEF title='Peak PGA and TEMP usage for recent execs for PHV 368490531'
DEF main_table = 'V$ACTIVE_SESSION_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Bytes'
DEF tit_01 = 'PGA Usage'
DEF tit_02 = 'TEMP Usage'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(pga_allocated_min,0) pga_allocated_min,
NVL(temp_space_allocated_min,0) temp_space_allocated_min,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT TRUNC(end_time,''mi'') end_time,
MAX(pga_allocated) pga_allocated_min,
MAX(temp_space_allocated) temp_space_allocated_min
FROM (SELECT timestamp end_time,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1))) pga_allocated,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1))) temp_space_allocated
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_MEM''
AND /*cost*/ bytes =  368490531
AND remarks = ''00540ttuxh7n9''
AND partition_id IS NOT NULL
AND ''Y'' = ''Y''
GROUP BY timestamp)
GROUP BY TRUNC(end_time,''mi''))
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Peak PGA and TEMP usage for historical execs for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Bytes'
DEF tit_01 = 'PGA Usage'
DEF tit_02 = 'TEMP Usage'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT b.snap_id snap_id,
TO_CHAR(b.begin_interval_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(b.end_interval_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(pga_allocated_hour,0) pga_allocated_hour,
NVL(temp_space_allocated_hour,0) temp_space_allocated_hour,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT snap_id,
MAX(pga_allocated) pga_allocated_hour,
MAX(temp_space_allocated) temp_space_allocated_hour
FROM (SELECT cardinality snap_id,
timestamp end_time,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1))) pga_allocated,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1))) temp_space_allocated
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes = 368490531
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
GROUP BY cardinality, timestamp)
GROUP BY snap_id) ash,
(SELECT snap_id, begin_interval_time, end_interval_time
FROM (SELECT snap_id, begin_interval_time, end_interval_time,
ROW_NUMBER() OVER (PARTITION BY snap_id ORDER BY instance_number) rn
FROM dba_hist_snapshot)
WHERE rn = 1) b
WHERE ash.snap_id(+) = b.snap_id
AND b.snap_id BETWEEN 3484 AND 4973
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Peak Read and Write I/O requests for recent execs for PHV 368490531'
DEF main_table = 'V$ACTIVE_SESSION_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Number of I/O requests'
DEF tit_01 = 'Read I/O Request'
DEF tit_02 = 'Write I/O Request'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(read_io_requests_min,0)  read_io_requests_min,
NVL(write_io_requests_min,0)  write_io_requests_min,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT TRUNC(end_time,''mi'') end_time,
TRUNC(MAX(read_io_requests),2) read_io_requests_min,
TRUNC(MAX(write_io_requests),2) write_io_requests_min
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_requests,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_requests
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_MEM''
AND /*cost*/ bytes =  368490531
AND remarks = ''00540ttuxh7n9''
AND partition_id IS NOT NULL
AND ''Y'' = ''Y''
GROUP BY timestamp)
GROUP BY TRUNC(end_time,''mi''))
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Peak Read and Write I/O requests for historical execs for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Number of I/O requests'
DEF tit_01 = 'Read I/O Request'
DEF tit_02 = 'Write I/O Request'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT b.snap_id snap_id,
TO_CHAR(b.begin_interval_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(b.end_interval_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(read_io_requests_hour,0) read_io_requests_hour,
NVL(write_io_requests_hour,0) write_io_requests_hour,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT snap_id,
TRUNC(MAX(read_io_requests),2) read_io_requests_hour,
TRUNC(MAX(write_io_requests),2) write_io_requests_hour
FROM (SELECT cardinality snap_id,
timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_requests,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_requests
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes = 368490531
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
GROUP BY cardinality, timestamp)
GROUP BY snap_id) ash,
(SELECT snap_id, begin_interval_time, end_interval_time
FROM (SELECT snap_id, begin_interval_time, end_interval_time,
ROW_NUMBER() OVER (PARTITION BY snap_id ORDER BY instance_number) rn
FROM dba_hist_snapshot)
WHERE rn = 1) b
WHERE ash.snap_id(+) = b.snap_id
AND b.snap_id BETWEEN 3484 AND 4973
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Peak Read, Write and Interconnect I/O bytes for recent execs for PHV 368490531'
DEF main_table = 'V$ACTIVE_SESSION_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'I/O bytes'
DEF tit_01 = 'Read I/O Bytes'
DEF tit_02 = 'Write I/O Bytes'
DEF tit_03 = 'Interconnect I/O Bytes'
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI'') end_time,
read_io_bytes_min,
write_io_bytes_min,
interconnect_io_bytes_min,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT TRUNC(end_time,''mi'') end_time,
TRUNC(MAX(read_io_bytes),2) read_io_bytes_min,
TRUNC(MAX(write_io_bytes),2) write_io_bytes_min,
TRUNC(MAX(interconnect_io_bytes),2) interconnect_io_bytes_min
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) interconnect_io_bytes
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_MEM''
AND /*cost*/ bytes =  368490531
AND remarks = ''00540ttuxh7n9''
AND partition_id IS NOT NULL
AND ''Y'' = ''Y''
GROUP BY timestamp)
GROUP BY TRUNC(end_time,''mi''))
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Peak Read, Write and Interconnect I/O bytes for historical execs for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'I/O bytes'
DEF tit_01 = 'Read I/O Bytes'
DEF tit_02 = 'Write I/O Bytes'
DEF tit_03 = 'Interconnect I/O Bytes'
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
BEGIN
:sql_text := '
SELECT b.snap_id snap_id,
TO_CHAR(b.begin_interval_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(b.end_interval_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(read_io_bytes_hour,0) read_io_requests_hour,
NVL(write_io_bytes_hour,0) write_io_bytes_hour,
NVL(interconnect_io_bytes_hour,0) interconnect_io_bytes_hour,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT snap_id,
TRUNC(MAX(read_io_bytes),2) read_io_bytes_hour,
TRUNC(MAX(write_io_bytes),2) write_io_bytes_hour,
TRUNC(MAX(interconnect_io_bytes),2) interconnect_io_bytes_hour
FROM (SELECT cardinality snap_id,
timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) interconnect_io_bytes
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes = 368490531
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
GROUP BY cardinality, timestamp)
GROUP BY snap_id) ash,
(SELECT snap_id, begin_interval_time, end_interval_time
FROM (SELECT snap_id, begin_interval_time, end_interval_time,
ROW_NUMBER() OVER (PARTITION BY snap_id ORDER BY instance_number) rn
FROM dba_hist_snapshot)
WHERE rn = 1) b
WHERE ash.snap_id(+) = b.snap_id
AND b.snap_id BETWEEN 3484 AND 4973
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </ol>
PRO <h2>Top N</h2>
SET DEF @
PRO <ol start="@report_sequence.">
SET DEF &
SPO OFF
DEF title='Top Wait events for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT cpu_or_event,
num_samples,
CASE wait_class WHEN ''CPU'' THEN ''34CF27'' WHEN ''Scheduler'' THEN ''9FFA9D'' WHEN ''User I/O'' THEN ''0252D7'' WHEN ''System I/O'' THEN ''1E96DD''  WHEN ''Concurrency'' THEN ''871C12'' WHEN ''Application'' THEN ''C42A05'' WHEN ''Commit'' THEN ''EA6A05'' WHEN ''Configuration'' THEN ''594611''   WHEN ''Administrative'' THEN ''75763E''  WHEN ''Network'' THEN ''989779'' WHEN ''Other'' THEN ''F571A0''  WHEN ''Cluster'' THEN ''CEC3B5'' WHEN ''Queueing'' THEN ''C6BAA5'' END style,
cpu_or_event||'' - ''||num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(num_samples) OVER (),2)||''% of DB Time)'' tooltip
FROM (SELECT object_node cpu_or_event, other_tag wait_class,
count(*) num_samples
FROM plan_table
WHERE /*cost*/ bytes =  368490531
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
AND statement_id LIKE ''SQLD360_ASH_DATA%''
GROUP BY object_node, other_tag
ORDER BY 3 DESC)
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top Objects accessed by PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT data_object,
num_samples,
NULL style,
data_object||'' - ''||num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(num_samples) OVER (),2)||''% of DB Time)'' tooltip
FROM (SELECT data.obj#||
CASE WHEN data.obj# = 0 THEN ''UNDO''
ELSE (SELECT TRIM(''.'' FROM '' ''||o.owner||''.''||o.object_name||''.''||o.subobject_name) FROM dba_objects o WHERE o.object_id = data.obj# AND ROWNUM = 1)
END data_object,
num_samples
FROM (SELECT a.object_instance obj#,
count(*) num_samples
FROM plan_table a
WHERE /*cost*/ a.bytes =  368490531
AND a.remarks = ''00540ttuxh7n9''
AND statement_id LIKE ''SQLD360_ASH_DATA%''
AND ''Y'' = ''Y''
AND a.other_tag IN (''Application'',''Cluster'', ''Concurrency'', ''User I/O'', ''System I/O'')
GROUP BY a.object_instance
ORDER BY 2 DESC) data)
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top Plan Steps for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT operation,
num_samples,
NULL style,
operation||'' - ''||num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(num_samples) OVER (),2)||''% of DB Time)'' tooltip
FROM (SELECT id||'' - ''||operation||'' ''||options operation,
count(*) num_samples
FROM plan_table
WHERE /*cost*/ bytes =  368490531
AND remarks = ''00540ttuxh7n9''
AND statement_id LIKE ''SQLD360_ASH_DATA%''
AND ''Y'' = ''Y''
GROUP BY id||'' - ''||operation||'' ''||options
ORDER BY 2 DESC)
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top Step/Event/Obj for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT step_event,
num_samples,
CASE wait_class WHEN ''CPU'' THEN ''34CF27'' WHEN ''Scheduler'' THEN ''9FFA9D'' WHEN ''User I/O'' THEN ''0252D7'' WHEN ''System I/O'' THEN ''1E96DD''  WHEN ''Concurrency'' THEN ''871C12'' WHEN ''Application'' THEN ''C42A05'' WHEN ''Commit'' THEN ''EA6A05'' WHEN ''Configuration'' THEN ''594611''   WHEN ''Administrative'' THEN ''75763E''  WHEN ''Network'' THEN ''989779'' WHEN ''Other'' THEN ''F571A0''  WHEN ''Cluster'' THEN ''CEC3B5'' WHEN ''Queueing'' THEN ''C6BAA5'' END style,
step_event||'' - ''||num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(num_samples) OVER (),2)||''% of DB Time)'' tooltip
FROM (SELECT data.step||'' ''||CASE WHEN data.obj# = 0 THEN ''UNDO''
ELSE (SELECT TRIM(''.'' FROM '' ''||o.owner||''.''||o.object_name||''.''||o.subobject_name) FROM dba_objects o WHERE o.object_id = data.obj# AND ROWNUM = 1)
END||'' / ''||data.event  step_event,
data.num_samples, data.wait_class
FROM (SELECT id||'' - ''||operation||'' ''||options step, object_instance obj#, object_node event, other_tag wait_class,
count(*) num_samples
FROM plan_table
WHERE /*cost*/ bytes =  368490531
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
AND statement_id LIKE ''SQLD360_ASH_DATA%''
GROUP BY id||'' - ''||operation||'' ''||options, object_instance, object_node, other_tag
ORDER BY 5 DESC) data)
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top 15 Wait events over recent time for PHV 368490531'
DEF main_table = 'GV$ACTIVE_SESSION_HISTORY'
DEF skip_lch=''
DEF chartype = 'AreaChart'
DEF stacked = 'isStacked: true,'
DEF abstract = 'AAS (stacked) per top 15 wait events over time'
DEF vaxis = 'Average Active Sessions - AAS (stacked)'
COL evt_01 NEW_V evt_01
COL evt_02 NEW_V evt_02
COL evt_03 NEW_V evt_03
COL evt_04 NEW_V evt_04
COL evt_05 NEW_V evt_05
COL evt_06 NEW_V evt_06
COL evt_07 NEW_V evt_07
COL evt_08 NEW_V evt_08
COL evt_09 NEW_V evt_09
COL evt_10 NEW_V evt_10
COL evt_11 NEW_V evt_11
COL evt_12 NEW_V evt_12
COL evt_13 NEW_V evt_13
COL evt_14 NEW_V evt_14
COL evt_15 NEW_V evt_15
COL tit_01 NEW_V tit_01
COL tit_02 NEW_V tit_02
COL tit_03 NEW_V tit_03
COL tit_04 NEW_V tit_04
COL tit_05 NEW_V tit_05
COL tit_06 NEW_V tit_06
COL tit_07 NEW_V tit_07
COL tit_08 NEW_V tit_08
COL tit_09 NEW_V tit_09
COL tit_10 NEW_V tit_10
COL tit_11 NEW_V tit_11
COL tit_12 NEW_V tit_12
COL tit_13 NEW_V tit_13
COL tit_14 NEW_V tit_14
COL tit_15 NEW_V tit_15
COL series_01 NEW_V series_01
COL series_02 NEW_V series_02
COL series_03 NEW_V series_03
COL series_04 NEW_V series_04
COL series_05 NEW_V series_05
COL series_06 NEW_V series_06
COL series_07 NEW_V series_07
COL series_08 NEW_V series_08
COL series_09 NEW_V series_09
COL series_10 NEW_V series_10
COL series_11 NEW_V series_11
COL series_12 NEW_V series_12
COL series_13 NEW_V series_13
COL series_14 NEW_V series_14
COL series_15 NEW_V series_15
SELECT MAX(CASE WHEN ranking = 1  THEN cpu_or_event ELSE '' END) evt_01,
MAX(CASE WHEN ranking = 2  THEN cpu_or_event ELSE '' END) evt_02,
MAX(CASE WHEN ranking = 3  THEN cpu_or_event ELSE '' END) evt_03,
MAX(CASE WHEN ranking = 4  THEN cpu_or_event ELSE '' END) evt_04,
MAX(CASE WHEN ranking = 5  THEN cpu_or_event ELSE '' END) evt_05,
MAX(CASE WHEN ranking = 6  THEN cpu_or_event ELSE '' END) evt_06,
MAX(CASE WHEN ranking = 7  THEN cpu_or_event ELSE '' END) evt_07,
MAX(CASE WHEN ranking = 8  THEN cpu_or_event ELSE '' END) evt_08,
MAX(CASE WHEN ranking = 9  THEN cpu_or_event ELSE '' END) evt_09,
MAX(CASE WHEN ranking = 10 THEN cpu_or_event ELSE '' END) evt_10,
MAX(CASE WHEN ranking = 11 THEN cpu_or_event ELSE '' END) evt_11,
MAX(CASE WHEN ranking = 12 THEN cpu_or_event ELSE '' END) evt_12,
MAX(CASE WHEN ranking = 13 THEN cpu_or_event ELSE '' END) evt_13,
MAX(CASE WHEN ranking = 14 THEN cpu_or_event ELSE '' END) evt_14,
MAX(CASE WHEN ranking = 15 THEN cpu_or_event ELSE '' END) evt_15,
MAX(CASE WHEN ranking = 1  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_01,
MAX(CASE WHEN ranking = 2  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_02,
MAX(CASE WHEN ranking = 3  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_03,
MAX(CASE WHEN ranking = 4  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_04,
MAX(CASE WHEN ranking = 5  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_05,
MAX(CASE WHEN ranking = 6  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_06,
MAX(CASE WHEN ranking = 7  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_07,
MAX(CASE WHEN ranking = 8  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_08,
MAX(CASE WHEN ranking = 9  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_09,
MAX(CASE WHEN ranking = 10 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_10,
MAX(CASE WHEN ranking = 11 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_11,
MAX(CASE WHEN ranking = 12 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_12,
MAX(CASE WHEN ranking = 13 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_13,
MAX(CASE WHEN ranking = 14 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_14,
MAX(CASE WHEN ranking = 15 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_15
FROM (SELECT 1 fake, object_node cpu_or_event, other_tag wait_class,
ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) ranking
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_MEM'
AND /*cost*/ bytes = 368490531
AND remarks = '00540ttuxh7n9'
GROUP BY object_node, other_tag) ash,
(SELECT 1 fake FROM dual) b
WHERE ash.fake(+) = b.fake
AND ranking <= 15
/
SET DEF @
SELECT SUBSTR('@evt_01.',1,27) tit_01,
SUBSTR('@evt_02.',1,27) tit_02,
SUBSTR('@evt_03.',1,27) tit_03,
SUBSTR('@evt_04.',1,27) tit_04,
SUBSTR('@evt_05.',1,27) tit_05,
SUBSTR('@evt_06.',1,27) tit_06,
SUBSTR('@evt_07.',1,27) tit_07,
SUBSTR('@evt_08.',1,27) tit_08,
SUBSTR('@evt_09.',1,27) tit_09,
SUBSTR('@evt_10.',1,27) tit_10,
SUBSTR('@evt_11.',1,27) tit_11,
SUBSTR('@evt_12.',1,27) tit_12,
SUBSTR('@evt_13.',1,27) tit_13,
SUBSTR('@evt_14.',1,27) tit_14,
SUBSTR('@evt_15.',1,27) tit_15
FROM DUAL
/
COL e01 NOPRI
COL e02 NOPRI
COL e03 NOPRI
COL e04 NOPRI
COL e05 NOPRI
COL e06 NOPRI
COL e07 NOPRI
COL e08 NOPRI
COL e09 NOPRI
COL e10 NOPRI
COL e11 NOPRI
COL e12 NOPRI
COL e13 NOPRI
COL e14 NOPRI
COL e15 NOPRI
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(aas_01,0) "e01@tit_01." ,
NVL(aas_02,0) "e02@tit_02." ,
NVL(aas_03,0) "e03@tit_03." ,
NVL(aas_04,0) "e04@tit_04." ,
NVL(aas_05,0) "e05@tit_05." ,
NVL(aas_06,0) "e06@tit_06." ,
NVL(aas_07,0) "e07@tit_07." ,
NVL(aas_08,0) "e08@tit_08." ,
NVL(aas_09,0) "e09@tit_09." ,
NVL(aas_10,0) "e10@tit_10." ,
NVL(aas_11,0) "e11@tit_11." ,
NVL(aas_12,0) "e12@tit_12." ,
NVL(aas_13,0) "e13@tit_13." ,
NVL(aas_14,0) "e14@tit_14." ,
NVL(aas_15,0) "e15@tit_15."
FROM (SELECT sample_time,
MAX(CASE WHEN cpu_or_event  = ''@evt_01.'' THEN aas ELSE NULL END) aas_01,
MAX(CASE WHEN cpu_or_event  = ''@evt_02.'' THEN aas ELSE NULL END) aas_02,
MAX(CASE WHEN cpu_or_event  = ''@evt_03.'' THEN aas ELSE NULL END) aas_03,
MAX(CASE WHEN cpu_or_event  = ''@evt_04.'' THEN aas ELSE NULL END) aas_04,
MAX(CASE WHEN cpu_or_event  = ''@evt_05.'' THEN aas ELSE NULL END) aas_05,
MAX(CASE WHEN cpu_or_event  = ''@evt_06.'' THEN aas ELSE NULL END) aas_06,
MAX(CASE WHEN cpu_or_event  = ''@evt_07.'' THEN aas ELSE NULL END) aas_07,
MAX(CASE WHEN cpu_or_event  = ''@evt_08.'' THEN aas ELSE NULL END) aas_08,
MAX(CASE WHEN cpu_or_event  = ''@evt_09.'' THEN aas ELSE NULL END) aas_09,
MAX(CASE WHEN cpu_or_event  = ''@evt_10.'' THEN aas ELSE NULL END) aas_10,
MAX(CASE WHEN cpu_or_event  = ''@evt_11.'' THEN aas ELSE NULL END) aas_11,
MAX(CASE WHEN cpu_or_event  = ''@evt_12.'' THEN aas ELSE NULL END) aas_12,
MAX(CASE WHEN cpu_or_event  = ''@evt_13.'' THEN aas ELSE NULL END) aas_13,
MAX(CASE WHEN cpu_or_event  = ''@evt_14.'' THEN aas ELSE NULL END) aas_14,
MAX(CASE WHEN cpu_or_event  = ''@evt_15.'' THEN aas ELSE NULL END) aas_15
FROM (SELECT TRUNC(sample_time, ''mi'') sample_time,
cpu_or_event,
ROUND(SUM(num_sess)/60,3) aas
FROM (SELECT timestamp sample_time,
object_node cpu_or_event,
count(*) num_sess
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_MEM''
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
AND /*cost*/ bytes = 368490531
AND object_node IN (''@evt_01.'',''@evt_02.'',''@evt_03.'',''@evt_04.'',''@evt_05.'',''@evt_06.'',
''@evt_07.'',''@evt_08.'',''@evt_09.'',''@evt_10.'',''@evt_11.'',''@evt_12.'',
''@evt_13.'',''@evt_14.'',''@evt_15.'')
GROUP BY timestamp, object_node)
GROUP BY TRUNC(sample_time, ''mi''), cpu_or_event)
GROUP BY sample_time)
ORDER BY 3
';
END;
/
SET DEF &
@sql/sqld360_9a_pre_one.sql
COL evt01_ PRI
COL evt02_ PRI
COL evt03_ PRI
COL evt04_ PRI
COL evt05_ PRI
COL evt06_ PRI
COL evt07_ PRI
COL evt08_ PRI
COL evt09_ PRI
COL evt10_ PRI
COL evt11_ PRI
COL evt12_ PRI
COL evt13_ PRI
COL evt14_ PRI
COL evt15_ PRI
UNDEF evt_01
UNDEF evt_02
UNDEF evt_03
UNDEF evt_04
UNDEF evt_05
UNDEF evt_06
UNDEF evt_07
UNDEF evt_08
UNDEF evt_09
UNDEF evt_10
UNDEF evt_11
UNDEF evt_12
UNDEF evt_13
UNDEF evt_14
UNDEF evt_15
DEF series_01 = ''
DEF series_02 = ''
DEF series_03 = ''
DEF series_04 = ''
DEF series_05 = ''
DEF series_06 = ''
DEF series_07 = ''
DEF series_08 = ''
DEF series_09 = ''
DEF series_10 = ''
DEF series_11 = ''
DEF series_12 = ''
DEF series_13 = ''
DEF series_14 = ''
DEF series_15 = ''
----------------------------
DEF title='Top 15 Wait events over historical time for PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'AreaChart'
DEF stacked = 'isStacked: true,'
DEF abstract = 'AAS (stacked) per top 15 wait events over time'
DEF vaxis = 'Average Active Sessions - AAS (stacked)'
COL evt_01 NEW_V evt_01
COL evt_02 NEW_V evt_02
COL evt_03 NEW_V evt_03
COL evt_04 NEW_V evt_04
COL evt_05 NEW_V evt_05
COL evt_06 NEW_V evt_06
COL evt_07 NEW_V evt_07
COL evt_08 NEW_V evt_08
COL evt_09 NEW_V evt_09
COL evt_10 NEW_V evt_10
COL evt_11 NEW_V evt_11
COL evt_12 NEW_V evt_12
COL evt_13 NEW_V evt_13
COL evt_14 NEW_V evt_14
COL evt_15 NEW_V evt_15
COL tit_01 NEW_V tit_01
COL tit_02 NEW_V tit_02
COL tit_03 NEW_V tit_03
COL tit_04 NEW_V tit_04
COL tit_05 NEW_V tit_05
COL tit_06 NEW_V tit_06
COL tit_07 NEW_V tit_07
COL tit_08 NEW_V tit_08
COL tit_09 NEW_V tit_09
COL tit_10 NEW_V tit_10
COL tit_11 NEW_V tit_11
COL tit_12 NEW_V tit_12
COL tit_13 NEW_V tit_13
COL tit_14 NEW_V tit_14
COL tit_15 NEW_V tit_15
COL series_01 NEW_V series_01
COL series_02 NEW_V series_02
COL series_03 NEW_V series_03
COL series_04 NEW_V series_04
COL series_05 NEW_V series_05
COL series_06 NEW_V series_06
COL series_07 NEW_V series_07
COL series_08 NEW_V series_08
COL series_09 NEW_V series_09
COL series_10 NEW_V series_10
COL series_11 NEW_V series_11
COL series_12 NEW_V series_12
COL series_13 NEW_V series_13
COL series_14 NEW_V series_14
COL series_15 NEW_V series_15
SELECT MAX(CASE WHEN ranking = 1  THEN cpu_or_event ELSE '' END) evt_01,
MAX(CASE WHEN ranking = 2  THEN cpu_or_event ELSE '' END) evt_02,
MAX(CASE WHEN ranking = 3  THEN cpu_or_event ELSE '' END) evt_03,
MAX(CASE WHEN ranking = 4  THEN cpu_or_event ELSE '' END) evt_04,
MAX(CASE WHEN ranking = 5  THEN cpu_or_event ELSE '' END) evt_05,
MAX(CASE WHEN ranking = 6  THEN cpu_or_event ELSE '' END) evt_06,
MAX(CASE WHEN ranking = 7  THEN cpu_or_event ELSE '' END) evt_07,
MAX(CASE WHEN ranking = 8  THEN cpu_or_event ELSE '' END) evt_08,
MAX(CASE WHEN ranking = 9  THEN cpu_or_event ELSE '' END) evt_09,
MAX(CASE WHEN ranking = 10 THEN cpu_or_event ELSE '' END) evt_10,
MAX(CASE WHEN ranking = 11 THEN cpu_or_event ELSE '' END) evt_11,
MAX(CASE WHEN ranking = 12 THEN cpu_or_event ELSE '' END) evt_12,
MAX(CASE WHEN ranking = 13 THEN cpu_or_event ELSE '' END) evt_13,
MAX(CASE WHEN ranking = 14 THEN cpu_or_event ELSE '' END) evt_14,
MAX(CASE WHEN ranking = 15 THEN cpu_or_event ELSE '' END) evt_15,
MAX(CASE WHEN ranking = 1  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_01,
MAX(CASE WHEN ranking = 2  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_02,
MAX(CASE WHEN ranking = 3  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_03,
MAX(CASE WHEN ranking = 4  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_04,
MAX(CASE WHEN ranking = 5  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_05,
MAX(CASE WHEN ranking = 6  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_06,
MAX(CASE WHEN ranking = 7  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_07,
MAX(CASE WHEN ranking = 8  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_08,
MAX(CASE WHEN ranking = 9  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_09,
MAX(CASE WHEN ranking = 10 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_10,
MAX(CASE WHEN ranking = 11 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_11,
MAX(CASE WHEN ranking = 12 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_12,
MAX(CASE WHEN ranking = 13 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_13,
MAX(CASE WHEN ranking = 14 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_14,
MAX(CASE WHEN ranking = 15 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_15
FROM (SELECT 1 fake, object_node cpu_or_event, other_tag wait_class,
ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) ranking
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes = 368490531
AND remarks = '00540ttuxh7n9'
GROUP BY object_node, other_tag) ash,
(SELECT 1 fake FROM dual) b
WHERE ash.fake(+) = b.fake
AND ranking <= 15
/
SET DEF @
SELECT SUBSTR('@evt_01.',1,27) tit_01,
SUBSTR('@evt_02.',1,27) tit_02,
SUBSTR('@evt_03.',1,27) tit_03,
SUBSTR('@evt_04.',1,27) tit_04,
SUBSTR('@evt_05.',1,27) tit_05,
SUBSTR('@evt_06.',1,27) tit_06,
SUBSTR('@evt_07.',1,27) tit_07,
SUBSTR('@evt_08.',1,27) tit_08,
SUBSTR('@evt_09.',1,27) tit_09,
SUBSTR('@evt_10.',1,27) tit_10,
SUBSTR('@evt_11.',1,27) tit_11,
SUBSTR('@evt_12.',1,27) tit_12,
SUBSTR('@evt_13.',1,27) tit_13,
SUBSTR('@evt_14.',1,27) tit_14,
SUBSTR('@evt_15.',1,27) tit_15
FROM DUAL
/
COL e01 NOPRI
COL e02 NOPRI
COL e03 NOPRI
COL e04 NOPRI
COL e05 NOPRI
COL e06 NOPRI
COL e07 NOPRI
COL e08 NOPRI
COL e09 NOPRI
COL e10 NOPRI
COL e11 NOPRI
COL e12 NOPRI
COL e13 NOPRI
COL e14 NOPRI
COL e15 NOPRI
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI'') begin_time,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI'') end_time,
NVL(aas_01,0) "e01@tit_01." ,
NVL(aas_02,0) "e02@tit_02." ,
NVL(aas_03,0) "e03@tit_03." ,
NVL(aas_04,0) "e04@tit_04." ,
NVL(aas_05,0) "e05@tit_05." ,
NVL(aas_06,0) "e06@tit_06." ,
NVL(aas_07,0) "e07@tit_07." ,
NVL(aas_08,0) "e08@tit_08." ,
NVL(aas_09,0) "e09@tit_09." ,
NVL(aas_10,0) "e10@tit_10." ,
NVL(aas_11,0) "e11@tit_11." ,
NVL(aas_12,0) "e12@tit_12." ,
NVL(aas_13,0) "e13@tit_13." ,
NVL(aas_14,0) "e14@tit_14." ,
NVL(aas_15,0) "e15@tit_15."
FROM (SELECT sample_time,
MAX(CASE WHEN cpu_or_event  = ''@evt_01.'' THEN aas ELSE NULL END) aas_01,
MAX(CASE WHEN cpu_or_event  = ''@evt_02.'' THEN aas ELSE NULL END) aas_02,
MAX(CASE WHEN cpu_or_event  = ''@evt_03.'' THEN aas ELSE NULL END) aas_03,
MAX(CASE WHEN cpu_or_event  = ''@evt_04.'' THEN aas ELSE NULL END) aas_04,
MAX(CASE WHEN cpu_or_event  = ''@evt_05.'' THEN aas ELSE NULL END) aas_05,
MAX(CASE WHEN cpu_or_event  = ''@evt_06.'' THEN aas ELSE NULL END) aas_06,
MAX(CASE WHEN cpu_or_event  = ''@evt_07.'' THEN aas ELSE NULL END) aas_07,
MAX(CASE WHEN cpu_or_event  = ''@evt_08.'' THEN aas ELSE NULL END) aas_08,
MAX(CASE WHEN cpu_or_event  = ''@evt_09.'' THEN aas ELSE NULL END) aas_09,
MAX(CASE WHEN cpu_or_event  = ''@evt_10.'' THEN aas ELSE NULL END) aas_10,
MAX(CASE WHEN cpu_or_event  = ''@evt_11.'' THEN aas ELSE NULL END) aas_11,
MAX(CASE WHEN cpu_or_event  = ''@evt_12.'' THEN aas ELSE NULL END) aas_12,
MAX(CASE WHEN cpu_or_event  = ''@evt_13.'' THEN aas ELSE NULL END) aas_13,
MAX(CASE WHEN cpu_or_event  = ''@evt_14.'' THEN aas ELSE NULL END) aas_14,
MAX(CASE WHEN cpu_or_event  = ''@evt_15.'' THEN aas ELSE NULL END) aas_15
FROM (SELECT TRUNC(sample_time, ''hh24'') sample_time,
cpu_or_event,
ROUND(SUM(num_sess)*                  10/3600,3) aas
FROM (SELECT timestamp sample_time,
object_node cpu_or_event,
count(*) num_sess
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
AND /*cost*/ bytes = 368490531
AND object_node IN (''@evt_01.'',''@evt_02.'',''@evt_03.'',''@evt_04.'',''@evt_05.'',''@evt_06.'',
''@evt_07.'',''@evt_08.'',''@evt_09.'',''@evt_10.'',''@evt_11.'',''@evt_12.'',
''@evt_13.'',''@evt_14.'',''@evt_15.'')
GROUP BY timestamp, object_node)
GROUP BY TRUNC(sample_time, ''hh24''), cpu_or_event)
GROUP BY sample_time)
ORDER BY 3
';
END;
/
SET DEF &
@sql/sqld360_9a_pre_one.sql
COL evt01_ PRI
COL evt02_ PRI
COL evt03_ PRI
COL evt04_ PRI
COL evt05_ PRI
COL evt06_ PRI
COL evt07_ PRI
COL evt08_ PRI
COL evt09_ PRI
COL evt10_ PRI
COL evt11_ PRI
COL evt12_ PRI
COL evt13_ PRI
COL evt14_ PRI
COL evt15_ PRI
SET TERM ON
UNDEF evt_01
UNDEF evt_02
UNDEF evt_03
UNDEF evt_04
UNDEF evt_05
UNDEF evt_06
UNDEF evt_07
UNDEF evt_08
UNDEF evt_09
UNDEF evt_10
UNDEF evt_11
UNDEF evt_12
UNDEF evt_13
UNDEF evt_14
UNDEF evt_15
DEF series_01 = ''
DEF series_02 = ''
DEF series_03 = ''
DEF series_04 = ''
DEF series_05 = ''
DEF series_06 = ''
DEF series_07 = ''
DEF series_08 = ''
DEF series_09 = ''
DEF series_10 = ''
DEF series_11 = ''
DEF series_12 = ''
DEF series_13 = ''
DEF series_14 = ''
DEF series_15 = ''
----------------------------
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </ol>
PRO <h2>Top Executions from memory</h2>
SET DEF @
PRO <ol start="@report_sequence.">
SET DEF &
SPO OFF
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </ol>
PRO <h2>Top Executions from history</h2>
SET DEF @
PRO <ol start="@report_sequence.">
SET DEF &
SPO OFF
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO SQL_EXEC_ID 16777216 from inst:1 sess:2341 serial#:64349 between 2020-10-15/22:45:19 and 2020-10-15/22:45:29
SPO OFF
----------------------------
COL treeColor NEW_V treeColor
DELETE plan_table WHERE statement_id = 'SQLD360_TREECOLOR' AND operation = '00540ttuxh7n9';
INSERT ALL
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', expanded_node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', collapsed_node_color)
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes =368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE('20201015224519', 'YYYYMMDDHH24MISS') AND TO_DATE('20201015224529', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE('20201015224528', 'YYYYMMDDHH24MISS')) = TO_DATE('20201015224528', 'YYYYMMDDHH24MISS')
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = '00540ttuxh7n9'
AND 'Y' = 'Y')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),'/row/@op') stepid, EXTRACTVALUE(VALUE(b),'/row/@skp') skp, EXTRACTVALUE(VALUE(b),'/row/@dep') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),'/*/display_map/row'))) b
WHERE sql_id = '00540ttuxh7n9'
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT adapt_id id,
'data.setRowProperty('||adapt_id||', ''style'',          ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' node_color,
'data.setRowProperty('||adapt_id||', ''expandedStyle'',  ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' expanded_node_color,
'data.setRowProperty('||adapt_id||', ''collapsedStyle'', ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*sum_perc_impact/100),'XXXX')),2,'0')||CASE WHEN sum_perc_impact = 0 THEN 'FF' ELSE '00' END||''');' collapsed_node_color
FROM plan_with_rec_impact
ORDER BY adapt_id;
DEF title='Plan Tree with subtree for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_SQL_PLAN'
DEF skip_html='Y'
DEF skip_text='Y'
DEF skip_csv='Y'
DEF skip_tch=''
BEGIN
:sql_text := '
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id LIKE ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = ''00540ttuxh7n9''
AND ''Y'' = ''Y'')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),''/row/@op'') stepid, EXTRACTVALUE(VALUE(b),''/row/@skp'') skp, EXTRACTVALUE(VALUE(b),''/row/@dep'') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),''/*/display_map/row''))) b
WHERE sql_id = ''00540ttuxh7n9''
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT ''{v: ''''''||adapt_id||'''''',f: ''''''||adapt_id||'' - ''||operation||'' ''||options||NVL2(object_name,''<br>'','' '')||object_name||''''''}'' id,
parent_id,
SUBSTR(''Step ID: ''||adapt_id||'' (ASH Step ID: ''||id||'')\nASH Samples: ''||num_samples||'' (''||perc_impact||''%)''||
''\nSubstree Impact ''||sum_perc_impact||''%''||
NVL2(access_predicates,''\n\nAccess Predicates: ''||access_predicates,'''')||NVL2(filter_predicates,''\n\nFilter Predicates: ''||filter_predicates,''''),1,4000) message,
adapt_id id3
FROM plan_with_rec_impact
ORDER BY id3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Plan Step IDs timeline for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_uch=''
DEF abstract = 'Top SQL Plan Steps'
DEF vaxis = 'SQL Plan Step ID'
DEF foot = 'Data is not aggregated, extracted directly from V$ASH, Y-axis report plan steps, size of the bubble is number of samples, color is major contributor (>50%) for bubble'
COL bubblesDetails NEW_V bubblesDetails
SELECT '<br>Step Details<br>'||LISTAGG(step_details,'<br>') WITHIN GROUP (ORDER BY id) bubblesDetails
FROM (SELECT DISTINCT NVL(id,0) id, NVL(id,0)||' - '||operation||' '||options||' (obj#:'||object_instance||')' step_details
FROM plan_table a
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 64349
AND a.timestamp BETWEEN TO_DATE('20201015224519', 'YYYYMMDDHH24MISS') AND TO_DATE('20201015224529', 'YYYYMMDDHH24MISS')
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE('20201015224528', 'YYYYMMDDHH24MISS')) = TO_DATE('20201015224528', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
);
BEGIN
:sql_text := '
SELECT TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
null,
plan_line_id,
CASE WHEN rtr_category > .5 THEN category ELSE ''Multiple'' END,
num_samples
FROM (SELECT end_time, plan_line_id, category, num_samples, rtr_category, ROW_NUMBER() OVER (PARTITION BY end_time, plan_line_id ORDER BY rtr_category DESC) rn_category
FROM (SELECT end_time, plan_line_id, category, SUM(num_samples) OVER (PARTITION BY end_time, plan_line_id) num_samples, RATIO_TO_REPORT(num_samples) OVER (PARTITION BY end_time, plan_line_id) rtr_category
FROM (SELECT timestamp end_time, NVL(id,0) plan_line_id,
CASE WHEN other_tag = ''CPU'' THEN ''CPU'' WHEN other_tag LIKE ''%I/O'' THEN ''I/O'' WHEN other_tag = ''Concurrency'' THEN ''Concurrency'' WHEN other_tag = ''Cluster'' THEN ''Cluster'' ELSE ''Other'' END category,
COUNT(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp, NVL(id,0), CASE WHEN other_tag = ''CPU'' THEN ''CPU'' WHEN other_tag LIKE ''%I/O'' THEN ''I/O'' WHEN other_tag = ''Concurrency'' THEN ''Concurrency'' WHEN other_tag = ''Cluster'' THEN ''Cluster'' ELSE ''Other'' END)
)
)
WHERE rn_category = 1
ORDER BY end_time
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top Step/Event/Obj for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT step_event,
num_samples,
CASE wait_class WHEN ''CPU'' THEN ''34CF27'' WHEN ''Scheduler'' THEN ''9FFA9D'' WHEN ''User I/O'' THEN ''0252D7'' WHEN ''System I/O'' THEN ''1E96DD''  WHEN ''Concurrency'' THEN ''871C12'' WHEN ''Application'' THEN ''C42A05'' WHEN ''Commit'' THEN ''EA6A05'' WHEN ''Configuration'' THEN ''594611''   WHEN ''Administrative'' THEN ''75763E''  WHEN ''Network'' THEN ''989779'' WHEN ''Other'' THEN ''F571A0''  WHEN ''Cluster'' THEN ''CEC3B5'' WHEN ''Queueing'' THEN ''C6BAA5'' END style,
step_event||'' - ''||num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(num_samples) OVER (),2)||''% of DB Time)'' tooltip
FROM (SELECT data.step||'' ''||CASE WHEN data.obj# = 0 THEN ''UNDO''
ELSE (SELECT TRIM(''.'' FROM '' ''||o.owner||''.''||o.object_name||''.''||o.subobject_name) FROM dba_objects o WHERE o.object_id = data.obj# AND ROWNUM = 1)
END||'' / ''||data.event  step_event,
data.num_samples, data.wait_class
FROM (SELECT id||'' - ''||operation||'' ''||options step, object_instance obj#, object_node event, other_tag wait_class,
count(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) =  64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY id||'' - ''||operation||'' ''||options, object_instance, object_node, other_tag
ORDER BY 5 DESC) data)
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top 15 Wait events timeline SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'AreaChart'
DEF stacked = 'isStacked: true,'
DEF abstract = 'AS (stacked) per top 15 wait events'
DEF vaxis = 'Active Sessions - AS (stacked)'
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH, Y-axis report Active Sessions at any time, not Average Active Sessions'
COL evt_01 NEW_V evt_01
COL evt_02 NEW_V evt_02
COL evt_03 NEW_V evt_03
COL evt_04 NEW_V evt_04
COL evt_05 NEW_V evt_05
COL evt_06 NEW_V evt_06
COL evt_07 NEW_V evt_07
COL evt_08 NEW_V evt_08
COL evt_09 NEW_V evt_09
COL evt_10 NEW_V evt_10
COL evt_11 NEW_V evt_11
COL evt_12 NEW_V evt_12
COL evt_13 NEW_V evt_13
COL evt_14 NEW_V evt_14
COL evt_15 NEW_V evt_15
COL tit_01 NEW_V tit_01
COL tit_02 NEW_V tit_02
COL tit_03 NEW_V tit_03
COL tit_04 NEW_V tit_04
COL tit_05 NEW_V tit_05
COL tit_06 NEW_V tit_06
COL tit_07 NEW_V tit_07
COL tit_08 NEW_V tit_08
COL tit_09 NEW_V tit_09
COL tit_10 NEW_V tit_10
COL tit_11 NEW_V tit_11
COL tit_12 NEW_V tit_12
COL tit_13 NEW_V tit_13
COL tit_14 NEW_V tit_14
COL tit_15 NEW_V tit_15
COL series_01 NEW_V series_01
COL series_02 NEW_V series_02
COL series_03 NEW_V series_03
COL series_04 NEW_V series_04
COL series_05 NEW_V series_05
COL series_06 NEW_V series_06
COL series_07 NEW_V series_07
COL series_08 NEW_V series_08
COL series_09 NEW_V series_09
COL series_10 NEW_V series_10
COL series_11 NEW_V series_11
COL series_12 NEW_V series_12
COL series_13 NEW_V series_13
COL series_14 NEW_V series_14
COL series_15 NEW_V series_15
SELECT MAX(CASE WHEN ranking = 1  THEN cpu_or_event ELSE '' END) evt_01,
MAX(CASE WHEN ranking = 2  THEN cpu_or_event ELSE '' END) evt_02,
MAX(CASE WHEN ranking = 3  THEN cpu_or_event ELSE '' END) evt_03,
MAX(CASE WHEN ranking = 4  THEN cpu_or_event ELSE '' END) evt_04,
MAX(CASE WHEN ranking = 5  THEN cpu_or_event ELSE '' END) evt_05,
MAX(CASE WHEN ranking = 6  THEN cpu_or_event ELSE '' END) evt_06,
MAX(CASE WHEN ranking = 7  THEN cpu_or_event ELSE '' END) evt_07,
MAX(CASE WHEN ranking = 8  THEN cpu_or_event ELSE '' END) evt_08,
MAX(CASE WHEN ranking = 9  THEN cpu_or_event ELSE '' END) evt_09,
MAX(CASE WHEN ranking = 10 THEN cpu_or_event ELSE '' END) evt_10,
MAX(CASE WHEN ranking = 11 THEN cpu_or_event ELSE '' END) evt_11,
MAX(CASE WHEN ranking = 12 THEN cpu_or_event ELSE '' END) evt_12,
MAX(CASE WHEN ranking = 13 THEN cpu_or_event ELSE '' END) evt_13,
MAX(CASE WHEN ranking = 14 THEN cpu_or_event ELSE '' END) evt_14,
MAX(CASE WHEN ranking = 15 THEN cpu_or_event ELSE '' END) evt_15,
MAX(CASE WHEN ranking = 1  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_01,
MAX(CASE WHEN ranking = 2  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_02,
MAX(CASE WHEN ranking = 3  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_03,
MAX(CASE WHEN ranking = 4  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_04,
MAX(CASE WHEN ranking = 5  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_05,
MAX(CASE WHEN ranking = 6  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_06,
MAX(CASE WHEN ranking = 7  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_07,
MAX(CASE WHEN ranking = 8  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_08,
MAX(CASE WHEN ranking = 9  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_09,
MAX(CASE WHEN ranking = 10 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_10,
MAX(CASE WHEN ranking = 11 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_11,
MAX(CASE WHEN ranking = 12 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_12,
MAX(CASE WHEN ranking = 13 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_13,
MAX(CASE WHEN ranking = 14 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_14,
MAX(CASE WHEN ranking = 15 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_15
FROM (SELECT 1 fake, object_node cpu_or_event, other_tag wait_class,
ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) ranking
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE('20201015224519', 'YYYYMMDDHH24MISS') AND TO_DATE('20201015224529', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE('20201015224528', 'YYYYMMDDHH24MISS')) = TO_DATE('20201015224528', 'YYYYMMDDHH24MISS')
GROUP BY object_node, other_tag) ash,
(SELECT 1 fake FROM dual) b
WHERE ash.fake(+) = b.fake
AND ranking <= 15
/
SET DEF @
SELECT SUBSTR('@evt_01.',1,27) tit_01,
SUBSTR('@evt_02.',1,27) tit_02,
SUBSTR('@evt_03.',1,27) tit_03,
SUBSTR('@evt_04.',1,27) tit_04,
SUBSTR('@evt_05.',1,27) tit_05,
SUBSTR('@evt_06.',1,27) tit_06,
SUBSTR('@evt_07.',1,27) tit_07,
SUBSTR('@evt_08.',1,27) tit_08,
SUBSTR('@evt_09.',1,27) tit_09,
SUBSTR('@evt_10.',1,27) tit_10,
SUBSTR('@evt_11.',1,27) tit_11,
SUBSTR('@evt_12.',1,27) tit_12,
SUBSTR('@evt_13.',1,27) tit_13,
SUBSTR('@evt_14.',1,27) tit_14,
SUBSTR('@evt_15.',1,27) tit_15
FROM DUAL
/
COL e01 NOPRI
COL e02 NOPRI
COL e03 NOPRI
COL e04 NOPRI
COL e05 NOPRI
COL e06 NOPRI
COL e07 NOPRI
COL e08 NOPRI
COL e09 NOPRI
COL e10 NOPRI
COL e11 NOPRI
COL e12 NOPRI
COL e13 NOPRI
COL e14 NOPRI
COL e15 NOPRI
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
NVL(num_sess_01,0) "e01@tit_01." ,
NVL(num_sess_02,0) "e02@tit_02." ,
NVL(num_sess_03,0) "e03@tit_03." ,
NVL(num_sess_04,0) "e04@tit_04." ,
NVL(num_sess_05,0) "e05@tit_05." ,
NVL(num_sess_06,0) "e06@tit_06." ,
NVL(num_sess_07,0) "e07@tit_07." ,
NVL(num_sess_08,0) "e08@tit_08." ,
NVL(num_sess_09,0) "e09@tit_09." ,
NVL(num_sess_10,0) "e10@tit_10." ,
NVL(num_sess_11,0) "e11@tit_11." ,
NVL(num_sess_12,0) "e12@tit_12." ,
NVL(num_sess_13,0) "e13@tit_13." ,
NVL(num_sess_14,0) "e14@tit_14." ,
NVL(num_sess_15,0) "e15@tit_15."
FROM (SELECT sample_time,
MAX(CASE WHEN cpu_or_event  = ''@evt_01.'' THEN num_sess ELSE NULL END) num_sess_01,
MAX(CASE WHEN cpu_or_event  = ''@evt_02.'' THEN num_sess ELSE NULL END) num_sess_02,
MAX(CASE WHEN cpu_or_event  = ''@evt_03.'' THEN num_sess ELSE NULL END) num_sess_03,
MAX(CASE WHEN cpu_or_event  = ''@evt_04.'' THEN num_sess ELSE NULL END) num_sess_04,
MAX(CASE WHEN cpu_or_event  = ''@evt_05.'' THEN num_sess ELSE NULL END) num_sess_05,
MAX(CASE WHEN cpu_or_event  = ''@evt_06.'' THEN num_sess ELSE NULL END) num_sess_06,
MAX(CASE WHEN cpu_or_event  = ''@evt_07.'' THEN num_sess ELSE NULL END) num_sess_07,
MAX(CASE WHEN cpu_or_event  = ''@evt_08.'' THEN num_sess ELSE NULL END) num_sess_08,
MAX(CASE WHEN cpu_or_event  = ''@evt_09.'' THEN num_sess ELSE NULL END) num_sess_09,
MAX(CASE WHEN cpu_or_event  = ''@evt_10.'' THEN num_sess ELSE NULL END) num_sess_10,
MAX(CASE WHEN cpu_or_event  = ''@evt_11.'' THEN num_sess ELSE NULL END) num_sess_11,
MAX(CASE WHEN cpu_or_event  = ''@evt_12.'' THEN num_sess ELSE NULL END) num_sess_12,
MAX(CASE WHEN cpu_or_event  = ''@evt_13.'' THEN num_sess ELSE NULL END) num_sess_13,
MAX(CASE WHEN cpu_or_event  = ''@evt_14.'' THEN num_sess ELSE NULL END) num_sess_14,
MAX(CASE WHEN cpu_or_event  = ''@evt_15.'' THEN num_sess ELSE NULL END) num_sess_15
FROM (SELECT timestamp sample_time,
object_node cpu_or_event,
count(*) num_sess
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND object_node IN (''@evt_01.'',''@evt_02.'',''@evt_03.'',''@evt_04.'',''@evt_05.'',''@evt_06.'',
''@evt_07.'',''@evt_08.'',''@evt_09.'',''@evt_10.'',''@evt_11.'',''@evt_12.'',
''@evt_13.'',''@evt_14.'',''@evt_15.'')
GROUP BY timestamp, object_node)
GROUP BY sample_time)
ORDER BY 3
';
END;
/
SET DEF &
@sql/sqld360_9a_pre_one.sql
COL evt01_ PRI
COL evt02_ PRI
COL evt03_ PRI
COL evt04_ PRI
COL evt05_ PRI
COL evt06_ PRI
COL evt07_ PRI
COL evt08_ PRI
COL evt09_ PRI
COL evt10_ PRI
COL evt11_ PRI
COL evt12_ PRI
COL evt13_ PRI
COL evt14_ PRI
COL evt15_ PRI
UNDEF evt_01
UNDEF evt_02
UNDEF evt_03
UNDEF evt_04
UNDEF evt_05
UNDEF evt_06
UNDEF evt_07
UNDEF evt_08
UNDEF evt_09
UNDEF evt_10
UNDEF evt_11
UNDEF evt_12
UNDEF evt_13
UNDEF evt_14
UNDEF evt_15
DEF series_01 = ''
DEF series_02 = ''
DEF series_03 = ''
DEF series_04 = ''
DEF series_05 = ''
DEF series_06 = ''
DEF series_07 = ''
DEF series_08 = ''
DEF series_09 = ''
DEF series_10 = ''
DEF series_11 = ''
DEF series_12 = ''
DEF series_13 = ''
DEF series_14 = ''
DEF series_15 = ''
----------------------------
DEF title='DB Time by PX process for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT data.qcpx_process,
data.num_samples,
NULL style,
data.qcpx_process||'' - ''||data.num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(data.num_samples) OVER (),2)||''%)'' tooltip
FROM (SELECT NVL2(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)), ''PX Proc - '', ''QC - '')||position||''.''||cpu_cost||''.''||io_cost  qcpx_process,
count(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY NVL2(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)), ''PX Proc - '', ''QC - '')||position||''.''||cpu_cost||''.''||io_cost
ORDER BY 2 DESC) data
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='PGA and TEMP usage for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Bytes'
DEF tit_01 = 'PGA Usage'
DEF tit_02 = 'TEMP Usage'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
pga_allocated,
temp_space_allocated,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1))) pga_allocated,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1))) temp_space_allocated
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Read and Write I/O requests for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Number of I/O requests'
DEF tit_01 = 'Read I/O Request'
DEF tit_02 = 'Write I/O Request'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
read_io_requests,
write_io_requests,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_requests,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_requests
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Read, Write and Interconnect I/O bytes for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'I/O bytes'
DEF tit_01 = 'Read I/O Bytes'
DEF tit_02 = 'Write I/O Bytes'
DEF tit_03 = 'Interconnect I/O Bytes'
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
read_io_bytes,
write_io_bytes,
interconnect_io_bytes,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) interconnect_io_bytes
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title = 'Raw Data for SQL_EXEC_ID 16777216 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
statement_id     source,
search_columns   dbid,
cardinality      snap_id,
position         instance_number,
parent_id        sample_id,
TO_CHAR(timestamp, ''YYYY-MM-DD/HH24:MI:SS'')        sample_time,
partition_id     sql_exec_id,
TO_CHAR(TO_DATE(distribution,''YYYYMMDDHH24MISS''), ''YYYY-MM-DD/HH24:MI:SS'')  sql_exec_start,
cpu_cost         session_id,
io_cost          session_serial#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,13)+1))            user_id,
remarks          sql_id,
cost             plan_hash_value,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,19)+1)) sql_full_plan_hash_value,
id               sql_plan_line_id,
operation        sql_plan_operation,
options          sql_plan_options,
object_node      cpu_or_event,
other_tag        wait_class,
TO_NUMBER(SUBSTR(partition_start,1,INSTR(partition_start,'','',1,1)-1)) seq#,
SUBSTR(partition_start,INSTR(partition_start,'','',1,1)+1,INSTR(partition_start,'','',1,2)-INSTR(partition_start,'','',1,1)-1) p1text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,2)+1,INSTR(partition_start,'','',1,3)-INSTR(partition_start,'','',1,2)-1)) p1,
SUBSTR(partition_start,INSTR(partition_start,'','',1,3)+1,INSTR(partition_start,'','',1,4)-INSTR(partition_start,'','',1,3)-1) p2text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,4)+1,INSTR(partition_start,'','',1,5)-INSTR(partition_start,'','',1,4)-1)) p2,
SUBSTR(partition_start,INSTR(partition_start,'','',1,5)+1,INSTR(partition_start,'','',1,6)-INSTR(partition_start,'','',1,5)-1) p3text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,6)+1,INSTR(partition_start,'','',1,7)-INSTR(partition_start,'','',1,6)-1)) p3,
object_instance  current_obj#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,7)+1,INSTR(partition_start,'','',1,8)-INSTR(partition_start,'','',1,7)-1)) current_file#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,8)+1,INSTR(partition_start,'','',1,9)-INSTR(partition_start,'','',1,8)-1)) current_block#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,9)+1,INSTR(partition_start,'','',1,10)-INSTR(partition_start,'','',1,9)-1)) current_row#,
SUBSTR(partition_stop,1,INSTR(partition_stop,'','',1,1)-1) in_parse,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,1)+1,INSTR(partition_stop,'','',1,2)-INSTR(partition_stop,'','',1,1)-1) in_hard_parse,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,2)+1,INSTR(partition_stop,'','',1,3)-INSTR(partition_stop,'','',1,2)-1) in_sql_execution,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)) qc_instance_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)) qc_session_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)) qc_session_serial#,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,6)+1,INSTR(partition_stop,'','',1,7)-INSTR(partition_stop,'','',1,6)-1) blocking_session_status,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,7)+1,INSTR(partition_stop,'','',1,8)-INSTR(partition_stop,'','',1,7)-1)) blocking_session,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,8)+1,INSTR(partition_stop,'','',1,9)-INSTR(partition_stop,'','',1,8)-1)) blocking_session_serial#,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,9)+1,INSTR(partition_stop,'','',1,10)-INSTR(partition_stop,'','',1,9)-1)) blocking_inst_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,10)+1,INSTR(partition_stop,'','',1,11)-INSTR(partition_stop,'','',1,10)-1)) px_flags,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1)) pga_allocated,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1)) temp_space_allocated,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,10)+1,INSTR(partition_start,'','',1,11)-INSTR(partition_start,'','',1,10)-1)) tm_delta_time,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,11)+1,INSTR(partition_start,'','',1,12)-INSTR(partition_start,'','',1,11)-1)) tm_delta_cpu_time,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,12)+1,INSTR(partition_start,'','',1,13)-INSTR(partition_start,'','',1,12)-1)) tm_delta_db_time,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1)) delta_time,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)) delta_read_io_requests,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)) delta_write_io_requests,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)) delta_read_io_bytes,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)) delta_write_io_bytes,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)) delta_interconnect_io_bytes
FROM plan_table
WHERE remarks = ''00540ttuxh7n9''
AND statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 1
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 2341
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 64349
AND timestamp BETWEEN TO_DATE(''20201015224519'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201015224529'', ''YYYYMMDDHH24MISS'')
AND NVL(partition_id, 16777216) = 16777216
AND NVL(distribution, TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201015224528'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
ORDER BY sample_time,instance_number
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO <br>
SPO OFF
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO SQL_EXEC_ID 33554432 from inst:2 sess:1963 serial#:57946 between 2020-10-28/22:47:02 and 2020-10-28/22:47:12
SPO OFF
----------------------------
COL treeColor NEW_V treeColor
DELETE plan_table WHERE statement_id = 'SQLD360_TREECOLOR' AND operation = '00540ttuxh7n9';
INSERT ALL
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', expanded_node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', collapsed_node_color)
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes =368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE('20201028224702', 'YYYYMMDDHH24MISS') AND TO_DATE('20201028224712', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE('20201028224706', 'YYYYMMDDHH24MISS')) = TO_DATE('20201028224706', 'YYYYMMDDHH24MISS')
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = '00540ttuxh7n9'
AND 'Y' = 'Y')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),'/row/@op') stepid, EXTRACTVALUE(VALUE(b),'/row/@skp') skp, EXTRACTVALUE(VALUE(b),'/row/@dep') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),'/*/display_map/row'))) b
WHERE sql_id = '00540ttuxh7n9'
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT adapt_id id,
'data.setRowProperty('||adapt_id||', ''style'',          ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' node_color,
'data.setRowProperty('||adapt_id||', ''expandedStyle'',  ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' expanded_node_color,
'data.setRowProperty('||adapt_id||', ''collapsedStyle'', ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*sum_perc_impact/100),'XXXX')),2,'0')||CASE WHEN sum_perc_impact = 0 THEN 'FF' ELSE '00' END||''');' collapsed_node_color
FROM plan_with_rec_impact
ORDER BY adapt_id;
DEF title='Plan Tree with subtree for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_SQL_PLAN'
DEF skip_html='Y'
DEF skip_text='Y'
DEF skip_csv='Y'
DEF skip_tch=''
BEGIN
:sql_text := '
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id LIKE ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = ''00540ttuxh7n9''
AND ''Y'' = ''Y'')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),''/row/@op'') stepid, EXTRACTVALUE(VALUE(b),''/row/@skp'') skp, EXTRACTVALUE(VALUE(b),''/row/@dep'') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),''/*/display_map/row''))) b
WHERE sql_id = ''00540ttuxh7n9''
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT ''{v: ''''''||adapt_id||'''''',f: ''''''||adapt_id||'' - ''||operation||'' ''||options||NVL2(object_name,''<br>'','' '')||object_name||''''''}'' id,
parent_id,
SUBSTR(''Step ID: ''||adapt_id||'' (ASH Step ID: ''||id||'')\nASH Samples: ''||num_samples||'' (''||perc_impact||''%)''||
''\nSubstree Impact ''||sum_perc_impact||''%''||
NVL2(access_predicates,''\n\nAccess Predicates: ''||access_predicates,'''')||NVL2(filter_predicates,''\n\nFilter Predicates: ''||filter_predicates,''''),1,4000) message,
adapt_id id3
FROM plan_with_rec_impact
ORDER BY id3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Plan Step IDs timeline for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_uch=''
DEF abstract = 'Top SQL Plan Steps'
DEF vaxis = 'SQL Plan Step ID'
DEF foot = 'Data is not aggregated, extracted directly from V$ASH, Y-axis report plan steps, size of the bubble is number of samples, color is major contributor (>50%) for bubble'
COL bubblesDetails NEW_V bubblesDetails
SELECT '<br>Step Details<br>'||LISTAGG(step_details,'<br>') WITHIN GROUP (ORDER BY id) bubblesDetails
FROM (SELECT DISTINCT NVL(id,0) id, NVL(id,0)||' - '||operation||' '||options||' (obj#:'||object_instance||')' step_details
FROM plan_table a
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 57946
AND a.timestamp BETWEEN TO_DATE('20201028224702', 'YYYYMMDDHH24MISS') AND TO_DATE('20201028224712', 'YYYYMMDDHH24MISS')
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE('20201028224706', 'YYYYMMDDHH24MISS')) = TO_DATE('20201028224706', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
);
BEGIN
:sql_text := '
SELECT TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
null,
plan_line_id,
CASE WHEN rtr_category > .5 THEN category ELSE ''Multiple'' END,
num_samples
FROM (SELECT end_time, plan_line_id, category, num_samples, rtr_category, ROW_NUMBER() OVER (PARTITION BY end_time, plan_line_id ORDER BY rtr_category DESC) rn_category
FROM (SELECT end_time, plan_line_id, category, SUM(num_samples) OVER (PARTITION BY end_time, plan_line_id) num_samples, RATIO_TO_REPORT(num_samples) OVER (PARTITION BY end_time, plan_line_id) rtr_category
FROM (SELECT timestamp end_time, NVL(id,0) plan_line_id,
CASE WHEN other_tag = ''CPU'' THEN ''CPU'' WHEN other_tag LIKE ''%I/O'' THEN ''I/O'' WHEN other_tag = ''Concurrency'' THEN ''Concurrency'' WHEN other_tag = ''Cluster'' THEN ''Cluster'' ELSE ''Other'' END category,
COUNT(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp, NVL(id,0), CASE WHEN other_tag = ''CPU'' THEN ''CPU'' WHEN other_tag LIKE ''%I/O'' THEN ''I/O'' WHEN other_tag = ''Concurrency'' THEN ''Concurrency'' WHEN other_tag = ''Cluster'' THEN ''Cluster'' ELSE ''Other'' END)
)
)
WHERE rn_category = 1
ORDER BY end_time
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top Step/Event/Obj for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT step_event,
num_samples,
CASE wait_class WHEN ''CPU'' THEN ''34CF27'' WHEN ''Scheduler'' THEN ''9FFA9D'' WHEN ''User I/O'' THEN ''0252D7'' WHEN ''System I/O'' THEN ''1E96DD''  WHEN ''Concurrency'' THEN ''871C12'' WHEN ''Application'' THEN ''C42A05'' WHEN ''Commit'' THEN ''EA6A05'' WHEN ''Configuration'' THEN ''594611''   WHEN ''Administrative'' THEN ''75763E''  WHEN ''Network'' THEN ''989779'' WHEN ''Other'' THEN ''F571A0''  WHEN ''Cluster'' THEN ''CEC3B5'' WHEN ''Queueing'' THEN ''C6BAA5'' END style,
step_event||'' - ''||num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(num_samples) OVER (),2)||''% of DB Time)'' tooltip
FROM (SELECT data.step||'' ''||CASE WHEN data.obj# = 0 THEN ''UNDO''
ELSE (SELECT TRIM(''.'' FROM '' ''||o.owner||''.''||o.object_name||''.''||o.subobject_name) FROM dba_objects o WHERE o.object_id = data.obj# AND ROWNUM = 1)
END||'' / ''||data.event  step_event,
data.num_samples, data.wait_class
FROM (SELECT id||'' - ''||operation||'' ''||options step, object_instance obj#, object_node event, other_tag wait_class,
count(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) =  57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY id||'' - ''||operation||'' ''||options, object_instance, object_node, other_tag
ORDER BY 5 DESC) data)
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top 15 Wait events timeline SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'AreaChart'
DEF stacked = 'isStacked: true,'
DEF abstract = 'AS (stacked) per top 15 wait events'
DEF vaxis = 'Active Sessions - AS (stacked)'
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH, Y-axis report Active Sessions at any time, not Average Active Sessions'
COL evt_01 NEW_V evt_01
COL evt_02 NEW_V evt_02
COL evt_03 NEW_V evt_03
COL evt_04 NEW_V evt_04
COL evt_05 NEW_V evt_05
COL evt_06 NEW_V evt_06
COL evt_07 NEW_V evt_07
COL evt_08 NEW_V evt_08
COL evt_09 NEW_V evt_09
COL evt_10 NEW_V evt_10
COL evt_11 NEW_V evt_11
COL evt_12 NEW_V evt_12
COL evt_13 NEW_V evt_13
COL evt_14 NEW_V evt_14
COL evt_15 NEW_V evt_15
COL tit_01 NEW_V tit_01
COL tit_02 NEW_V tit_02
COL tit_03 NEW_V tit_03
COL tit_04 NEW_V tit_04
COL tit_05 NEW_V tit_05
COL tit_06 NEW_V tit_06
COL tit_07 NEW_V tit_07
COL tit_08 NEW_V tit_08
COL tit_09 NEW_V tit_09
COL tit_10 NEW_V tit_10
COL tit_11 NEW_V tit_11
COL tit_12 NEW_V tit_12
COL tit_13 NEW_V tit_13
COL tit_14 NEW_V tit_14
COL tit_15 NEW_V tit_15
COL series_01 NEW_V series_01
COL series_02 NEW_V series_02
COL series_03 NEW_V series_03
COL series_04 NEW_V series_04
COL series_05 NEW_V series_05
COL series_06 NEW_V series_06
COL series_07 NEW_V series_07
COL series_08 NEW_V series_08
COL series_09 NEW_V series_09
COL series_10 NEW_V series_10
COL series_11 NEW_V series_11
COL series_12 NEW_V series_12
COL series_13 NEW_V series_13
COL series_14 NEW_V series_14
COL series_15 NEW_V series_15
SELECT MAX(CASE WHEN ranking = 1  THEN cpu_or_event ELSE '' END) evt_01,
MAX(CASE WHEN ranking = 2  THEN cpu_or_event ELSE '' END) evt_02,
MAX(CASE WHEN ranking = 3  THEN cpu_or_event ELSE '' END) evt_03,
MAX(CASE WHEN ranking = 4  THEN cpu_or_event ELSE '' END) evt_04,
MAX(CASE WHEN ranking = 5  THEN cpu_or_event ELSE '' END) evt_05,
MAX(CASE WHEN ranking = 6  THEN cpu_or_event ELSE '' END) evt_06,
MAX(CASE WHEN ranking = 7  THEN cpu_or_event ELSE '' END) evt_07,
MAX(CASE WHEN ranking = 8  THEN cpu_or_event ELSE '' END) evt_08,
MAX(CASE WHEN ranking = 9  THEN cpu_or_event ELSE '' END) evt_09,
MAX(CASE WHEN ranking = 10 THEN cpu_or_event ELSE '' END) evt_10,
MAX(CASE WHEN ranking = 11 THEN cpu_or_event ELSE '' END) evt_11,
MAX(CASE WHEN ranking = 12 THEN cpu_or_event ELSE '' END) evt_12,
MAX(CASE WHEN ranking = 13 THEN cpu_or_event ELSE '' END) evt_13,
MAX(CASE WHEN ranking = 14 THEN cpu_or_event ELSE '' END) evt_14,
MAX(CASE WHEN ranking = 15 THEN cpu_or_event ELSE '' END) evt_15,
MAX(CASE WHEN ranking = 1  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_01,
MAX(CASE WHEN ranking = 2  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_02,
MAX(CASE WHEN ranking = 3  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_03,
MAX(CASE WHEN ranking = 4  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_04,
MAX(CASE WHEN ranking = 5  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_05,
MAX(CASE WHEN ranking = 6  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_06,
MAX(CASE WHEN ranking = 7  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_07,
MAX(CASE WHEN ranking = 8  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_08,
MAX(CASE WHEN ranking = 9  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_09,
MAX(CASE WHEN ranking = 10 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_10,
MAX(CASE WHEN ranking = 11 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_11,
MAX(CASE WHEN ranking = 12 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_12,
MAX(CASE WHEN ranking = 13 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_13,
MAX(CASE WHEN ranking = 14 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_14,
MAX(CASE WHEN ranking = 15 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_15
FROM (SELECT 1 fake, object_node cpu_or_event, other_tag wait_class,
ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) ranking
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE('20201028224702', 'YYYYMMDDHH24MISS') AND TO_DATE('20201028224712', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE('20201028224706', 'YYYYMMDDHH24MISS')) = TO_DATE('20201028224706', 'YYYYMMDDHH24MISS')
GROUP BY object_node, other_tag) ash,
(SELECT 1 fake FROM dual) b
WHERE ash.fake(+) = b.fake
AND ranking <= 15
/
SET DEF @
SELECT SUBSTR('@evt_01.',1,27) tit_01,
SUBSTR('@evt_02.',1,27) tit_02,
SUBSTR('@evt_03.',1,27) tit_03,
SUBSTR('@evt_04.',1,27) tit_04,
SUBSTR('@evt_05.',1,27) tit_05,
SUBSTR('@evt_06.',1,27) tit_06,
SUBSTR('@evt_07.',1,27) tit_07,
SUBSTR('@evt_08.',1,27) tit_08,
SUBSTR('@evt_09.',1,27) tit_09,
SUBSTR('@evt_10.',1,27) tit_10,
SUBSTR('@evt_11.',1,27) tit_11,
SUBSTR('@evt_12.',1,27) tit_12,
SUBSTR('@evt_13.',1,27) tit_13,
SUBSTR('@evt_14.',1,27) tit_14,
SUBSTR('@evt_15.',1,27) tit_15
FROM DUAL
/
COL e01 NOPRI
COL e02 NOPRI
COL e03 NOPRI
COL e04 NOPRI
COL e05 NOPRI
COL e06 NOPRI
COL e07 NOPRI
COL e08 NOPRI
COL e09 NOPRI
COL e10 NOPRI
COL e11 NOPRI
COL e12 NOPRI
COL e13 NOPRI
COL e14 NOPRI
COL e15 NOPRI
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
NVL(num_sess_01,0) "e01@tit_01." ,
NVL(num_sess_02,0) "e02@tit_02." ,
NVL(num_sess_03,0) "e03@tit_03." ,
NVL(num_sess_04,0) "e04@tit_04." ,
NVL(num_sess_05,0) "e05@tit_05." ,
NVL(num_sess_06,0) "e06@tit_06." ,
NVL(num_sess_07,0) "e07@tit_07." ,
NVL(num_sess_08,0) "e08@tit_08." ,
NVL(num_sess_09,0) "e09@tit_09." ,
NVL(num_sess_10,0) "e10@tit_10." ,
NVL(num_sess_11,0) "e11@tit_11." ,
NVL(num_sess_12,0) "e12@tit_12." ,
NVL(num_sess_13,0) "e13@tit_13." ,
NVL(num_sess_14,0) "e14@tit_14." ,
NVL(num_sess_15,0) "e15@tit_15."
FROM (SELECT sample_time,
MAX(CASE WHEN cpu_or_event  = ''@evt_01.'' THEN num_sess ELSE NULL END) num_sess_01,
MAX(CASE WHEN cpu_or_event  = ''@evt_02.'' THEN num_sess ELSE NULL END) num_sess_02,
MAX(CASE WHEN cpu_or_event  = ''@evt_03.'' THEN num_sess ELSE NULL END) num_sess_03,
MAX(CASE WHEN cpu_or_event  = ''@evt_04.'' THEN num_sess ELSE NULL END) num_sess_04,
MAX(CASE WHEN cpu_or_event  = ''@evt_05.'' THEN num_sess ELSE NULL END) num_sess_05,
MAX(CASE WHEN cpu_or_event  = ''@evt_06.'' THEN num_sess ELSE NULL END) num_sess_06,
MAX(CASE WHEN cpu_or_event  = ''@evt_07.'' THEN num_sess ELSE NULL END) num_sess_07,
MAX(CASE WHEN cpu_or_event  = ''@evt_08.'' THEN num_sess ELSE NULL END) num_sess_08,
MAX(CASE WHEN cpu_or_event  = ''@evt_09.'' THEN num_sess ELSE NULL END) num_sess_09,
MAX(CASE WHEN cpu_or_event  = ''@evt_10.'' THEN num_sess ELSE NULL END) num_sess_10,
MAX(CASE WHEN cpu_or_event  = ''@evt_11.'' THEN num_sess ELSE NULL END) num_sess_11,
MAX(CASE WHEN cpu_or_event  = ''@evt_12.'' THEN num_sess ELSE NULL END) num_sess_12,
MAX(CASE WHEN cpu_or_event  = ''@evt_13.'' THEN num_sess ELSE NULL END) num_sess_13,
MAX(CASE WHEN cpu_or_event  = ''@evt_14.'' THEN num_sess ELSE NULL END) num_sess_14,
MAX(CASE WHEN cpu_or_event  = ''@evt_15.'' THEN num_sess ELSE NULL END) num_sess_15
FROM (SELECT timestamp sample_time,
object_node cpu_or_event,
count(*) num_sess
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND object_node IN (''@evt_01.'',''@evt_02.'',''@evt_03.'',''@evt_04.'',''@evt_05.'',''@evt_06.'',
''@evt_07.'',''@evt_08.'',''@evt_09.'',''@evt_10.'',''@evt_11.'',''@evt_12.'',
''@evt_13.'',''@evt_14.'',''@evt_15.'')
GROUP BY timestamp, object_node)
GROUP BY sample_time)
ORDER BY 3
';
END;
/
SET DEF &
@sql/sqld360_9a_pre_one.sql
COL evt01_ PRI
COL evt02_ PRI
COL evt03_ PRI
COL evt04_ PRI
COL evt05_ PRI
COL evt06_ PRI
COL evt07_ PRI
COL evt08_ PRI
COL evt09_ PRI
COL evt10_ PRI
COL evt11_ PRI
COL evt12_ PRI
COL evt13_ PRI
COL evt14_ PRI
COL evt15_ PRI
UNDEF evt_01
UNDEF evt_02
UNDEF evt_03
UNDEF evt_04
UNDEF evt_05
UNDEF evt_06
UNDEF evt_07
UNDEF evt_08
UNDEF evt_09
UNDEF evt_10
UNDEF evt_11
UNDEF evt_12
UNDEF evt_13
UNDEF evt_14
UNDEF evt_15
DEF series_01 = ''
DEF series_02 = ''
DEF series_03 = ''
DEF series_04 = ''
DEF series_05 = ''
DEF series_06 = ''
DEF series_07 = ''
DEF series_08 = ''
DEF series_09 = ''
DEF series_10 = ''
DEF series_11 = ''
DEF series_12 = ''
DEF series_13 = ''
DEF series_14 = ''
DEF series_15 = ''
----------------------------
DEF title='DB Time by PX process for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT data.qcpx_process,
data.num_samples,
NULL style,
data.qcpx_process||'' - ''||data.num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(data.num_samples) OVER (),2)||''%)'' tooltip
FROM (SELECT NVL2(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)), ''PX Proc - '', ''QC - '')||position||''.''||cpu_cost||''.''||io_cost  qcpx_process,
count(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY NVL2(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)), ''PX Proc - '', ''QC - '')||position||''.''||cpu_cost||''.''||io_cost
ORDER BY 2 DESC) data
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='PGA and TEMP usage for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Bytes'
DEF tit_01 = 'PGA Usage'
DEF tit_02 = 'TEMP Usage'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
pga_allocated,
temp_space_allocated,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1))) pga_allocated,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1))) temp_space_allocated
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Read and Write I/O requests for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Number of I/O requests'
DEF tit_01 = 'Read I/O Request'
DEF tit_02 = 'Write I/O Request'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
read_io_requests,
write_io_requests,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_requests,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_requests
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Read, Write and Interconnect I/O bytes for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'I/O bytes'
DEF tit_01 = 'Read I/O Bytes'
DEF tit_02 = 'Write I/O Bytes'
DEF tit_03 = 'Interconnect I/O Bytes'
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
read_io_bytes,
write_io_bytes,
interconnect_io_bytes,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) interconnect_io_bytes
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title = 'Raw Data for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
statement_id     source,
search_columns   dbid,
cardinality      snap_id,
position         instance_number,
parent_id        sample_id,
TO_CHAR(timestamp, ''YYYY-MM-DD/HH24:MI:SS'')        sample_time,
partition_id     sql_exec_id,
TO_CHAR(TO_DATE(distribution,''YYYYMMDDHH24MISS''), ''YYYY-MM-DD/HH24:MI:SS'')  sql_exec_start,
cpu_cost         session_id,
io_cost          session_serial#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,13)+1))            user_id,
remarks          sql_id,
cost             plan_hash_value,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,19)+1)) sql_full_plan_hash_value,
id               sql_plan_line_id,
operation        sql_plan_operation,
options          sql_plan_options,
object_node      cpu_or_event,
other_tag        wait_class,
TO_NUMBER(SUBSTR(partition_start,1,INSTR(partition_start,'','',1,1)-1)) seq#,
SUBSTR(partition_start,INSTR(partition_start,'','',1,1)+1,INSTR(partition_start,'','',1,2)-INSTR(partition_start,'','',1,1)-1) p1text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,2)+1,INSTR(partition_start,'','',1,3)-INSTR(partition_start,'','',1,2)-1)) p1,
SUBSTR(partition_start,INSTR(partition_start,'','',1,3)+1,INSTR(partition_start,'','',1,4)-INSTR(partition_start,'','',1,3)-1) p2text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,4)+1,INSTR(partition_start,'','',1,5)-INSTR(partition_start,'','',1,4)-1)) p2,
SUBSTR(partition_start,INSTR(partition_start,'','',1,5)+1,INSTR(partition_start,'','',1,6)-INSTR(partition_start,'','',1,5)-1) p3text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,6)+1,INSTR(partition_start,'','',1,7)-INSTR(partition_start,'','',1,6)-1)) p3,
object_instance  current_obj#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,7)+1,INSTR(partition_start,'','',1,8)-INSTR(partition_start,'','',1,7)-1)) current_file#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,8)+1,INSTR(partition_start,'','',1,9)-INSTR(partition_start,'','',1,8)-1)) current_block#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,9)+1,INSTR(partition_start,'','',1,10)-INSTR(partition_start,'','',1,9)-1)) current_row#,
SUBSTR(partition_stop,1,INSTR(partition_stop,'','',1,1)-1) in_parse,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,1)+1,INSTR(partition_stop,'','',1,2)-INSTR(partition_stop,'','',1,1)-1) in_hard_parse,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,2)+1,INSTR(partition_stop,'','',1,3)-INSTR(partition_stop,'','',1,2)-1) in_sql_execution,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)) qc_instance_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)) qc_session_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)) qc_session_serial#,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,6)+1,INSTR(partition_stop,'','',1,7)-INSTR(partition_stop,'','',1,6)-1) blocking_session_status,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,7)+1,INSTR(partition_stop,'','',1,8)-INSTR(partition_stop,'','',1,7)-1)) blocking_session,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,8)+1,INSTR(partition_stop,'','',1,9)-INSTR(partition_stop,'','',1,8)-1)) blocking_session_serial#,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,9)+1,INSTR(partition_stop,'','',1,10)-INSTR(partition_stop,'','',1,9)-1)) blocking_inst_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,10)+1,INSTR(partition_stop,'','',1,11)-INSTR(partition_stop,'','',1,10)-1)) px_flags,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1)) pga_allocated,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1)) temp_space_allocated,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,10)+1,INSTR(partition_start,'','',1,11)-INSTR(partition_start,'','',1,10)-1)) tm_delta_time,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,11)+1,INSTR(partition_start,'','',1,12)-INSTR(partition_start,'','',1,11)-1)) tm_delta_cpu_time,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,12)+1,INSTR(partition_start,'','',1,13)-INSTR(partition_start,'','',1,12)-1)) tm_delta_db_time,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1)) delta_time,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)) delta_read_io_requests,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)) delta_write_io_requests,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)) delta_read_io_bytes,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)) delta_write_io_bytes,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)) delta_interconnect_io_bytes
FROM plan_table
WHERE remarks = ''00540ttuxh7n9''
AND statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 1963
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 57946
AND timestamp BETWEEN TO_DATE(''20201028224702'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201028224712'', ''YYYYMMDDHH24MISS'')
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201028224706'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
ORDER BY sample_time,instance_number
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO <br>
SPO OFF
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO SQL_EXEC_ID 33554432 from inst:2 sess:3116 serial#:46483 between 2020-10-18/22:44:55 and 2020-10-18/22:45:05
SPO OFF
----------------------------
COL treeColor NEW_V treeColor
DELETE plan_table WHERE statement_id = 'SQLD360_TREECOLOR' AND operation = '00540ttuxh7n9';
INSERT ALL
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', expanded_node_color)
WHEN 1 = 1 THEN INTO plan_table (statement_id, OPERATION, OPTIONS) VALUES ('SQLD360_TREECOLOR', '00540ttuxh7n9', collapsed_node_color)
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes =368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE('20201018224455', 'YYYYMMDDHH24MISS') AND TO_DATE('20201018224505', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE('20201018224503', 'YYYYMMDDHH24MISS')) = TO_DATE('20201018224503', 'YYYYMMDDHH24MISS')
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = '00540ttuxh7n9'
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = '00540ttuxh7n9'
AND 'Y' = 'Y')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),'/row/@op') stepid, EXTRACTVALUE(VALUE(b),'/row/@skp') skp, EXTRACTVALUE(VALUE(b),'/row/@dep') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),'/*/display_map/row'))) b
WHERE sql_id = '00540ttuxh7n9'
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT adapt_id id,
'data.setRowProperty('||adapt_id||', ''style'',          ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' node_color,
'data.setRowProperty('||adapt_id||', ''expandedStyle'',  ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*perc_impact    /100),'XXXX')),2,'0')||CASE WHEN perc_impact = 0 THEN 'FF' ELSE '00' END||''');' expanded_node_color,
'data.setRowProperty('||adapt_id||', ''collapsedStyle'', ''background:#FF'||LPAD(LTRIM(TO_CHAR(255-(255*sum_perc_impact/100),'XXXX')),2,'0')||CASE WHEN sum_perc_impact = 0 THEN 'FF' ELSE '00' END||''');' collapsed_node_color
FROM plan_with_rec_impact
ORDER BY adapt_id;
DEF title='Plan Tree with subtree for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_SQL_PLAN'
DEF skip_html='Y'
DEF skip_text='Y'
DEF skip_csv='Y'
DEF skip_tch=''
BEGIN
:sql_text := '
WITH ashdata AS (-- count the number of samples in ASH for each step
-- goal is to compute RATIO_TO_REPORT
SELECT NVL(id,0) id,
COUNT(*) num_samples,
ROUND(100*NVL(RATIO_TO_REPORT(COUNT(*)) OVER (),0),2) perc_impact
FROM plan_table
WHERE statement_id LIKE ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
GROUP BY NVL(id,0)),
orig_plan AS (-- extract the plan steps "as is", just replace to single quote in the filter predicates
-- precedence is given to plan from memory since it has filters
-- using RANK since there could be more than one entry but with different predicate ordering
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name, access_predicates, filter_predicates, other_xml
FROM (SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(SUBSTR(access_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) access_predicates,
REPLACE(SUBSTR(filter_predicates,1,1500), CHR(39) , CHR(92)||CHR(39)) filter_predicates,
other_xml,
RANK() OVER (ORDER BY inst_id, child_number) rnk
FROM gv$sql_plan_statistics_all
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531)
WHERE rnk = 1
UNION ALL
SELECT sql_id, plan_hash_value, id, parent_id, operation, options, object_name,
REPLACE(access_predicates, CHR(39), CHR(92)||CHR(39)) access_predicates,
REPLACE(filter_predicates, CHR(39), CHR(92)||CHR(39)) filter_predicates,
other_xml
FROM dba_hist_sql_plan
WHERE sql_id = ''00540ttuxh7n9''
AND plan_hash_value =368490531
AND NOT EXISTS (SELECT 1
FROM gv$sql_plan_statistics_all
WHERE plan_hash_value =368490531
AND sql_id = ''00540ttuxh7n9''
AND ''Y'' = ''Y'')),
skip_steps AS (-- extract the display_map for the plan, to identify why steps are "skipped" because of adaptive
SELECT sql_id, plan_hash_value, EXTRACTVALUE(VALUE(b),''/row/@op'') stepid, EXTRACTVALUE(VALUE(b),''/row/@skp'') skp, EXTRACTVALUE(VALUE(b),''/row/@dep'') dep
FROM orig_plan a,
TABLE(XMLSEQUENCE(EXTRACT(XMLTYPE(a.other_xml),''/*/display_map/row''))) b
WHERE sql_id = ''00540ttuxh7n9''
AND other_xml IS NOT NULL),
adapt_plan_no_parent AS (-- generate adaptive_id (aka step_id) once the adaptive steps are excluded
SELECT a.sql_id, a.plan_hash_value, a.id, a.parent_id, b.dep,
(ROW_NUMBER() OVER (ORDER BY a.id))-1 adapt_id, a.operation, a.options, a.object_name, a.access_predicates, a.filter_predicates, b.skp
FROM orig_plan a,
skip_steps b
WHERE a.id = b.stepid(+)
AND (b.skp = 0 OR b.skp IS NULL)),
full_adaptive_plan AS (-- generate the parent adaptive step id
SELECT id, adapt_id, NVL(adapt_parent_id, parent_id) parent_id, operation, options, object_name, access_predicates, filter_predicates
FROM (SELECT dep, adapt_id, id, (SELECT MAX(adapt_id) FROM adapt_plan_no_parent b WHERE a.dep-1 = NVL(b.dep,0) AND b.adapt_id < a.adapt_id ) adapt_parent_id,
parent_id, a.operation operation, a.options, a.object_name, a.access_predicates, a.filter_predicates
FROM adapt_plan_no_parent a)),
plan_with_ash AS (SELECT full_adaptive_plan.*, NVL(ashdata.num_samples,0) num_samples, NVL(ashdata.perc_impact,0) perc_impact
FROM full_adaptive_plan,
ashdata
WHERE ashdata.id(+) = full_adaptive_plan.id),
plan_with_rec_impact AS (-- compute recursive impact (substree impact)
SELECT a.*, (SELECT sum(b.perc_impact)
FROM plan_with_ash b
START WITH b.adapt_id = a.adapt_id
CONNECT BY prior b.adapt_id = b.parent_id) sum_perc_impact
FROM plan_with_ash a)
SELECT ''{v: ''''''||adapt_id||'''''',f: ''''''||adapt_id||'' - ''||operation||'' ''||options||NVL2(object_name,''<br>'','' '')||object_name||''''''}'' id,
parent_id,
SUBSTR(''Step ID: ''||adapt_id||'' (ASH Step ID: ''||id||'')\nASH Samples: ''||num_samples||'' (''||perc_impact||''%)''||
''\nSubstree Impact ''||sum_perc_impact||''%''||
NVL2(access_predicates,''\n\nAccess Predicates: ''||access_predicates,'''')||NVL2(filter_predicates,''\n\nFilter Predicates: ''||filter_predicates,''''),1,4000) message,
adapt_id id3
FROM plan_with_rec_impact
ORDER BY id3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Plan Step IDs timeline for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_uch=''
DEF abstract = 'Top SQL Plan Steps'
DEF vaxis = 'SQL Plan Step ID'
DEF foot = 'Data is not aggregated, extracted directly from V$ASH, Y-axis report plan steps, size of the bubble is number of samples, color is major contributor (>50%) for bubble'
COL bubblesDetails NEW_V bubblesDetails
SELECT '<br>Step Details<br>'||LISTAGG(step_details,'<br>') WITHIN GROUP (ORDER BY id) bubblesDetails
FROM (SELECT DISTINCT NVL(id,0) id, NVL(id,0)||' - '||operation||' '||options||' (obj#:'||object_instance||')' step_details
FROM plan_table a
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 46483
AND a.timestamp BETWEEN TO_DATE('20201018224455', 'YYYYMMDDHH24MISS') AND TO_DATE('20201018224505', 'YYYYMMDDHH24MISS')
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE('20201018224503', 'YYYYMMDDHH24MISS')) = TO_DATE('20201018224503', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
);
BEGIN
:sql_text := '
SELECT TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
null,
plan_line_id,
CASE WHEN rtr_category > .5 THEN category ELSE ''Multiple'' END,
num_samples
FROM (SELECT end_time, plan_line_id, category, num_samples, rtr_category, ROW_NUMBER() OVER (PARTITION BY end_time, plan_line_id ORDER BY rtr_category DESC) rn_category
FROM (SELECT end_time, plan_line_id, category, SUM(num_samples) OVER (PARTITION BY end_time, plan_line_id) num_samples, RATIO_TO_REPORT(num_samples) OVER (PARTITION BY end_time, plan_line_id) rtr_category
FROM (SELECT timestamp end_time, NVL(id,0) plan_line_id,
CASE WHEN other_tag = ''CPU'' THEN ''CPU'' WHEN other_tag LIKE ''%I/O'' THEN ''I/O'' WHEN other_tag = ''Concurrency'' THEN ''Concurrency'' WHEN other_tag = ''Cluster'' THEN ''Cluster'' ELSE ''Other'' END category,
COUNT(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp, NVL(id,0), CASE WHEN other_tag = ''CPU'' THEN ''CPU'' WHEN other_tag LIKE ''%I/O'' THEN ''I/O'' WHEN other_tag = ''Concurrency'' THEN ''Concurrency'' WHEN other_tag = ''Cluster'' THEN ''Cluster'' ELSE ''Other'' END)
)
)
WHERE rn_category = 1
ORDER BY end_time
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top Step/Event/Obj for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT step_event,
num_samples,
CASE wait_class WHEN ''CPU'' THEN ''34CF27'' WHEN ''Scheduler'' THEN ''9FFA9D'' WHEN ''User I/O'' THEN ''0252D7'' WHEN ''System I/O'' THEN ''1E96DD''  WHEN ''Concurrency'' THEN ''871C12'' WHEN ''Application'' THEN ''C42A05'' WHEN ''Commit'' THEN ''EA6A05'' WHEN ''Configuration'' THEN ''594611''   WHEN ''Administrative'' THEN ''75763E''  WHEN ''Network'' THEN ''989779'' WHEN ''Other'' THEN ''F571A0''  WHEN ''Cluster'' THEN ''CEC3B5'' WHEN ''Queueing'' THEN ''C6BAA5'' END style,
step_event||'' - ''||num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(num_samples) OVER (),2)||''% of DB Time)'' tooltip
FROM (SELECT data.step||'' ''||CASE WHEN data.obj# = 0 THEN ''UNDO''
ELSE (SELECT TRIM(''.'' FROM '' ''||o.owner||''.''||o.object_name||''.''||o.subobject_name) FROM dba_objects o WHERE o.object_id = data.obj# AND ROWNUM = 1)
END||'' / ''||data.event  step_event,
data.num_samples, data.wait_class
FROM (SELECT id||'' - ''||operation||'' ''||options step, object_instance obj#, object_node event, other_tag wait_class,
count(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) =  46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY id||'' - ''||operation||'' ''||options, object_instance, object_node, other_tag
ORDER BY 5 DESC) data)
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Top 15 Wait events timeline SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'AreaChart'
DEF stacked = 'isStacked: true,'
DEF abstract = 'AS (stacked) per top 15 wait events'
DEF vaxis = 'Active Sessions - AS (stacked)'
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH, Y-axis report Active Sessions at any time, not Average Active Sessions'
COL evt_01 NEW_V evt_01
COL evt_02 NEW_V evt_02
COL evt_03 NEW_V evt_03
COL evt_04 NEW_V evt_04
COL evt_05 NEW_V evt_05
COL evt_06 NEW_V evt_06
COL evt_07 NEW_V evt_07
COL evt_08 NEW_V evt_08
COL evt_09 NEW_V evt_09
COL evt_10 NEW_V evt_10
COL evt_11 NEW_V evt_11
COL evt_12 NEW_V evt_12
COL evt_13 NEW_V evt_13
COL evt_14 NEW_V evt_14
COL evt_15 NEW_V evt_15
COL tit_01 NEW_V tit_01
COL tit_02 NEW_V tit_02
COL tit_03 NEW_V tit_03
COL tit_04 NEW_V tit_04
COL tit_05 NEW_V tit_05
COL tit_06 NEW_V tit_06
COL tit_07 NEW_V tit_07
COL tit_08 NEW_V tit_08
COL tit_09 NEW_V tit_09
COL tit_10 NEW_V tit_10
COL tit_11 NEW_V tit_11
COL tit_12 NEW_V tit_12
COL tit_13 NEW_V tit_13
COL tit_14 NEW_V tit_14
COL tit_15 NEW_V tit_15
COL series_01 NEW_V series_01
COL series_02 NEW_V series_02
COL series_03 NEW_V series_03
COL series_04 NEW_V series_04
COL series_05 NEW_V series_05
COL series_06 NEW_V series_06
COL series_07 NEW_V series_07
COL series_08 NEW_V series_08
COL series_09 NEW_V series_09
COL series_10 NEW_V series_10
COL series_11 NEW_V series_11
COL series_12 NEW_V series_12
COL series_13 NEW_V series_13
COL series_14 NEW_V series_14
COL series_15 NEW_V series_15
SELECT MAX(CASE WHEN ranking = 1  THEN cpu_or_event ELSE '' END) evt_01,
MAX(CASE WHEN ranking = 2  THEN cpu_or_event ELSE '' END) evt_02,
MAX(CASE WHEN ranking = 3  THEN cpu_or_event ELSE '' END) evt_03,
MAX(CASE WHEN ranking = 4  THEN cpu_or_event ELSE '' END) evt_04,
MAX(CASE WHEN ranking = 5  THEN cpu_or_event ELSE '' END) evt_05,
MAX(CASE WHEN ranking = 6  THEN cpu_or_event ELSE '' END) evt_06,
MAX(CASE WHEN ranking = 7  THEN cpu_or_event ELSE '' END) evt_07,
MAX(CASE WHEN ranking = 8  THEN cpu_or_event ELSE '' END) evt_08,
MAX(CASE WHEN ranking = 9  THEN cpu_or_event ELSE '' END) evt_09,
MAX(CASE WHEN ranking = 10 THEN cpu_or_event ELSE '' END) evt_10,
MAX(CASE WHEN ranking = 11 THEN cpu_or_event ELSE '' END) evt_11,
MAX(CASE WHEN ranking = 12 THEN cpu_or_event ELSE '' END) evt_12,
MAX(CASE WHEN ranking = 13 THEN cpu_or_event ELSE '' END) evt_13,
MAX(CASE WHEN ranking = 14 THEN cpu_or_event ELSE '' END) evt_14,
MAX(CASE WHEN ranking = 15 THEN cpu_or_event ELSE '' END) evt_15,
MAX(CASE WHEN ranking = 1  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_01,
MAX(CASE WHEN ranking = 2  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_02,
MAX(CASE WHEN ranking = 3  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_03,
MAX(CASE WHEN ranking = 4  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_04,
MAX(CASE WHEN ranking = 5  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_05,
MAX(CASE WHEN ranking = 6  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_06,
MAX(CASE WHEN ranking = 7  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_07,
MAX(CASE WHEN ranking = 8  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_08,
MAX(CASE WHEN ranking = 9  THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_09,
MAX(CASE WHEN ranking = 10 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_10,
MAX(CASE WHEN ranking = 11 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_11,
MAX(CASE WHEN ranking = 12 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_12,
MAX(CASE WHEN ranking = 13 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_13,
MAX(CASE WHEN ranking = 14 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_14,
MAX(CASE WHEN ranking = 15 THEN CASE wait_class WHEN 'CPU' THEN 'color: ''#34CF27''' WHEN 'Scheduler' THEN 'color: ''#9FFA9D''' WHEN 'User I/O' THEN 'color: ''#0252D7''' WHEN 'System I/O' THEN 'color: ''#1E96DD'''  WHEN 'Concurrency' THEN 'color: ''#871C12''' WHEN 'Application' THEN 'color: ''#C42A05''' WHEN 'Commit' THEN 'color: ''#EA6A05''' WHEN 'Configuration' THEN 'color: ''#594611'''   WHEN 'Administrative' THEN 'color: ''#75763E'''  WHEN 'Network' THEN 'color: ''#989779''' WHEN 'Other' THEN 'color: ''#F571A0'''  WHEN 'Cluster' THEN 'color: ''#CEC3B5''' WHEN 'Queueing' THEN 'color: ''#C6BAA5''' END END) series_15
FROM (SELECT 1 fake, object_node cpu_or_event, other_tag wait_class,
ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) ranking
FROM plan_table
WHERE statement_id = 'SQLD360_ASH_DATA_HIST'
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,3)+1,INSTR(partition_stop,',',1,4)-INSTR(partition_stop,',',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,4)+1,INSTR(partition_stop,',',1,5)-INSTR(partition_stop,',',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,',',1,5)+1,INSTR(partition_stop,',',1,6)-INSTR(partition_stop,',',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE('20201018224455', 'YYYYMMDDHH24MISS') AND TO_DATE('20201018224505', 'YYYYMMDDHH24MISS')
AND remarks = '00540ttuxh7n9'
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE('20201018224503', 'YYYYMMDDHH24MISS')) = TO_DATE('20201018224503', 'YYYYMMDDHH24MISS')
GROUP BY object_node, other_tag) ash,
(SELECT 1 fake FROM dual) b
WHERE ash.fake(+) = b.fake
AND ranking <= 15
/
SET DEF @
SELECT SUBSTR('@evt_01.',1,27) tit_01,
SUBSTR('@evt_02.',1,27) tit_02,
SUBSTR('@evt_03.',1,27) tit_03,
SUBSTR('@evt_04.',1,27) tit_04,
SUBSTR('@evt_05.',1,27) tit_05,
SUBSTR('@evt_06.',1,27) tit_06,
SUBSTR('@evt_07.',1,27) tit_07,
SUBSTR('@evt_08.',1,27) tit_08,
SUBSTR('@evt_09.',1,27) tit_09,
SUBSTR('@evt_10.',1,27) tit_10,
SUBSTR('@evt_11.',1,27) tit_11,
SUBSTR('@evt_12.',1,27) tit_12,
SUBSTR('@evt_13.',1,27) tit_13,
SUBSTR('@evt_14.',1,27) tit_14,
SUBSTR('@evt_15.',1,27) tit_15
FROM DUAL
/
COL e01 NOPRI
COL e02 NOPRI
COL e03 NOPRI
COL e04 NOPRI
COL e05 NOPRI
COL e06 NOPRI
COL e07 NOPRI
COL e08 NOPRI
COL e09 NOPRI
COL e10 NOPRI
COL e11 NOPRI
COL e12 NOPRI
COL e13 NOPRI
COL e14 NOPRI
COL e15 NOPRI
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(sample_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
NVL(num_sess_01,0) "e01@tit_01." ,
NVL(num_sess_02,0) "e02@tit_02." ,
NVL(num_sess_03,0) "e03@tit_03." ,
NVL(num_sess_04,0) "e04@tit_04." ,
NVL(num_sess_05,0) "e05@tit_05." ,
NVL(num_sess_06,0) "e06@tit_06." ,
NVL(num_sess_07,0) "e07@tit_07." ,
NVL(num_sess_08,0) "e08@tit_08." ,
NVL(num_sess_09,0) "e09@tit_09." ,
NVL(num_sess_10,0) "e10@tit_10." ,
NVL(num_sess_11,0) "e11@tit_11." ,
NVL(num_sess_12,0) "e12@tit_12." ,
NVL(num_sess_13,0) "e13@tit_13." ,
NVL(num_sess_14,0) "e14@tit_14." ,
NVL(num_sess_15,0) "e15@tit_15."
FROM (SELECT sample_time,
MAX(CASE WHEN cpu_or_event  = ''@evt_01.'' THEN num_sess ELSE NULL END) num_sess_01,
MAX(CASE WHEN cpu_or_event  = ''@evt_02.'' THEN num_sess ELSE NULL END) num_sess_02,
MAX(CASE WHEN cpu_or_event  = ''@evt_03.'' THEN num_sess ELSE NULL END) num_sess_03,
MAX(CASE WHEN cpu_or_event  = ''@evt_04.'' THEN num_sess ELSE NULL END) num_sess_04,
MAX(CASE WHEN cpu_or_event  = ''@evt_05.'' THEN num_sess ELSE NULL END) num_sess_05,
MAX(CASE WHEN cpu_or_event  = ''@evt_06.'' THEN num_sess ELSE NULL END) num_sess_06,
MAX(CASE WHEN cpu_or_event  = ''@evt_07.'' THEN num_sess ELSE NULL END) num_sess_07,
MAX(CASE WHEN cpu_or_event  = ''@evt_08.'' THEN num_sess ELSE NULL END) num_sess_08,
MAX(CASE WHEN cpu_or_event  = ''@evt_09.'' THEN num_sess ELSE NULL END) num_sess_09,
MAX(CASE WHEN cpu_or_event  = ''@evt_10.'' THEN num_sess ELSE NULL END) num_sess_10,
MAX(CASE WHEN cpu_or_event  = ''@evt_11.'' THEN num_sess ELSE NULL END) num_sess_11,
MAX(CASE WHEN cpu_or_event  = ''@evt_12.'' THEN num_sess ELSE NULL END) num_sess_12,
MAX(CASE WHEN cpu_or_event  = ''@evt_13.'' THEN num_sess ELSE NULL END) num_sess_13,
MAX(CASE WHEN cpu_or_event  = ''@evt_14.'' THEN num_sess ELSE NULL END) num_sess_14,
MAX(CASE WHEN cpu_or_event  = ''@evt_15.'' THEN num_sess ELSE NULL END) num_sess_15
FROM (SELECT timestamp sample_time,
object_node cpu_or_event,
count(*) num_sess
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND remarks = ''00540ttuxh7n9''
AND ''Y'' = ''Y''
AND /*cost*/ bytes = 368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND object_node IN (''@evt_01.'',''@evt_02.'',''@evt_03.'',''@evt_04.'',''@evt_05.'',''@evt_06.'',
''@evt_07.'',''@evt_08.'',''@evt_09.'',''@evt_10.'',''@evt_11.'',''@evt_12.'',
''@evt_13.'',''@evt_14.'',''@evt_15.'')
GROUP BY timestamp, object_node)
GROUP BY sample_time)
ORDER BY 3
';
END;
/
SET DEF &
@sql/sqld360_9a_pre_one.sql
COL evt01_ PRI
COL evt02_ PRI
COL evt03_ PRI
COL evt04_ PRI
COL evt05_ PRI
COL evt06_ PRI
COL evt07_ PRI
COL evt08_ PRI
COL evt09_ PRI
COL evt10_ PRI
COL evt11_ PRI
COL evt12_ PRI
COL evt13_ PRI
COL evt14_ PRI
COL evt15_ PRI
UNDEF evt_01
UNDEF evt_02
UNDEF evt_03
UNDEF evt_04
UNDEF evt_05
UNDEF evt_06
UNDEF evt_07
UNDEF evt_08
UNDEF evt_09
UNDEF evt_10
UNDEF evt_11
UNDEF evt_12
UNDEF evt_13
UNDEF evt_14
UNDEF evt_15
DEF series_01 = ''
DEF series_02 = ''
DEF series_03 = ''
DEF series_04 = ''
DEF series_05 = ''
DEF series_06 = ''
DEF series_07 = ''
DEF series_08 = ''
DEF series_09 = ''
DEF series_10 = ''
DEF series_11 = ''
DEF series_12 = ''
DEF series_13 = ''
DEF series_14 = ''
DEF series_15 = ''
----------------------------
DEF title='DB Time by PX process for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_bch=''
BEGIN
:sql_text := '
SELECT data.qcpx_process,
data.num_samples,
NULL style,
data.qcpx_process||'' - ''||data.num_samples||'' Samples (''||TRUNC(100*RATIO_TO_REPORT(data.num_samples) OVER (),2)||''%)'' tooltip
FROM (SELECT NVL2(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)), ''PX Proc - '', ''QC - '')||position||''.''||cpu_cost||''.''||io_cost  qcpx_process,
count(*) num_samples
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY NVL2(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)), ''PX Proc - '', ''QC - '')||position||''.''||cpu_cost||''.''||io_cost
ORDER BY 2 DESC) data
ORDER BY 2 DESC
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='PGA and TEMP usage for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Bytes'
DEF tit_01 = 'PGA Usage'
DEF tit_02 = 'TEMP Usage'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
pga_allocated,
temp_space_allocated,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1))) pga_allocated,
SUM(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1))) temp_space_allocated
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Read and Write I/O requests for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'Number of I/O requests'
DEF tit_01 = 'Read I/O Request'
DEF tit_02 = 'Write I/O Request'
DEF tit_03 = ''
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
read_io_requests,
write_io_requests,
0 dummy_03,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_requests,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_requests
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title='Read, Write and Interconnect I/O bytes for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
DEF skip_lch=''
DEF chartype = 'LineChart'
DEF stacked = ''
DEF vaxis = 'I/O bytes'
DEF tit_01 = 'Read I/O Bytes'
DEF tit_02 = 'Write I/O Bytes'
DEF tit_03 = 'Interconnect I/O Bytes'
DEF tit_04 = ''
DEF tit_05 = ''
DEF tit_06 = ''
DEF tit_07 = ''
DEF tit_08 = ''
DEF tit_09 = ''
DEF tit_10 = ''
DEF tit_11 = ''
DEF tit_12 = ''
DEF tit_13 = ''
DEF tit_14 = ''
DEF tit_15 = ''
DEF foot = 'Data is not aggregated, extracted directly from DBA_HIST_ASH'
BEGIN
:sql_text := '
SELECT 0 snap_id,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') begin_time,
TO_CHAR(end_time, ''YYYY-MM-DD HH24:MI:SS'') end_time,
read_io_bytes,
write_io_bytes,
interconnect_io_bytes,
0 dummy_04,
0 dummy_05,
0 dummy_06,
0 dummy_07,
0 dummy_08,
0 dummy_09,
0 dummy_10,
0 dummy_11,
0 dummy_12,
0 dummy_13,
0 dummy_14,
0 dummy_15
FROM (SELECT timestamp end_time,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) read_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) write_io_bytes,
SUM(NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)),0)/
ROUND(GREATEST(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1))/1e6,1))) interconnect_io_bytes
FROM plan_table
WHERE statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND remarks = ''00540ttuxh7n9''
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
GROUP BY timestamp)
ORDER BY 3
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
DEF title = 'Raw Data for SQL_EXEC_ID 33554432 of PHV 368490531'
DEF main_table = 'DBA_HIST_ACTIVE_SESS_HISTORY'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
statement_id     source,
search_columns   dbid,
cardinality      snap_id,
position         instance_number,
parent_id        sample_id,
TO_CHAR(timestamp, ''YYYY-MM-DD/HH24:MI:SS'')        sample_time,
partition_id     sql_exec_id,
TO_CHAR(TO_DATE(distribution,''YYYYMMDDHH24MISS''), ''YYYY-MM-DD/HH24:MI:SS'')  sql_exec_start,
cpu_cost         session_id,
io_cost          session_serial#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,13)+1))            user_id,
remarks          sql_id,
cost             plan_hash_value,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,19)+1)) sql_full_plan_hash_value,
id               sql_plan_line_id,
operation        sql_plan_operation,
options          sql_plan_options,
object_node      cpu_or_event,
other_tag        wait_class,
TO_NUMBER(SUBSTR(partition_start,1,INSTR(partition_start,'','',1,1)-1)) seq#,
SUBSTR(partition_start,INSTR(partition_start,'','',1,1)+1,INSTR(partition_start,'','',1,2)-INSTR(partition_start,'','',1,1)-1) p1text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,2)+1,INSTR(partition_start,'','',1,3)-INSTR(partition_start,'','',1,2)-1)) p1,
SUBSTR(partition_start,INSTR(partition_start,'','',1,3)+1,INSTR(partition_start,'','',1,4)-INSTR(partition_start,'','',1,3)-1) p2text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,4)+1,INSTR(partition_start,'','',1,5)-INSTR(partition_start,'','',1,4)-1)) p2,
SUBSTR(partition_start,INSTR(partition_start,'','',1,5)+1,INSTR(partition_start,'','',1,6)-INSTR(partition_start,'','',1,5)-1) p3text,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,6)+1,INSTR(partition_start,'','',1,7)-INSTR(partition_start,'','',1,6)-1)) p3,
object_instance  current_obj#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,7)+1,INSTR(partition_start,'','',1,8)-INSTR(partition_start,'','',1,7)-1)) current_file#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,8)+1,INSTR(partition_start,'','',1,9)-INSTR(partition_start,'','',1,8)-1)) current_block#,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,9)+1,INSTR(partition_start,'','',1,10)-INSTR(partition_start,'','',1,9)-1)) current_row#,
SUBSTR(partition_stop,1,INSTR(partition_stop,'','',1,1)-1) in_parse,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,1)+1,INSTR(partition_stop,'','',1,2)-INSTR(partition_stop,'','',1,1)-1) in_hard_parse,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,2)+1,INSTR(partition_stop,'','',1,3)-INSTR(partition_stop,'','',1,2)-1) in_sql_execution,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)) qc_instance_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)) qc_session_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)) qc_session_serial#,
SUBSTR(partition_stop,INSTR(partition_stop,'','',1,6)+1,INSTR(partition_stop,'','',1,7)-INSTR(partition_stop,'','',1,6)-1) blocking_session_status,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,7)+1,INSTR(partition_stop,'','',1,8)-INSTR(partition_stop,'','',1,7)-1)) blocking_session,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,8)+1,INSTR(partition_stop,'','',1,9)-INSTR(partition_stop,'','',1,8)-1)) blocking_session_serial#,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,9)+1,INSTR(partition_stop,'','',1,10)-INSTR(partition_stop,'','',1,9)-1)) blocking_inst_id,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,10)+1,INSTR(partition_stop,'','',1,11)-INSTR(partition_stop,'','',1,10)-1)) px_flags,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,11)+1,INSTR(partition_stop,'','',1,12)-INSTR(partition_stop,'','',1,11)-1)) pga_allocated,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,12)+1,INSTR(partition_stop,'','',1,13)-INSTR(partition_stop,'','',1,12)-1)) temp_space_allocated,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,10)+1,INSTR(partition_start,'','',1,11)-INSTR(partition_start,'','',1,10)-1)) tm_delta_time,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,11)+1,INSTR(partition_start,'','',1,12)-INSTR(partition_start,'','',1,11)-1)) tm_delta_cpu_time,
TO_NUMBER(SUBSTR(partition_start,INSTR(partition_start,'','',1,12)+1,INSTR(partition_start,'','',1,13)-INSTR(partition_start,'','',1,12)-1)) tm_delta_db_time,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,13)+1,INSTR(partition_stop,'','',1,14)-INSTR(partition_stop,'','',1,13)-1)) delta_time,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,14)+1,INSTR(partition_stop,'','',1,15)-INSTR(partition_stop,'','',1,14)-1)) delta_read_io_requests,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,15)+1,INSTR(partition_stop,'','',1,16)-INSTR(partition_stop,'','',1,15)-1)) delta_write_io_requests,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,16)+1,INSTR(partition_stop,'','',1,17)-INSTR(partition_stop,'','',1,16)-1)) delta_read_io_bytes,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,17)+1,INSTR(partition_stop,'','',1,18)-INSTR(partition_stop,'','',1,17)-1)) delta_write_io_bytes,
TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,18)+1,INSTR(partition_stop,'','',1,19)-INSTR(partition_stop,'','',1,18)-1)) delta_interconnect_io_bytes
FROM plan_table
WHERE remarks = ''00540ttuxh7n9''
AND statement_id = ''SQLD360_ASH_DATA_HIST''
AND /*cost*/ bytes =  368490531
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,3)+1,INSTR(partition_stop,'','',1,4)-INSTR(partition_stop,'','',1,3)-1)),position) = 2
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,4)+1,INSTR(partition_stop,'','',1,5)-INSTR(partition_stop,'','',1,4)-1)),cpu_cost) = 3116
AND NVL(TO_NUMBER(SUBSTR(partition_stop,INSTR(partition_stop,'','',1,5)+1,INSTR(partition_stop,'','',1,6)-INSTR(partition_stop,'','',1,5)-1)),io_cost) = 46483
AND timestamp BETWEEN TO_DATE(''20201018224455'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''20201018224505'', ''YYYYMMDDHH24MISS'')
AND NVL(partition_id, 33554432) = 33554432
AND NVL(distribution, TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')) = TO_DATE(''20201018224503'', ''YYYYMMDDHH24MISS'')
AND ''Y'' = ''Y''
ORDER BY sample_time,instance_number
';
END;
/
@sql/sqld360_9a_pre_one.sql
----------------------------
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO <br>
SPO OFF
PRO </ol>
SPO 00038_sqld360_323688_00540ttuxh7n9_2d_34_plan_details.html APP;
PRO </td>
