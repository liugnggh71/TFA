-- Standalone script to run the SQL, just copy and paste in SQL*Plus
-- or copy file 00028_sqld360_323688_fgn8tub10g4ja_2a_24_standalone_sql.sql from sqld360_323688_fgn8tub10g4ja_742967_20201102_2227.zip
VAR b1 NUMBER

EXEC :b1 := 344774;

SELECT * FROM CM_RECORD_CURRENTSTEP WHERE ID = :b1   FOR UPDATE

/

-- List of binds from history
/*
--SNAP_ID: 2896 Elapsed Time: 980.067751 Executions: 12 Avg Elapsed Time: 81.672313
EXEC :b1 := 371287;
--SNAP_ID: 4146 Elapsed Time: 653.822416 Executions: 19 Avg Elapsed Time: 34.411706
EXEC :b1 := 340770;
*/
