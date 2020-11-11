
var racData = [ [new Date(2020,10,6,11,22,16) , null, null ]
, [new Date(2020,10,5,16,00,34) ,'C', '<br><b>Nov 05, 2020, 04:00:34 PM to<br>Nov 05, 2020, 04:30:37 PM</b><br>awrrpt_rac_4924_4925_max5wd1<br>.' ]
, [new Date(2020,10,4,12,00,14) ,'C', '<br><b>Nov 04, 2020, 12:00:14 PM to<br>Nov 04, 2020, 12:30:16 PM</b><br>awrrpt_rac_4868_4869_max5wd2<br>.' ]
, [new Date(2020,10,3,12,00,04) ,'C', '<br><b>Nov 03, 2020, 12:00:04 PM to<br>Nov 03, 2020, 12:30:07 PM</b><br>awrrpt_rac_4820_4821_max5wd3<br>.' ]
, [new Date(2020,10,4,21,00,48) ,'C', '<br><b>Nov 04, 2020, 09:00:48 PM to<br>Nov 04, 2020, 09:30:01 PM</b><br>awrrpt_rac_4886_4887_max7d1<br>.' ]
, [new Date(2020,10,3,21,00,30) ,'C', '<br><b>Nov 03, 2020, 09:00:30 PM to<br>Nov 03, 2020, 09:30:02 PM</b><br>awrrpt_rac_4838_4839_max7d2<br>.' ]
, [new Date(2020,10,2,21,00,23) ,'C', '<br><b>Nov 02, 2020, 09:00:23 PM to<br>Nov 02, 2020, 09:30:26 PM</b><br>awrrpt_rac_4790_4791_max7d3<br>.' ]
, [new Date(2020,9,16,09,00,33) ,'C', '<br><b>Oct 16, 2020, 09:00:33 AM to<br>Oct 16, 2020, 09:30:36 AM</b><br>awrrpt_rac_3947_3948_max23wd1<br>.' ]
, [new Date(2020,9,15,09,00,14) ,'C', '<br><b>Oct 15, 2020, 09:00:14 AM to<br>Oct 15, 2020, 09:30:17 AM</b><br>awrrpt_rac_3899_3900_max23wd2<br>.' ]
, [new Date(2020,9,14,09,00,38) ,'C', '<br><b>Oct 14, 2020, 09:00:38 AM to<br>Oct 14, 2020, 09:30:41 AM</b><br>awrrpt_rac_3851_3852_max23wd3<br>.' ]
, [new Date(2020,9,17,09,00,55) ,'C', '<br><b>Oct 17, 2020, 09:00:55 AM to<br>Oct 17, 2020, 09:30:57 AM</b><br>awrrpt_rac_3995_3996_max31d1<br>.' ]
, [new Date(2020,9,13,09,00,02) ,'C', '<br><b>Oct 13, 2020, 09:00:02 AM to<br>Oct 13, 2020, 09:30:05 AM</b><br>awrrpt_rac_3803_3804_max31d2<br>.' ]
, [new Date(2020,9,12,09,00,27) ,'C', '<br><b>Oct 12, 2020, 09:00:27 AM to<br>Oct 12, 2020, 09:30:30 AM</b><br>awrrpt_rac_3755_3756_max31d3<br>.' ]
, [new Date(2020,9,31,10,00,41) ,'C', '<br><b>Oct 31, 2020, 10:00:41 AM to<br>Oct 31, 2020, 10:30:43 AM</b><br>awrrpt_rac_4670_4671_med7d<br>.' ]
, [new Date(2020,9,8,08,00,07) ,'C', '<br><b>Oct 08, 2020, 08:00:07 AM to<br>Oct 08, 2020, 08:30:10 AM</b><br>awrrpt_rac_3561_3562_med31d<br>.' ]
, [new Date(2020,9,30,17,30,14) ,'C', '<br><b>Oct 30, 2020, 05:30:14 PM to<br>Oct 30, 2020, 06:00:17 PM</b><br>awrrpt_rac_4637_4638_min5wd<br>.' ]
, [new Date(2020,9,28,14,25,21) ,'C', '<br><b>Oct 28, 2020, 02:25:21 PM to<br>Oct 28, 2020, 02:29:15 PM</b><br>awrrpt_rac_4534_4535_min23wd<br>.' ]];


