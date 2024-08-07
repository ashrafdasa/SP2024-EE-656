
hive>set hiveconf:hive.cli.print.current.db=true;
hive (default)> show databases;
OK
airlineanalytics
default
Time taken: 0.276 seconds, Fetched: 2 row(s)
hive (default)> use airlineanalytics;
OK
Time taken: 0.058 seconds
hive (airlineanalytics)> 

#############################   c. Find the total departure delay for each airline.  ####################################



hive (airlineanalytics)> SELECT AIRLINE,sum(DEPARTURE_DELAY) FROM flights group by AIRLINE
                       > ;
Query ID = hadoop_20240803171551_a4872a0f-f2a0-4e1f-9c04-a15882fa338c
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 3
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0011, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0011/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0011
Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 3
2024-08-03 17:16:10,651 Stage-1 map = 0%,  reduce = 0%
2024-08-03 17:16:23,830 Stage-1 map = 33%,  reduce = 0%, Cumulative CPU 5.28 sec
2024-08-03 17:16:26,030 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 21.55 sec
2024-08-03 17:16:35,303 Stage-1 map = 100%,  reduce = 33%, Cumulative CPU 26.0 sec
2024-08-03 17:16:36,388 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 33.77 sec
MapReduce Total cumulative CPU time: 33 seconds 770 msec
Ended Job = job_1722119975506_0011
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 3   Cumulative CPU: 33.77 sec   HDFS Read: 592486707 HDFS Write: 692 SUCCESS
Total MapReduce CPU Time Spent: 33 seconds 770 msec
OK
EV        	4857338
HA        	36972
MQ        	2837908
OO        	4517510
B6        	3026467
DL        	6427294
NK        	1840887
UA        	7355348
US        	1196447
VX        	553852
WN        	13186520
AA        	6369435
AS        	306997
F9        	1205449
Time taken: 47.91 seconds, Fetched: 14 row(s)
hive (airlineanalytics)> 
