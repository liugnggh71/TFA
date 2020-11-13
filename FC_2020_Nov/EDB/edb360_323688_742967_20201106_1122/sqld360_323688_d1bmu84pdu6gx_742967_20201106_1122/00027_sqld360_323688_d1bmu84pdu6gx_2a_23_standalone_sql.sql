-- Standalone script to run the SQL, just copy and paste in SQL*Plus
-- or copy file 00027_sqld360_323688_d1bmu84pdu6gx_2a_23_standalone_sql.sql from sqld360_323688_d1bmu84pdu6gx_742967_20201106_1652.zip


begin dbms_mview.REFRESH('MV_DIM_MEMBER_ADDR_TMPRL','C'); end;

/

-- List of binds from history
/*
*/