var instData1 = [ [new Date(2020,10,6,11,22,16) , null, null ]
, [new Date(2020,9,30,18,59,22) ,'1', '<br><b>Oct 30, 2020, 07:00:22 PM to<br>Oct 30, 2020, 07:30:24 PM</b><br>awrrpt_1_4640_4641_max5wd1<br>.' ]
, [new Date(2020,10,3,18,29,18) ,'1', '<br><b>Nov 03, 2020, 06:30:18 PM to<br>Nov 03, 2020, 07:00:21 PM</b><br>awrrpt_1_4833_4834_max5wd2<br>.' ]
, [new Date(2020,10,3,18,59,21) ,'1', '<br><b>Nov 03, 2020, 07:00:21 PM to<br>Nov 03, 2020, 07:30:23 PM</b><br>awrrpt_1_4834_4835_max5wd3<br>.' ]
, [new Date(2020,9,29,19,29,25) ,'1', '<br><b>Oct 29, 2020, 07:30:25 PM to<br>Oct 29, 2020, 08:00:28 PM</b><br>awrrpt_1_4593_4594_max7d1<br>.' ]
, [new Date(2020,10,1,04,29,29) ,'1', '<br><b>Nov 01, 2020, 04:30:29 AM to<br>Nov 01, 2020, 05:00:33 AM</b><br>awrrpt_1_4709_4710_max7d2<br>.' ]
, [new Date(2020,10,2,03,59,26) ,'1', '<br><b>Nov 02, 2020, 04:00:26 AM to<br>Nov 02, 2020, 04:30:29 AM</b><br>awrrpt_1_4756_4757_max7d3<br>.' ]
, [new Date(2020,9,23,18,29,45) ,'1', '<br><b>Oct 23, 2020, 06:30:45 PM to<br>Oct 23, 2020, 07:00:01 PM</b><br>awrrpt_1_4302_4303_max23wd1<br>.' ]
, [new Date(2020,9,23,09,59,06) ,'1', '<br><b>Oct 23, 2020, 10:00:06 AM to<br>Oct 23, 2020, 10:30:08 AM</b><br>awrrpt_1_4285_4286_max23wd2<br>.' ]
, [new Date(2020,9,23,09,29,05) ,'1', '<br><b>Oct 23, 2020, 09:30:05 AM to<br>Oct 23, 2020, 10:00:06 AM</b><br>awrrpt_1_4284_4285_max23wd3<br>.' ]
, [new Date(2020,9,25,20,29,54) ,'1', '<br><b>Oct 25, 2020, 08:30:54 PM to<br>Oct 25, 2020, 09:00:59 PM</b><br>awrrpt_1_4402_4403_max31d1<br>.' ]
, [new Date(2020,9,25,18,29,39) ,'1', '<br><b>Oct 25, 2020, 06:30:39 PM to<br>Oct 25, 2020, 07:00:42 PM</b><br>awrrpt_1_4398_4399_max31d2<br>.' ]
, [new Date(2020,9,24,20,29,01) ,'1', '<br><b>Oct 24, 2020, 08:30:01 PM to<br>Oct 24, 2020, 09:00:04 PM</b><br>awrrpt_1_4354_4355_max31d3<br>.' ]
, [new Date(2020,10,2,22,29,31) ,'1', '<br><b>Nov 02, 2020, 10:30:31 PM to<br>Nov 02, 2020, 11:00:34 PM</b><br>awrrpt_1_4793_4794_med7d<br>.' ]
, [new Date(2020,9,22,14,29,30) ,'1', '<br><b>Oct 22, 2020, 02:30:30 PM to<br>Oct 22, 2020, 03:00:33 PM</b><br>awrrpt_1_4246_4247_med31d<br>.' ]
, [new Date(2020,10,5,17,29,43) ,'1', '<br><b>Nov 05, 2020, 05:30:43 PM to<br>Nov 05, 2020, 06:00:46 PM</b><br>awrrpt_1_4927_4928_min5wd<br>.' ]
, [new Date(2020,9,28,14,24,21) ,'1', '<br><b>Oct 28, 2020, 02:25:21 PM to<br>Oct 28, 2020, 02:29:15 PM</b><br>awrrpt_1_4534_4535_min23wd<br>.' ]];


