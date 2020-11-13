SET PAGES 50000
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO <td>
SPO OFF
DEF title= 'Frequency histogram on Column T_DDL_ITEM.CLASSTYPE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''CLASSTYPE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_CRTD'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10192) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10192)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_CRTD''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_LAS_ACT_TIM'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10229) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10229)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_LAS_ACT_TIM''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_DDL_ITEM.DDLI_OBJ_STT'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_OBJ_STT''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_DDL_ITEM.DDLI_VSBT'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_VSBT''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_UNIVID'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10372) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10372)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_UNIVID''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_LBL'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 7763) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 7763)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_LBL''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_VAL'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 7763) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 7763)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_VAL''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_DDL_ITEM.DDLI_SYTM'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10172 * 10172) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10172,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10172 * 10172)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10172 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_SYTM''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_DDL_ITEMCONSID'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 3398) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 3398)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_DDL_ITEMCONSID''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_ID'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10372) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 10372)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_ID''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_DDL_ITEM.TSKT_RCPTTYP'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 217 * 217) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 217,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 217 * 217)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 217 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''TSKT_RCPTTYP''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_PRNT'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 2301) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 2301)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_PRNT''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Height Balanced histogram on Column T_DDL_ITEM.DDLI_DDL'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 7763) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 * 7763)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 254 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''DDLI_DDL''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_DDL_ITEM.("CLASSTYPE","DDLI_OBJ_STT")'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 * 10372)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10372 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_DDL_ITEM''
AND a.column_name = ''SYS_STS7_DOW3Y4SQ96_QSG9DVBTHW''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO </td>
SET PAGES 50000
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO <td>
SPO OFF
DEF title= 'Frequency histogram on Column T_NOTE.CLASSTYPE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 17660 * 960829) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 17660,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 17660 * 960829)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 17660 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''CLASSTYPE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Hybrid histogram on Column T_NOTE.NOTE_CRTD'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round(endpoint_repeat_count / 17661 * 960829) rows_per_bucket,
trunc(endpoint_repeat_count / 17661,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round(endpoint_repeat_count / 17661 * 960829)||'' Sel: ''||trunc(endpoint_repeat_count / 17661,6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CRTD''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Hybrid histogram on Column T_NOTE.NOTE_LAS_ACT_TIM'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round(endpoint_repeat_count / 17662 * 960829) rows_per_bucket,
trunc(endpoint_repeat_count / 17662,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''DATE'' = ''DATE'' or ''DATE'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''DATE'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round(endpoint_repeat_count / 17662 * 960829)||'' Sel: ''||trunc(endpoint_repeat_count / 17662,6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_LAS_ACT_TIM''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_OBJ_STT'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829 * 960829) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829 * 960829)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_OBJ_STT''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_ORIGCRTR'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829 * 960829) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829 * 960829)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960829 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_ORIGCRTR''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_PHNENOTE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10914 * 595661) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10914,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10914 * 595661)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10914 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_PHNENOTE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_UM_NOTETYP'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 461823 * 461823) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 461823,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 461823 * 461823)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 461823 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_UM_NOTETYP''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_PITY'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 118447 * 118447) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 118447,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 118447 * 118447)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 118447 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_PITY''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_CALLDRTNUNTS'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10832 * 73168) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10832,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10832 * 73168)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 10832 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CALLDRTNUNTS''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_CM_NOTETYP'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 13468 * 13468) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 13468,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 13468 * 13468)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 13468 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CM_NOTETYP''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_CASENOTETYP'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 329778 * 329778) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 329778,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 329778 * 329778)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 329778 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CASENOTETYP''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_MEMBNOTETYP'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 51715 * 51715) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 51715,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 51715 * 51715)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 51715 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_MEMBNOTETYP''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_SETK_NOTETYP'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 72916 * 72916) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 72916,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 72916 * 72916)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 72916 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_SETK_NOTETYP''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_CAREPLAN_NOTETYPE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 15838 * 15838) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 15838,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 15838 * 15838)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 15838 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CAREPLAN_NOTETYPE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_SOURCE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 268884 * 268884) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 268884,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 268884 * 268884)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 268884 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_SOURCE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_REASON'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 77301 * 77301) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 77301,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 77301 * 77301)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 77301 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_REASON''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_CALL_OUTCOME'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 40804 * 40804) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 40804,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 40804 * 40804)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 40804 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CALL_OUTCOME''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.NOTE_CALL_DISPOSITION'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 19262 * 19262) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 19262,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 19262 * 19262)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 19262 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CALL_DISPOSITION''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Hybrid histogram on Column T_NOTE.NOTE_CONTACT_ID'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round(endpoint_repeat_count / 3326 * 3326) rows_per_bucket,
trunc(endpoint_repeat_count / 3326,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round(endpoint_repeat_count / 3326 * 3326)||'' Sel: ''||trunc(endpoint_repeat_count / 3326,6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_CONTACT_ID''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column T_NOTE.AFFILIATION_TYPE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960724 * 960724) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960724,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960724 * 960724)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960724 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''AFFILIATION_TYPE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Top-Frequency histogram on Column T_NOTE.NOTE_TYPE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960826 * 960826) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960826,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960826 * 960826)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960826 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C''
AND a.table_name = ''T_NOTE''
AND a.column_name = ''NOTE_TYPE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO </td>
SET PAGES 50000
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO <td>
SPO OFF
DEF title= 'Frequency histogram on Column DW_DIM_NOTE.AFFILIATION_TYPE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960830 * 960830) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960830,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960830 * 960830)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 960830 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C_DW''
AND a.table_name = ''DW_DIM_NOTE''
AND a.column_name = ''AFFILIATION_TYPE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Hybrid histogram on Column DW_DIM_NOTE.DW_MODIFIED_DATE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''TIMESTAMP(9)'' = ''DATE'' or ''TIMESTAMP(9)'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''TIMESTAMP(9)'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round(endpoint_repeat_count / 5340 * 960830) rows_per_bucket,
trunc(endpoint_repeat_count / 5340,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''TIMESTAMP(9)'' = ''DATE'' or ''TIMESTAMP(9)'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''TIMESTAMP(9)'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round(endpoint_repeat_count / 5340 * 960830)||'' Sel: ''||trunc(endpoint_repeat_count / 5340,6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C_DW''
AND a.table_name = ''DW_DIM_NOTE''
AND a.column_name = ''DW_MODIFIED_DATE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO </td>
SET PAGES 50000
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO <td>
SPO OFF
DEF title= 'Frequency histogram on Column RPT_CONSTANTS.CLASSTYPE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471 * 471) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''VARCHAR2'' = ''DATE'' or ''VARCHAR2'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''VARCHAR2'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471 * 471)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C_DW''
AND a.table_name = ''RPT_CONSTANTS''
AND a.column_name = ''CLASSTYPE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
DEF title= 'Frequency histogram on Column RPT_CONSTANTS.OBJ_STATE'
DEF main_table = 'DBA_TAB_HISTOGRAMS'
BEGIN
:sql_text := '
SELECT /*+ NO_MERGE */
CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END approximate_value,
round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471 * 471) rows_per_bucket,
trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471,6) selectivity,
''ApproxValue: ''||CASE WHEN endpoint_actual_value IS NOT NULL THEN REPLACE(endpoint_actual_value, '''''''', '''')
WHEN endpoint_actual_value IS NULL THEN
CASE WHEN ''NUMBER'' = ''DATE'' or ''NUMBER'' LIKE ''TIMESTAMP%'' THEN
TO_CHAR(TO_DATE(TO_CHAR(TRUNC(endpoint_value)), ''J'') + (endpoint_value - TRUNC(endpoint_value)),''SYYYY/MM/DD HH24:MI:SS'')
WHEN ''NUMBER'' IN (''NUMBER'', ''FLOAT'', ''BINARY_FLOAT'') THEN
TO_CHAR(endpoint_value)
ELSE
UTL_RAW.CAST_TO_VARCHAR2(SUBSTR(LPAD(TO_CHAR(endpoint_value,''fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx''),30,''0''),1,12))
END
END||'' NumRows: ''||round((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471 * 471)||'' Sel: ''||trunc((a.endpoint_number - lag(a.endpoint_number,1,0) over (order by a.endpoint_number)) / 471 , 6) chart_text
FROM dba_tab_histograms a
WHERE a.owner = ''THH_C4C_DW''
AND a.table_name = ''RPT_CONSTANTS''
AND a.column_name = ''OBJ_STATE''
ORDER BY a.endpoint_number
';
END;
/
DEF skip_bch=''
@sql/sqld360_9a_pre_one.sql
SPO 00150_sqld360_323688_00540ttuxh7n9_3a_67_histograms.html APP;
PRO </td>
