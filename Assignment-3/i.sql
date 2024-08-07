
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





########################  i. Identify the airline with the most flights arriving at a specific airport.   ############


hive (airlineanalytics)> select airline,count(DESTINATION_AIRPORT) theCount from flights group by airline order by theCount DESC LIMIT 1;
Query ID = hadoop_20240806023934_318b76c4-925f-4e33-8a43-a81e5d54f773
Total jobs = 2
Launching Job 1 out of 2
Number of reduce tasks not specified. Estimated from input data size: 3
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0032, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0032/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0032
Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 3
2024-08-06 02:39:52,599 Stage-1 map = 0%,  reduce = 0%
2024-08-06 02:40:08,657 Stage-1 map = 33%,  reduce = 0%, Cumulative CPU 7.21 sec
2024-08-06 02:40:10,810 Stage-1 map = 67%,  reduce = 0%, Cumulative CPU 17.09 sec
2024-08-06 02:40:12,967 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 28.34 sec
2024-08-06 02:40:22,943 Stage-1 map = 100%,  reduce = 33%, Cumulative CPU 33.95 sec
2024-08-06 02:40:25,130 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 43.69 sec
MapReduce Total cumulative CPU time: 43 seconds 690 msec
Ended Job = job_1722119975506_0032
Launching Job 2 out of 2
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0033, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0033/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0033
Hadoop job information for Stage-2: number of mappers: 1; number of reducers: 1
2024-08-06 02:40:47,447 Stage-2 map = 0%,  reduce = 0%
2024-08-06 02:40:55,297 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 3.87 sec
2024-08-06 02:41:03,915 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 7.87 sec
MapReduce Total cumulative CPU time: 7 seconds 870 msec
Ended Job = job_1722119975506_0033
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 3   Cumulative CPU: 43.69 sec   HDFS Read: 592484901 HDFS Write: 735 SUCCESS
Stage-Stage-2: Map: 1  Reduce: 1   Cumulative CPU: 7.87 sec   HDFS Read: 9071 HDFS Write: 118 SUCCESS
Total MapReduce CPU Time Spent: 51 seconds 560 msec
OK
WN        	1261855
Time taken: 92.702 seconds, Fetched: 1 row(s)
hive (airlineanalytics)> 