var instData2 = [ [new Date(2020,10,6,11,22,16) , null, null ]
, [new Date(2020,10,5,16,02,34) ,'2', '<br><b>Nov 05, 2020, 04:00:34 PM to<br>Nov 05, 2020, 04:30:37 PM</b><br>awrrpt_2_4924_4925_max5wd1<br>.' ]
, [new Date(2020,10,4,12,02,14) ,'2', '<br><b>Nov 04, 2020, 12:00:14 PM to<br>Nov 04, 2020, 12:30:16 PM</b><br>awrrpt_2_4868_4869_max5wd2<br>.' ]
, [new Date(2020,10,3,12,02,04) ,'2', '<br><b>Nov 03, 2020, 12:00:04 PM to<br>Nov 03, 2020, 12:30:07 PM</b><br>awrrpt_2_4820_4821_max5wd3<br>.' ]
, [new Date(2020,10,4,21,02,48) ,'2', '<br><b>Nov 04, 2020, 09:00:48 PM to<br>Nov 04, 2020, 09:30:01 PM</b><br>awrrpt_2_4886_4887_max7d1<br>.' ]
, [new Date(2020,10,3,21,02,30) ,'2', '<br><b>Nov 03, 2020, 09:00:30 PM to<br>Nov 03, 2020, 09:30:02 PM</b><br>awrrpt_2_4838_4839_max7d2<br>.' ]
, [new Date(2020,10,2,21,02,23) ,'2', '<br><b>Nov 02, 2020, 09:00:23 PM to<br>Nov 02, 2020, 09:30:26 PM</b><br>awrrpt_2_4790_4791_max7d3<br>.' ]
, [new Date(2020,9,16,09,02,33) ,'2', '<br><b>Oct 16, 2020, 09:00:33 AM to<br>Oct 16, 2020, 09:30:36 AM</b><br>awrrpt_2_3947_3948_max23wd1<br>.' ]
, [new Date(2020,9,15,09,02,14) ,'2', '<br><b>Oct 15, 2020, 09:00:14 AM to<br>Oct 15, 2020, 09:30:17 AM</b><br>awrrpt_2_3899_3900_max23wd2<br>.' ]
, [new Date(2020,9,14,09,02,38) ,'2', '<br><b>Oct 14, 2020, 09:00:38 AM to<br>Oct 14, 2020, 09:30:41 AM</b><br>awrrpt_2_3851_3852_max23wd3<br>.' ]
, [new Date(2020,9,17,09,02,55) ,'2', '<br><b>Oct 17, 2020, 09:00:55 AM to<br>Oct 17, 2020, 09:30:57 AM</b><br>awrrpt_2_3995_3996_max31d1<br>.' ]
, [new Date(2020,9,13,09,02,02) ,'2', '<br><b>Oct 13, 2020, 09:00:02 AM to<br>Oct 13, 2020, 09:30:05 AM</b><br>awrrpt_2_3803_3804_max31d2<br>.' ]
, [new Date(2020,9,12,09,02,27) ,'2', '<br><b>Oct 12, 2020, 09:00:27 AM to<br>Oct 12, 2020, 09:30:30 AM</b><br>awrrpt_2_3755_3756_max31d3<br>.' ]
, [new Date(2020,10,6,02,02,27) ,'2', '<br><b>Nov 06, 2020, 02:00:27 AM to<br>Nov 06, 2020, 02:30:30 AM</b><br>awrrpt_2_4944_4945_med7d<br>.' ]
, [new Date(2020,9,14,08,02,34) ,'2', '<br><b>Oct 14, 2020, 08:00:34 AM to<br>Oct 14, 2020, 08:30:36 AM</b><br>awrrpt_2_3849_3850_med31d<br>.' ]
, [new Date(2020,9,30,17,32,14) ,'2', '<br><b>Oct 30, 2020, 05:30:14 PM to<br>Oct 30, 2020, 06:00:17 PM</b><br>awrrpt_2_4637_4638_min5wd<br>.' ]
, [new Date(2020,9,28,14,27,21) ,'2', '<br><b>Oct 28, 2020, 02:25:21 PM to<br>Oct 28, 2020, 02:29:15 PM</b><br>awrrpt_2_4534_4535_min23wd<br>.' ]];


var instData3 = [ [new Date(2020,10,6,11,22,16) , null, null ] ];


var instData4 = [ [new Date(2020,10,6,11,22,16) , null, null ] ];


var instData5 = [ [new Date(2020,10,6,11,22,16) , null, null ] ];


var instData6 = [ [new Date(2020,10,6,11,22,16) , null, null ] ];


var instData7 = [ [new Date(2020,10,6,11,22,16) , null, null ] ];


var instData8 = [ [new Date(2020,10,6,11,22,16) , null, null ] ];

function populateEmptyColumns(numColumns,lArray){
var emptyCols=[]
var i
for (i = 0; i < numColumns; i++) {
emptyCols.push(',0')
}
for (i = 0; i<lArray.length; i++) {
lArray[i]=lArray[i].concat(emptyCols)
}
return lArray
}

function initializeArrays(n) {
populateEmptyColumns(n,racData)
populateEmptyColumns(n,instData1)
populateEmptyColumns(n,instData2)
populateEmptyColumns(n,instData3)
populateEmptyColumns(n,instData4)
populateEmptyColumns(n,instData5)
populateEmptyColumns(n,instData6)
populateEmptyColumns(n,instData7)
populateEmptyColumns(n,instData8)
}
