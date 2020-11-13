-- Standalone script to run the SQL, just copy and paste in SQL*Plus
-- or copy file 00028_sqld360_323688_cpxtnxvgabn6b_2a_24_standalone_sql.sql from sqld360_323688_cpxtnxvgabn6b_742967_20201102_2131.zip
VAR b1 NUMBER

EXEC :b1 := 10888217;

DELETE FROM T_RSPE WHERE (RESP_ID = :b1 )

/

-- List of binds from history
/*
--SNAP_ID: 2846 Elapsed Time: 1241.20612 Executions: 5 Avg Elapsed Time: 248.241224
EXEC :b1 := 10859499;
--SNAP_ID: 2856 Elapsed Time: 1013.106462 Executions: 1 Avg Elapsed Time: 1013.106462
EXEC :b1 := 10860374;
--SNAP_ID: 2897 Elapsed Time: 1009.552188 Executions: 73 Avg Elapsed Time: 13.829482
EXEC :b1 := 10861144;
--SNAP_ID: 2955 Elapsed Time: 215.196959 Executions: 37 Avg Elapsed Time: 5.816134
EXEC :b1 := 10862886;
--SNAP_ID: 3286 Elapsed Time: 33.002459 Executions: 3 Avg Elapsed Time: 11.00082
EXEC :b1 := 10866948;
--SNAP_ID: 3902 Elapsed Time: 1831.63595 Executions: 11 Avg Elapsed Time: 166.512359
EXEC :b1 := 10872729;
--SNAP_ID: 4104 Elapsed Time: 997.579805 Executions: 4 Avg Elapsed Time: 249.394951
EXEC :b1 := 10876125;
--SNAP_ID: 4146 Elapsed Time: 1013.474549 Executions: 4 Avg Elapsed Time: 253.368637
EXEC :b1 := 10875169;
--SNAP_ID: 4241 Elapsed Time: 1008.617446 Executions: 6 Avg Elapsed Time: 168.102908
EXEC :b1 := 10879976;
--SNAP_ID: 4530 Elapsed Time: 67.553098 Executions: 68 Avg Elapsed Time: .993428
EXEC :b1 := 10884984;
*/
