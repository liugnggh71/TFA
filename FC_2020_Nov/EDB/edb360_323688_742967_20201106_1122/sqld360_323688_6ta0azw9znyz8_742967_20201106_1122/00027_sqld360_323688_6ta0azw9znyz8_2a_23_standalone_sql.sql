-- Standalone script to run the SQL, just copy and paste in SQL*Plus
-- or copy file 00027_sqld360_323688_6ta0azw9znyz8_2a_23_standalone_sql.sql from sqld360_323688_6ta0azw9znyz8_742967_20201106_1725.zip
VAR b1 NUMBER
VAR b2 CHAR(32)

EXEC :b1 := 11359475;
EXEC :b2 := '48524d656d626572496e737572616e63654964';

delete from T_OTHER_INSURANCE where INS_MEMBER= :b1 and CLASSTYPE=:b2

/

-- List of binds from history
/*
--SNAP_ID: 2703 Elapsed Time: 15.917117 Executions: 44 Avg Elapsed Time: .361753
EXEC :b1 := 11646359;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2716 Elapsed Time: 15.537614 Executions: 42 Avg Elapsed Time: .369943
EXEC :b1 := 11043132;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2718 Elapsed Time: 73.809602 Executions: 196 Avg Elapsed Time: .37658
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2748 Elapsed Time: 9.424004 Executions: 25 Avg Elapsed Time: .37696
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2751 Elapsed Time: 8.314192 Executions: 22 Avg Elapsed Time: .377918
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2754 Elapsed Time: 11.217608 Executions: 30 Avg Elapsed Time: .37392
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2755 Elapsed Time: 10.151899 Executions: 27 Avg Elapsed Time: .375996
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2757 Elapsed Time: 10.551988 Executions: 28 Avg Elapsed Time: .376857
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2758 Elapsed Time: 8.023832 Executions: 21 Avg Elapsed Time: .382087
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2759 Elapsed Time: 9.442584 Executions: 25 Avg Elapsed Time: .377703
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2761 Elapsed Time: 7.973515 Executions: 21 Avg Elapsed Time: .379691
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2762 Elapsed Time: 6.78555 Executions: 18 Avg Elapsed Time: .376975
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2766 Elapsed Time: 3.401781 Executions: 9 Avg Elapsed Time: .377976
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2805 Elapsed Time: 5.891494 Executions: 15 Avg Elapsed Time: .392766
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2808 Elapsed Time: 35.366987 Executions: 83 Avg Elapsed Time: .426108
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2809 Elapsed Time: 113.344475 Executions: 269 Avg Elapsed Time: .421355
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2810 Elapsed Time: 36.073405 Executions: 89 Avg Elapsed Time: .405319
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2830 Elapsed Time: 100.095034 Executions: 230 Avg Elapsed Time: .435196
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2841 Elapsed Time: 5.140489 Executions: 10 Avg Elapsed Time: .514049
EXEC :b1 := 11974235;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2842 Elapsed Time: 11.362911 Executions: 28 Avg Elapsed Time: .405818
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2843 Elapsed Time: 19.235472 Executions: 48 Avg Elapsed Time: .400739
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2844 Elapsed Time: 121.111103 Executions: 287 Avg Elapsed Time: .42199
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2845 Elapsed Time: 179.711795 Executions: 415 Avg Elapsed Time: .43304
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2846 Elapsed Time: 319.14428 Executions: 753 Avg Elapsed Time: .42383
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2847 Elapsed Time: 60.326869 Executions: 134 Avg Elapsed Time: .450201
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2848 Elapsed Time: 51.566809 Executions: 119 Avg Elapsed Time: .433335
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2849 Elapsed Time: 48.042684 Executions: 115 Avg Elapsed Time: .417762
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2850 Elapsed Time: 294.644541 Executions: 693 Avg Elapsed Time: .425172
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2851 Elapsed Time: 18.311571 Executions: 45 Avg Elapsed Time: .406924
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2852 Elapsed Time: 180.746078 Executions: 409 Avg Elapsed Time: .441922
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2853 Elapsed Time: 736.975182 Executions: 1577 Avg Elapsed Time: .467327
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2854 Elapsed Time: 761.976022 Executions: 1655 Avg Elapsed Time: .460408
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2855 Elapsed Time: 812.495848 Executions: 1782 Avg Elapsed Time: .455946
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2856 Elapsed Time: 643.652923 Executions: 1512 Avg Elapsed Time: .425696
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2857 Elapsed Time: 896.90158 Executions: 2114 Avg Elapsed Time: .424268
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2858 Elapsed Time: 914.719135 Executions: 2194 Avg Elapsed Time: .416918
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2859 Elapsed Time: 954.780482 Executions: 2283 Avg Elapsed Time: .418213
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2860 Elapsed Time: 309.746215 Executions: 730 Avg Elapsed Time: .42431
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2868 Elapsed Time: 59.931841 Executions: 117 Avg Elapsed Time: .512238
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2869 Elapsed Time: 13.941197 Executions: 32 Avg Elapsed Time: .435662
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2870 Elapsed Time: 133.303341 Executions: 307 Avg Elapsed Time: .434213
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2878 Elapsed Time: 282.275593 Executions: 668 Avg Elapsed Time: .422568
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2892 Elapsed Time: 11.602897 Executions: 28 Avg Elapsed Time: .414389
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2895 Elapsed Time: 12.065578 Executions: 30 Avg Elapsed Time: .402186
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2897 Elapsed Time: 45.282503 Executions: 106 Avg Elapsed Time: .427193
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2898 Elapsed Time: 7.385335 Executions: 18 Avg Elapsed Time: .410296
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2900 Elapsed Time: 87.001946 Executions: 212 Avg Elapsed Time: .410387
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2903 Elapsed Time: 7.416132 Executions: 18 Avg Elapsed Time: .412007
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2904 Elapsed Time: 9.192189 Executions: 22 Avg Elapsed Time: .417827
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2905 Elapsed Time: 13.52066 Executions: 34 Avg Elapsed Time: .397666
EXEC :b1 := 10515217;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2906 Elapsed Time: 48.860223 Executions: 119 Avg Elapsed Time: .41059
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2907 Elapsed Time: 54.607833 Executions: 131 Avg Elapsed Time: .416854
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2908 Elapsed Time: 241.696672 Executions: 584 Avg Elapsed Time: .413864
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2909 Elapsed Time: 909.642752 Executions: 2125 Avg Elapsed Time: .428067
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2910 Elapsed Time: 592.794684 Executions: 1408 Avg Elapsed Time: .421019
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2911 Elapsed Time: 661.405213 Executions: 1519 Avg Elapsed Time: .435421
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2912 Elapsed Time: 913.056018 Executions: 1855 Avg Elapsed Time: .492213
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2913 Elapsed Time: 694.566504 Executions: 1495 Avg Elapsed Time: .464593
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2928 Elapsed Time: 5.420639 Executions: 11 Avg Elapsed Time: .492785
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2941 Elapsed Time: 71.958453 Executions: 165 Avg Elapsed Time: .436112
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2942 Elapsed Time: 10.908595 Executions: 26 Avg Elapsed Time: .419561
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2943 Elapsed Time: 7.452022 Executions: 18 Avg Elapsed Time: .414001
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2944 Elapsed Time: 66.114952 Executions: 161 Avg Elapsed Time: .410652
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2945 Elapsed Time: 5.681224 Executions: 14 Avg Elapsed Time: .405802
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2946 Elapsed Time: 229.800542 Executions: 538 Avg Elapsed Time: .427139
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2947 Elapsed Time: 15.55122 Executions: 38 Avg Elapsed Time: .409243
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2948 Elapsed Time: 709.79046 Executions: 1524 Avg Elapsed Time: .465742
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2949 Elapsed Time: 680.345742 Executions: 1534 Avg Elapsed Time: .443511
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2950 Elapsed Time: 380.589602 Executions: 868 Avg Elapsed Time: .438467
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2953 Elapsed Time: 115.078573 Executions: 249 Avg Elapsed Time: .462163
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2954 Elapsed Time: 390.785473 Executions: 924 Avg Elapsed Time: .422928
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2955 Elapsed Time: 542.238238 Executions: 1317 Avg Elapsed Time: .411722
EXEC :b1 := 11097800;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 2988 Elapsed Time: 17.60724 Executions: 31 Avg Elapsed Time: .567975
EXEC :b1 := 11329636;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3003 Elapsed Time: 175.084304 Executions: 410 Avg Elapsed Time: .427035
EXEC :b1 := 11362231;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3024 Elapsed Time: 4.666198 Executions: 6 Avg Elapsed Time: .7777
EXEC :b1 := 11362231;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3051 Elapsed Time: 105.028214 Executions: 233 Avg Elapsed Time: .450765
EXEC :b1 := 11362231;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3070 Elapsed Time: 791.248054 Executions: 1850 Avg Elapsed Time: .427702
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3084 Elapsed Time: 376.791801 Executions: 824 Avg Elapsed Time: .457272
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3085 Elapsed Time: 134.288425 Executions: 290 Avg Elapsed Time: .463064
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3088 Elapsed Time: 116.430285 Executions: 251 Avg Elapsed Time: .463866
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3089 Elapsed Time: 252.948687 Executions: 541 Avg Elapsed Time: .467558
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3090 Elapsed Time: 17.799945 Executions: 38 Avg Elapsed Time: .46842
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3092 Elapsed Time: 7.678552 Executions: 17 Avg Elapsed Time: .45168
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3093 Elapsed Time: 10.157765 Executions: 23 Avg Elapsed Time: .441642
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3094 Elapsed Time: 13.753326 Executions: 32 Avg Elapsed Time: .429791
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3095 Elapsed Time: 31.330086 Executions: 71 Avg Elapsed Time: .441269
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3096 Elapsed Time: 6.957701 Executions: 15 Avg Elapsed Time: .463847
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3097 Elapsed Time: 11.594306 Executions: 26 Avg Elapsed Time: .445935
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3098 Elapsed Time: 12.492012 Executions: 28 Avg Elapsed Time: .446143
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3099 Elapsed Time: 88.259968 Executions: 192 Avg Elapsed Time: .459687
EXEC :b1 := 11979412;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3118 Elapsed Time: 31.059915 Executions: 57 Avg Elapsed Time: .544911
EXEC :b1 := 11979890;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3135 Elapsed Time: 267.648513 Executions: 585 Avg Elapsed Time: .457519
EXEC :b1 := 11971721;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3137 Elapsed Time: 135.07692 Executions: 304 Avg Elapsed Time: .444332
EXEC :b1 := 11288208;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3142 Elapsed Time: 7.884938 Executions: 18 Avg Elapsed Time: .438052
EXEC :b1 := 11731071;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3147 Elapsed Time: 159.710686 Executions: 358 Avg Elapsed Time: .446119
EXEC :b1 := 11512942;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3166 Elapsed Time: 9.311075 Executions: 6 Avg Elapsed Time: 1.551846
EXEC :b1 := 11980063;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3168 Elapsed Time: 719.154421 Executions: 1497 Avg Elapsed Time: .480397
EXEC :b1 := 11447576;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3169 Elapsed Time: 13.240399 Executions: 30 Avg Elapsed Time: .441347
EXEC :b1 := 11447576;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3180 Elapsed Time: 9.761485 Executions: 22 Avg Elapsed Time: .443704
EXEC :b1 := 10537262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3181 Elapsed Time: 5.654353 Executions: 13 Avg Elapsed Time: .43495
EXEC :b1 := 11692358;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3183 Elapsed Time: 174.628226 Executions: 388 Avg Elapsed Time: .450073
EXEC :b1 := 11730246;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3186 Elapsed Time: 26.566784 Executions: 62 Avg Elapsed Time: .428497
EXEC :b1 := 11362797;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3187 Elapsed Time: 32.716757 Executions: 75 Avg Elapsed Time: .436223
EXEC :b1 := 11680593;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3188 Elapsed Time: 11.153251 Executions: 25 Avg Elapsed Time: .44613
EXEC :b1 := 11980170;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3191 Elapsed Time: 208.161861 Executions: 448 Avg Elapsed Time: .464647
EXEC :b1 := 11976942;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3192 Elapsed Time: 234.829949 Executions: 504 Avg Elapsed Time: .465932
EXEC :b1 := 10650740;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3193 Elapsed Time: 224.365341 Executions: 500 Avg Elapsed Time: .448731
EXEC :b1 := 10674918;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3195 Elapsed Time: 84.393618 Executions: 194 Avg Elapsed Time: .435019
EXEC :b1 := 11610965;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3198 Elapsed Time: 296.412137 Executions: 695 Avg Elapsed Time: .426492
EXEC :b1 := 11628977;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3199 Elapsed Time: 789.804172 Executions: 1735 Avg Elapsed Time: .455219
EXEC :b1 := 11729112;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3216 Elapsed Time: 522.806698 Executions: 1171 Avg Elapsed Time: .446462
EXEC :b1 := 11675363;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3217 Elapsed Time: 587.420972 Executions: 1346 Avg Elapsed Time: .43642
EXEC :b1 := 10197146;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3218 Elapsed Time: 621.517141 Executions: 1431 Avg Elapsed Time: .434324
EXEC :b1 := 10254672;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3219 Elapsed Time: 661.88736 Executions: 1537 Avg Elapsed Time: .430636
EXEC :b1 := 11536747;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3220 Elapsed Time: 428.707075 Executions: 901 Avg Elapsed Time: .475813
EXEC :b1 := 10119186;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3221 Elapsed Time: 314.327493 Executions: 679 Avg Elapsed Time: .462927
EXEC :b1 := 11597536;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3222 Elapsed Time: 308.591047 Executions: 679 Avg Elapsed Time: .454479
EXEC :b1 := 10258234;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3223 Elapsed Time: 317.889702 Executions: 636 Avg Elapsed Time: .499827
EXEC :b1 := 10609012;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3224 Elapsed Time: 394.554076 Executions: 905 Avg Elapsed Time: .435971
EXEC :b1 := 10205744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3225 Elapsed Time: 207.036019 Executions: 482 Avg Elapsed Time: .429535
EXEC :b1 := 10142466;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3228 Elapsed Time: 37.281549 Executions: 88 Avg Elapsed Time: .423654
EXEC :b1 := 11976017;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3229 Elapsed Time: 7.17865 Executions: 17 Avg Elapsed Time: .422274
EXEC :b1 := 11980376;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3230 Elapsed Time: 14.801524 Executions: 35 Avg Elapsed Time: .422901
EXEC :b1 := 11699908;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3231 Elapsed Time: 18.436954 Executions: 39 Avg Elapsed Time: .472742
EXEC :b1 := 11974407;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3232 Elapsed Time: 12.88468 Executions: 26 Avg Elapsed Time: .495565
EXEC :b1 := 11974384;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3233 Elapsed Time: 10.390108 Executions: 22 Avg Elapsed Time: .472278
EXEC :b1 := 11707191;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3234 Elapsed Time: 19.716878 Executions: 41 Avg Elapsed Time: .480899
EXEC :b1 := 10676865;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3237 Elapsed Time: 18.700651 Executions: 45 Avg Elapsed Time: .41557
EXEC :b1 := 11980393;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3239 Elapsed Time: 9.286926 Executions: 22 Avg Elapsed Time: .422133
EXEC :b1 := 11631370;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3240 Elapsed Time: 10.090219 Executions: 24 Avg Elapsed Time: .420426
EXEC :b1 := 10126787;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3241 Elapsed Time: 14.046477 Executions: 34 Avg Elapsed Time: .413132
EXEC :b1 := 10572553;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3242 Elapsed Time: 38.32197 Executions: 90 Avg Elapsed Time: .4258
EXEC :b1 := 11683990;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3243 Elapsed Time: 253.884164 Executions: 606 Avg Elapsed Time: .418951
EXEC :b1 := 11976719;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3244 Elapsed Time: 398.816647 Executions: 903 Avg Elapsed Time: .441657
EXEC :b1 := 11673765;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3262 Elapsed Time: 104.267264 Executions: 236 Avg Elapsed Time: .44181
EXEC :b1 := 11980098;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3264 Elapsed Time: 832.102372 Executions: 1850 Avg Elapsed Time: .449785
EXEC :b1 := 11657019;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3265 Elapsed Time: 974.15559 Executions: 2205 Avg Elapsed Time: .441794
EXEC :b1 := 11261416;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3266 Elapsed Time: 955.194429 Executions: 2193 Avg Elapsed Time: .435565
EXEC :b1 := 10622096;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3267 Elapsed Time: 826.073514 Executions: 1887 Avg Elapsed Time: .437771
EXEC :b1 := 11525631;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3268 Elapsed Time: 419.100779 Executions: 883 Avg Elapsed Time: .474633
EXEC :b1 := 11353775;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3274 Elapsed Time: 9.846522 Executions: 24 Avg Elapsed Time: .410272
EXEC :b1 := 10710405;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3276 Elapsed Time: 14.815603 Executions: 32 Avg Elapsed Time: .462988
EXEC :b1 := 11980446;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3278 Elapsed Time: 17.751959 Executions: 40 Avg Elapsed Time: .443799
EXEC :b1 := 11318094;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3279 Elapsed Time: 13.798616 Executions: 33 Avg Elapsed Time: .41814
EXEC :b1 := 11435296;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3280 Elapsed Time: 537.755699 Executions: 1207 Avg Elapsed Time: .445531
EXEC :b1 := 10840926;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3281 Elapsed Time: 53.282998 Executions: 125 Avg Elapsed Time: .426264
EXEC :b1 := 10687002;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3282 Elapsed Time: 20.737975 Executions: 49 Avg Elapsed Time: .423224
EXEC :b1 := 11548472;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3284 Elapsed Time: 8.480478 Executions: 20 Avg Elapsed Time: .424024
EXEC :b1 := 11710253;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3285 Elapsed Time: 36.113035 Executions: 84 Avg Elapsed Time: .429917
EXEC :b1 := 11977784;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3286 Elapsed Time: 39.658295 Executions: 94 Avg Elapsed Time: .421897
EXEC :b1 := 11089296;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3287 Elapsed Time: 10.27272 Executions: 25 Avg Elapsed Time: .410909
EXEC :b1 := 11688122;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3288 Elapsed Time: 11.618755 Executions: 28 Avg Elapsed Time: .414956
EXEC :b1 := 11654507;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3289 Elapsed Time: 25.147841 Executions: 60 Avg Elapsed Time: .419131
EXEC :b1 := 11977158;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3290 Elapsed Time: 12.424198 Executions: 30 Avg Elapsed Time: .41414
EXEC :b1 := 11711586;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3291 Elapsed Time: 253.714587 Executions: 585 Avg Elapsed Time: .4337
EXEC :b1 := 11703270;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3292 Elapsed Time: 284.133445 Executions: 636 Avg Elapsed Time: .446751
EXEC :b1 := 11712817;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3293 Elapsed Time: 842.878964 Executions: 1940 Avg Elapsed Time: .434474
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3312 Elapsed Time: 3.831912 Executions: 8 Avg Elapsed Time: .478989
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3406 Elapsed Time: 23.959001 Executions: 50 Avg Elapsed Time: .47918
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3422 Elapsed Time: 7.573266 Executions: 18 Avg Elapsed Time: .420737
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3423 Elapsed Time: 12.614659 Executions: 30 Avg Elapsed Time: .420489
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3424 Elapsed Time: 193.964952 Executions: 439 Avg Elapsed Time: .441834
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3425 Elapsed Time: 384.215684 Executions: 870 Avg Elapsed Time: .441627
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3426 Elapsed Time: 126.23956 Executions: 290 Avg Elapsed Time: .435309
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3427 Elapsed Time: 13.26717 Executions: 32 Avg Elapsed Time: .414599
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3428 Elapsed Time: 6.215189 Executions: 15 Avg Elapsed Time: .414346
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3429 Elapsed Time: 8.195428 Executions: 20 Avg Elapsed Time: .409771
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3430 Elapsed Time: 7.932324 Executions: 19 Avg Elapsed Time: .417491
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3431 Elapsed Time: 33.660698 Executions: 80 Avg Elapsed Time: .420759
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3432 Elapsed Time: 18.059578 Executions: 43 Avg Elapsed Time: .41999
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3433 Elapsed Time: 40.986212 Executions: 96 Avg Elapsed Time: .42694
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3434 Elapsed Time: 10.34435 Executions: 24 Avg Elapsed Time: .431015
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3437 Elapsed Time: 8.426183 Executions: 20 Avg Elapsed Time: .421309
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3438 Elapsed Time: 4.198005 Executions: 10 Avg Elapsed Time: .419801
EXEC :b1 := 11630744;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3454 Elapsed Time: 26.025925 Executions: 55 Avg Elapsed Time: .473199
EXEC :b1 := 11980687;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3466 Elapsed Time: 6.807141 Executions: 16 Avg Elapsed Time: .425446
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3467 Elapsed Time: 9.429916 Executions: 22 Avg Elapsed Time: .428633
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3468 Elapsed Time: 17.748859 Executions: 42 Avg Elapsed Time: .422592
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3469 Elapsed Time: 51.817493 Executions: 121 Avg Elapsed Time: .428244
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3470 Elapsed Time: 42.610008 Executions: 100 Avg Elapsed Time: .4261
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3471 Elapsed Time: 10.794021 Executions: 25 Avg Elapsed Time: .431761
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3472 Elapsed Time: 7.207032 Executions: 17 Avg Elapsed Time: .423943
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3473 Elapsed Time: 7.812377 Executions: 18 Avg Elapsed Time: .434021
EXEC :b1 := 10696739;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3474 Elapsed Time: 23.102226 Executions: 54 Avg Elapsed Time: .427819
EXEC :b1 := 11980772;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3475 Elapsed Time: 12.026127 Executions: 29 Avg Elapsed Time: .414694
EXEC :b1 := 11731955;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3476 Elapsed Time: 6.26971 Executions: 15 Avg Elapsed Time: .417981
EXEC :b1 := 11542996;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3477 Elapsed Time: 8.604949 Executions: 21 Avg Elapsed Time: .409759
EXEC :b1 := 10668302;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3478 Elapsed Time: 15.706859 Executions: 38 Avg Elapsed Time: .413338
EXEC :b1 := 10190429;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3480 Elapsed Time: 25.369862 Executions: 62 Avg Elapsed Time: .409191
EXEC :b1 := 11979526;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3481 Elapsed Time: 8.209956 Executions: 20 Avg Elapsed Time: .410498
EXEC :b1 := 11978738;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3482 Elapsed Time: 20.065029 Executions: 49 Avg Elapsed Time: .40949
EXEC :b1 := 10105502;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3483 Elapsed Time: 5.775871 Executions: 14 Avg Elapsed Time: .412562
EXEC :b1 := 11300782;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3492 Elapsed Time: 3.409011 Executions: 6 Avg Elapsed Time: .568169
EXEC :b1 := 11980890;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3502 Elapsed Time: 36.480752 Executions: 80 Avg Elapsed Time: .456009
EXEC :b1 := 11980890;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3504 Elapsed Time: 3.934586 Executions: 8 Avg Elapsed Time: .491823
EXEC :b1 := 11980890;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3515 Elapsed Time: 7.470355 Executions: 18 Avg Elapsed Time: .41502
EXEC :b1 := 11637564;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3516 Elapsed Time: 14.970724 Executions: 36 Avg Elapsed Time: .415853
EXEC :b1 := 10555702;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3517 Elapsed Time: 128.009029 Executions: 290 Avg Elapsed Time: .44141
EXEC :b1 := 11689235;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3518 Elapsed Time: 7.327854 Executions: 18 Avg Elapsed Time: .407103
EXEC :b1 := 11364235;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3519 Elapsed Time: 13.903019 Executions: 34 Avg Elapsed Time: .408912
EXEC :b1 := 11701827;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3522 Elapsed Time: 25.878275 Executions: 62 Avg Elapsed Time: .417392
EXEC :b1 := 11980937;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3523 Elapsed Time: 8.190059 Executions: 20 Avg Elapsed Time: .409503
EXEC :b1 := 11980413;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3524 Elapsed Time: 319.590328 Executions: 724 Avg Elapsed Time: .441423
EXEC :b1 := 11536973;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3526 Elapsed Time: 5.888288 Executions: 14 Avg Elapsed Time: .420592
EXEC :b1 := 11223328;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3531 Elapsed Time: 157.404868 Executions: 370 Avg Elapsed Time: .425419
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3550 Elapsed Time: 32.332353 Executions: 71 Avg Elapsed Time: .455385
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3564 Elapsed Time: 722.39688 Executions: 1627 Avg Elapsed Time: .444005
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3565 Elapsed Time: 339.897672 Executions: 781 Avg Elapsed Time: .435208
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3567 Elapsed Time: 19.896935 Executions: 46 Avg Elapsed Time: .432542
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3568 Elapsed Time: 56.759551 Executions: 130 Avg Elapsed Time: .436612
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3569 Elapsed Time: 33.979122 Executions: 81 Avg Elapsed Time: .419495
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3570 Elapsed Time: 44.200749 Executions: 106 Avg Elapsed Time: .416988
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3571 Elapsed Time: 39.449839 Executions: 95 Avg Elapsed Time: .415261
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3572 Elapsed Time: 7.612908 Executions: 18 Avg Elapsed Time: .422939
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3574 Elapsed Time: 8.732107 Executions: 21 Avg Elapsed Time: .415815
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3576 Elapsed Time: 4.981444 Executions: 12 Avg Elapsed Time: .41512
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3577 Elapsed Time: 7.4827 Executions: 18 Avg Elapsed Time: .415706
EXEC :b1 := 11223328;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3578 Elapsed Time: 12.998479 Executions: 31 Avg Elapsed Time: .419306
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3579 Elapsed Time: 105.630522 Executions: 245 Avg Elapsed Time: .431145
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3581 Elapsed Time: 1.691433 Executions: 4 Avg Elapsed Time: .422858
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3598 Elapsed Time: 46.6194 Executions: 102 Avg Elapsed Time: .457053
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3600 Elapsed Time: 5.981856 Executions: 13 Avg Elapsed Time: .460143
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3612 Elapsed Time: 334.229296 Executions: 781 Avg Elapsed Time: .42795
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3613 Elapsed Time: 7.089112 Executions: 17 Avg Elapsed Time: .417007
EXEC :b1 := 11223328;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3615 Elapsed Time: 6.476828 Executions: 15 Avg Elapsed Time: .431789
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3617 Elapsed Time: 37.135312 Executions: 85 Avg Elapsed Time: .436886
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3618 Elapsed Time: 6.94635 Executions: 16 Avg Elapsed Time: .434147
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3620 Elapsed Time: 6.327128 Executions: 15 Avg Elapsed Time: .421809
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3622 Elapsed Time: 5.537228 Executions: 13 Avg Elapsed Time: .425941
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3624 Elapsed Time: 14.389973 Executions: 34 Avg Elapsed Time: .423235
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3627 Elapsed Time: 5.070906 Executions: 12 Avg Elapsed Time: .422576
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3648 Elapsed Time: 3.454733 Executions: 8 Avg Elapsed Time: .431842
EXEC :b1 := 11223328;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3675 Elapsed Time: 335.758627 Executions: 772 Avg Elapsed Time: .434921
EXEC :b1 := 11977939;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3723 Elapsed Time: 21.657074 Executions: 47 Avg Elapsed Time: .460789
EXEC :b1 := 11231627;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3909 Elapsed Time: 238.05972 Executions: 575 Avg Elapsed Time: .414017
EXEC :b1 := 11701102;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3919 Elapsed Time: 277.294702 Executions: 575 Avg Elapsed Time: .482252
EXEC :b1 := 11700928;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3921 Elapsed Time: 429.096322 Executions: 984 Avg Elapsed Time: .436073
EXEC :b1 := 11981217;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3922 Elapsed Time: 946.828316 Executions: 2114 Avg Elapsed Time: .447885
EXEC :b1 := 11981470;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3923 Elapsed Time: 1201.370134 Executions: 2735 Avg Elapsed Time: .439258
EXEC :b1 := 11678743;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3924 Elapsed Time: 803.677979 Executions: 1869 Avg Elapsed Time: .430004
EXEC :b1 := 11225216;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3934 Elapsed Time: 9.628729 Executions: 23 Avg Elapsed Time: .41864
EXEC :b1 := 11981660;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3938 Elapsed Time: 6.521227 Executions: 16 Avg Elapsed Time: .407577
EXEC :b1 := 11366857;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3939 Elapsed Time: 8.746292 Executions: 21 Avg Elapsed Time: .41649
EXEC :b1 := 11701746;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3942 Elapsed Time: 121.331837 Executions: 276 Avg Elapsed Time: .439608
EXEC :b1 := 11973705;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3943 Elapsed Time: 121.811585 Executions: 276 Avg Elapsed Time: .441346
EXEC :b1 := 11973705;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3948 Elapsed Time: 536.274061 Executions: 1211 Avg Elapsed Time: .442836
EXEC :b1 := 11371876;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3949 Elapsed Time: 316.965944 Executions: 728 Avg Elapsed Time: .435393
EXEC :b1 := 11074323;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3954 Elapsed Time: 14.62307 Executions: 35 Avg Elapsed Time: .417802
EXEC :b1 := 11981660;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3958 Elapsed Time: 7.73913 Executions: 19 Avg Elapsed Time: .407323
EXEC :b1 := 11981660;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3959 Elapsed Time: 471.95076 Executions: 1065 Avg Elapsed Time: .443146
EXEC :b1 := 11355743;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3961 Elapsed Time: 5.924086 Executions: 14 Avg Elapsed Time: .423149
EXEC :b1 := 11981660;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 3963 Elapsed Time: 184.476309 Executions: 436 Avg Elapsed Time: .423111
EXEC :b1 := 11981660;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4424 Elapsed Time: 43.47512 Executions: 99 Avg Elapsed Time: .439143
EXEC :b1 := 11973835;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4425 Elapsed Time: 24.156096 Executions: 53 Avg Elapsed Time: .455775
EXEC :b1 := 11981762;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4430 Elapsed Time: 41.372838 Executions: 94 Avg Elapsed Time: .440137
EXEC :b1 := 11981781;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4441 Elapsed Time: 47.385989 Executions: 109 Avg Elapsed Time: .434734
EXEC :b1 := 10140801;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4442 Elapsed Time: 236.554337 Executions: 542 Avg Elapsed Time: .436447
EXEC :b1 := 11659921;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4447 Elapsed Time: 18.725312 Executions: 41 Avg Elapsed Time: .456715
EXEC :b1 := 10918970;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4448 Elapsed Time: 491.415883 Executions: 917 Avg Elapsed Time: .535895
EXEC :b1 := 11532988;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4449 Elapsed Time: 805.330253 Executions: 1542 Avg Elapsed Time: .522263
EXEC :b1 := 11591947;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4450 Elapsed Time: 673.975027 Executions: 1439 Avg Elapsed Time: .468363
EXEC :b1 := 11605370;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4451 Elapsed Time: 781.954963 Executions: 1637 Avg Elapsed Time: .477676
EXEC :b1 := 11353231;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4452 Elapsed Time: 776.664039 Executions: 1590 Avg Elapsed Time: .488468
EXEC :b1 := 11676855;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4453 Elapsed Time: 882.665028 Executions: 1961 Avg Elapsed Time: .45011
EXEC :b1 := 11983721;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4454 Elapsed Time: 650.879513 Executions: 1384 Avg Elapsed Time: .470289
EXEC :b1 := 11984115;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4455 Elapsed Time: 774.492685 Executions: 1619 Avg Elapsed Time: .478377
EXEC :b1 := 11718660;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4456 Elapsed Time: 967.45941 Executions: 2152 Avg Elapsed Time: .449563
EXEC :b1 := 11280878;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4457 Elapsed Time: 967.983736 Executions: 2144 Avg Elapsed Time: .451485
EXEC :b1 := 11984871;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4458 Elapsed Time: 937.589284 Executions: 2071 Avg Elapsed Time: .452723
EXEC :b1 := 10914003;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4459 Elapsed Time: 1217.928482 Executions: 2696 Avg Elapsed Time: .451754
EXEC :b1 := 11654095;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4460 Elapsed Time: 1215.169282 Executions: 2681 Avg Elapsed Time: .453252
EXEC :b1 := 11246170;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4461 Elapsed Time: 1210.433297 Executions: 2715 Avg Elapsed Time: .445832
EXEC :b1 := 11661843;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4462 Elapsed Time: 154.085021 Executions: 343 Avg Elapsed Time: .449227
EXEC :b1 := 11661843;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4464 Elapsed Time: 127.184432 Executions: 274 Avg Elapsed Time: .464177
EXEC :b1 := 11535433;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4465 Elapsed Time: 963.339356 Executions: 2104 Avg Elapsed Time: .457861
EXEC :b1 := 10550953;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4466 Elapsed Time: 957.674403 Executions: 2133 Avg Elapsed Time: .44898
EXEC :b1 := 11985605;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4467 Elapsed Time: 1043.561187 Executions: 2342 Avg Elapsed Time: .445585
EXEC :b1 := 11191007;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4468 Elapsed Time: 1118.149304 Executions: 2482 Avg Elapsed Time: .450503
EXEC :b1 := 11715992;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4469 Elapsed Time: 1150.662661 Executions: 2515 Avg Elapsed Time: .45752
EXEC :b1 := 11170007;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4470 Elapsed Time: 1139.790341 Executions: 2257 Avg Elapsed Time: .505002
EXEC :b1 := 11985058;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4471 Elapsed Time: 1169.259189 Executions: 2322 Avg Elapsed Time: .503557
EXEC :b1 := 11271618;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4472 Elapsed Time: 1198.677866 Executions: 2428 Avg Elapsed Time: .493689
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4473 Elapsed Time: 1224.208151 Executions: 2680 Avg Elapsed Time: .456794
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4474 Elapsed Time: 385.491239 Executions: 879 Avg Elapsed Time: .438557
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4477 Elapsed Time: 250.036838 Executions: 565 Avg Elapsed Time: .442543
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4478 Elapsed Time: 557.791584 Executions: 1212 Avg Elapsed Time: .460224
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4479 Elapsed Time: 1246.604385 Executions: 2636 Avg Elapsed Time: .472915
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4480 Elapsed Time: 1264.916639 Executions: 2648 Avg Elapsed Time: .477688
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4481 Elapsed Time: 1298.443557 Executions: 2709 Avg Elapsed Time: .479307
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4482 Elapsed Time: 1252.532846 Executions: 2720 Avg Elapsed Time: .46049
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4483 Elapsed Time: 1255.726898 Executions: 2774 Avg Elapsed Time: .452677
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4484 Elapsed Time: 1206.321543 Executions: 2643 Avg Elapsed Time: .456421
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4485 Elapsed Time: 756.956912 Executions: 1691 Avg Elapsed Time: .447639
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4486 Elapsed Time: 308.629902 Executions: 704 Avg Elapsed Time: .438395
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4487 Elapsed Time: 10.640578 Executions: 24 Avg Elapsed Time: .443357
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4488 Elapsed Time: 245.92195 Executions: 546 Avg Elapsed Time: .450407
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4489 Elapsed Time: 18.529502 Executions: 42 Avg Elapsed Time: .441179
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4490 Elapsed Time: 6.106719 Executions: 14 Avg Elapsed Time: .436194
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4491 Elapsed Time: 498.206348 Executions: 1113 Avg Elapsed Time: .447625
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4492 Elapsed Time: 463.719672 Executions: 1027 Avg Elapsed Time: .451528
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4493 Elapsed Time: 372.192179 Executions: 834 Avg Elapsed Time: .446274
EXEC :b1 := 11358262;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4522 Elapsed Time: 206.92782 Executions: 464 Avg Elapsed Time: .445965
EXEC :b1 := 11984406;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4524 Elapsed Time: 12.815369 Executions: 30 Avg Elapsed Time: .427179
EXEC :b1 := 11306493;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4525 Elapsed Time: 124.903463 Executions: 279 Avg Elapsed Time: .447683
EXEC :b1 := 11985276;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4526 Elapsed Time: 440.195694 Executions: 974 Avg Elapsed Time: .451946
EXEC :b1 := 11986621;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4527 Elapsed Time: 6.859778 Executions: 16 Avg Elapsed Time: .428736
EXEC :b1 := 10184370;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4528 Elapsed Time: 6.182166 Executions: 14 Avg Elapsed Time: .441583
EXEC :b1 := 11591208;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4529 Elapsed Time: 5.33918 Executions: 12 Avg Elapsed Time: .444932
EXEC :b1 := 11473850;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4530 Elapsed Time: 25.190117 Executions: 58 Avg Elapsed Time: .434312
EXEC :b1 := 11984318;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4531 Elapsed Time: 15.660152 Executions: 36 Avg Elapsed Time: .435004
EXEC :b1 := 11536929;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4532 Elapsed Time: 44.617107 Executions: 94 Avg Elapsed Time: .47465
EXEC :b1 := 11236401;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4533 Elapsed Time: 1006.529413 Executions: 2209 Avg Elapsed Time: .455649
EXEC :b1 := 11707774;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4534 Elapsed Time: 177.019011 Executions: 395 Avg Elapsed Time: .448149
EXEC :b1 := 11703447;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4536 Elapsed Time: 6.278086 Executions: 14 Avg Elapsed Time: .448435
EXEC :b1 := 10104722;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4537 Elapsed Time: 7.637099 Executions: 17 Avg Elapsed Time: .449241
EXEC :b1 := 11982791;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4538 Elapsed Time: 8.662337 Executions: 19 Avg Elapsed Time: .455912
EXEC :b1 := 11553026;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4539 Elapsed Time: 8.497895 Executions: 19 Avg Elapsed Time: .447258
EXEC :b1 := 11659094;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4540 Elapsed Time: 232.653713 Executions: 526 Avg Elapsed Time: .442307
EXEC :b1 := 11983238;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4559 Elapsed Time: 28.493698 Executions: 59 Avg Elapsed Time: .482944
EXEC :b1 := 11986608;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4571 Elapsed Time: 53.918261 Executions: 120 Avg Elapsed Time: .449319
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4572 Elapsed Time: 20.84684 Executions: 48 Avg Elapsed Time: .434309
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4580 Elapsed Time: 73.461736 Executions: 164 Avg Elapsed Time: .447937
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4581 Elapsed Time: 34.46793 Executions: 77 Avg Elapsed Time: .447635
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4582 Elapsed Time: 154.221457 Executions: 333 Avg Elapsed Time: .463127
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4583 Elapsed Time: 115.858328 Executions: 259 Avg Elapsed Time: .447329
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4585 Elapsed Time: 126.452512 Executions: 279 Avg Elapsed Time: .453235
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4586 Elapsed Time: 5.331059 Executions: 12 Avg Elapsed Time: .444255
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4587 Elapsed Time: 3.914157 Executions: 9 Avg Elapsed Time: .434906
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4588 Elapsed Time: 51.266073 Executions: 114 Avg Elapsed Time: .449702
EXEC :b1 := 11370779;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4607 Elapsed Time: 9.66385 Executions: 22 Avg Elapsed Time: .439266
EXEC :b1 := 11987205;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4615 Elapsed Time: 152.385341 Executions: 309 Avg Elapsed Time: .493156
EXEC :b1 := 11654393;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4616 Elapsed Time: 517.433581 Executions: 1085 Avg Elapsed Time: .476897
EXEC :b1 := 11071843;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4619 Elapsed Time: 5.721007 Executions: 13 Avg Elapsed Time: .440077
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4621 Elapsed Time: 12.708231 Executions: 29 Avg Elapsed Time: .438215
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4622 Elapsed Time: 15.743515 Executions: 35 Avg Elapsed Time: .449815
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4625 Elapsed Time: 5.902671 Executions: 14 Avg Elapsed Time: .421619
EXEC :b1 := 11306493;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4626 Elapsed Time: 5.319677 Executions: 12 Avg Elapsed Time: .443306
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4629 Elapsed Time: 6.625569 Executions: 15 Avg Elapsed Time: .441705
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4632 Elapsed Time: 910.206517 Executions: 2011 Avg Elapsed Time: .452614
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4633 Elapsed Time: 706.834357 Executions: 1576 Avg Elapsed Time: .448499
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4634 Elapsed Time: 6.285418 Executions: 14 Avg Elapsed Time: .448958
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4635 Elapsed Time: 5.716432 Executions: 13 Avg Elapsed Time: .439726
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4636 Elapsed Time: 275.647192 Executions: 616 Avg Elapsed Time: .447479
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4657 Elapsed Time: 654.45374 Executions: 1372 Avg Elapsed Time: .477007
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4665 Elapsed Time: 298.385888 Executions: 624 Avg Elapsed Time: .478183
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4684 Elapsed Time: 191.843123 Executions: 428 Avg Elapsed Time: .448232
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4707 Elapsed Time: 580.423291 Executions: 1252 Avg Elapsed Time: .463597
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4708 Elapsed Time: 626.156802 Executions: 1352 Avg Elapsed Time: .463134
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4709 Elapsed Time: 700.086589 Executions: 1455 Avg Elapsed Time: .481159
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4710 Elapsed Time: 689.285411 Executions: 1439 Avg Elapsed Time: .479003
EXEC :b1 := 11371707;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4711 Elapsed Time: 689.695888 Executions: 1455 Avg Elapsed Time: .474018
EXEC :b1 := 10182633;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4712 Elapsed Time: 479.489345 Executions: 998 Avg Elapsed Time: .48045
EXEC :b1 := 10106838;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4713 Elapsed Time: 140.758613 Executions: 268 Avg Elapsed Time: .525219
EXEC :b1 := 11658752;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4714 Elapsed Time: 303.615223 Executions: 596 Avg Elapsed Time: .509422
EXEC :b1 := 10208979;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4715 Elapsed Time: 321.216796 Executions: 654 Avg Elapsed Time: .491157
EXEC :b1 := 11579528;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4716 Elapsed Time: 78.002323 Executions: 160 Avg Elapsed Time: .487515
EXEC :b1 := 11579528;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4734 Elapsed Time: 289.57077 Executions: 664 Avg Elapsed Time: .436101
EXEC :b1 := 11654221;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4753 Elapsed Time: 27.376654 Executions: 45 Avg Elapsed Time: .60837
EXEC :b1 := 11987291;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4755 Elapsed Time: 824.569279 Executions: 1805 Avg Elapsed Time: .456825
EXEC :b1 := 11661651;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4756 Elapsed Time: 927.714946 Executions: 2012 Avg Elapsed Time: .461091
EXEC :b1 := 11367410;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4757 Elapsed Time: 1068.815856 Executions: 2146 Avg Elapsed Time: .49805
EXEC :b1 := 11365764;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4758 Elapsed Time: 877.090462 Executions: 1935 Avg Elapsed Time: .453277
EXEC :b1 := 10587445;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4759 Elapsed Time: 782.199206 Executions: 1719 Avg Elapsed Time: .455032
EXEC :b1 := 11527965;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4760 Elapsed Time: 172.323509 Executions: 368 Avg Elapsed Time: .46827
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4764 Elapsed Time: 31.645277 Executions: 68 Avg Elapsed Time: .465372
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4766 Elapsed Time: 14.895296 Executions: 34 Avg Elapsed Time: .438097
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4767 Elapsed Time: 7.029672 Executions: 16 Avg Elapsed Time: .439355
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4768 Elapsed Time: 34.138461 Executions: 78 Avg Elapsed Time: .437673
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4769 Elapsed Time: 47.500354 Executions: 107 Avg Elapsed Time: .443929
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4770 Elapsed Time: 725.292228 Executions: 1576 Avg Elapsed Time: .460211
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4771 Elapsed Time: 593.954548 Executions: 1288 Avg Elapsed Time: .461145
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4772 Elapsed Time: 232.332271 Executions: 488 Avg Elapsed Time: .476091
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4773 Elapsed Time: 76.016288 Executions: 165 Avg Elapsed Time: .460705
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4774 Elapsed Time: 12.157177 Executions: 28 Avg Elapsed Time: .434185
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4775 Elapsed Time: 8.785814 Executions: 20 Avg Elapsed Time: .439291
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4776 Elapsed Time: 10.523894 Executions: 24 Avg Elapsed Time: .438496
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4777 Elapsed Time: 8.672015 Executions: 20 Avg Elapsed Time: .433601
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4780 Elapsed Time: 42.027555 Executions: 96 Avg Elapsed Time: .437787
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4782 Elapsed Time: 171.05854 Executions: 378 Avg Elapsed Time: .452536
EXEC :b1 := 11066974;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4801 Elapsed Time: 33.690023 Executions: 77 Avg Elapsed Time: .437533
EXEC :b1 := 11987400;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4803 Elapsed Time: 158.168786 Executions: 339 Avg Elapsed Time: .466575
EXEC :b1 := 10249480;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4811 Elapsed Time: 50.009523 Executions: 110 Avg Elapsed Time: .454632
EXEC :b1 := 11257168;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4813 Elapsed Time: 36.177463 Executions: 81 Avg Elapsed Time: .446635
EXEC :b1 := 11987615;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4814 Elapsed Time: 10.066181 Executions: 23 Avg Elapsed Time: .43766
EXEC :b1 := 11984647;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4816 Elapsed Time: 31.796409 Executions: 74 Avg Elapsed Time: .429681
EXEC :b1 := 11987620;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4817 Elapsed Time: 293.174461 Executions: 637 Avg Elapsed Time: .460242
EXEC :b1 := 11986440;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4818 Elapsed Time: 105.732903 Executions: 234 Avg Elapsed Time: .45185
EXEC :b1 := 10511292;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4819 Elapsed Time: 370.704327 Executions: 825 Avg Elapsed Time: .449339
EXEC :b1 := 11978024;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4820 Elapsed Time: 7.983986 Executions: 18 Avg Elapsed Time: .443555
EXEC :b1 := 11210651;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4821 Elapsed Time: 38.675215 Executions: 84 Avg Elapsed Time: .460419
EXEC :b1 := 11987639;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4824 Elapsed Time: 7.340602 Executions: 17 Avg Elapsed Time: .4318
EXEC :b1 := 11227320;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4825 Elapsed Time: 10.464593 Executions: 24 Avg Elapsed Time: .436025
EXEC :b1 := 11702487;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4826 Elapsed Time: 7.426372 Executions: 17 Avg Elapsed Time: .436845
EXEC :b1 := 11102934;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4827 Elapsed Time: 35.153534 Executions: 79 Avg Elapsed Time: .444981
EXEC :b1 := 11231386;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4828 Elapsed Time: 11.326728 Executions: 26 Avg Elapsed Time: .435643
EXEC :b1 := 11640472;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4830 Elapsed Time: 164.865564 Executions: 374 Avg Elapsed Time: .440817
EXEC :b1 := 11608145;
EXEC :b2 := 'HRMemberInsuranceId';
--SNAP_ID: 4874 Elapsed Time: .595242 Executions: 1384 Avg Elapsed Time: .00043
EXEC :b1 := 10507091;
EXEC :b2 := 'HRMemberInsuranceId';
*/
