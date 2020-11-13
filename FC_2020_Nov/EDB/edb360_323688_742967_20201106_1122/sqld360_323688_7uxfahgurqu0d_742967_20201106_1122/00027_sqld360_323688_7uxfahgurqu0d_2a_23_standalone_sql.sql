-- Standalone script to run the SQL, just copy and paste in SQL*Plus
-- or copy file 00027_sqld360_323688_7uxfahgurqu0d_2a_23_standalone_sql.sql from sqld360_323688_7uxfahgurqu0d_742967_20201106_1730.zip


begin dbms_mview.REFRESH('MV_DIM_CLAIM','C'); end;

/

-- List of binds from history
/*
*/
