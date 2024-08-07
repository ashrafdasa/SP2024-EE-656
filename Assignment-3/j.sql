
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





########################  j.  List the top 5 airlines with the highest total arrival delays at a specific airport (e.g., ORD)    ############

hive (airlineanalytics)> SELECT a.destination_airport from (select airline,destination_airport,sum(ARRIVAL_DELAY) theSum from flights  group by airline,destination_airport order by theSum DESC LIMIT 4) a LIMIT 1;
Query ID = hadoop_20240807024007_999b4c1c-dcd5-4399-a72e-c6b9f081cf4c
Total jobs = 2
Launching Job 1 out of 2
Number of reduce tasks not specified. Estimated from input data size: 3
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0039, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0039/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0039
Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 3
2024-08-07 02:40:25,166 Stage-1 map = 0%,  reduce = 0%
2024-08-07 02:40:42,681 Stage-1 map = 33%,  reduce = 0%, Cumulative CPU 7.47 sec
2024-08-07 02:40:48,149 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 30.72 sec
2024-08-07 02:40:58,108 Stage-1 map = 100%,  reduce = 67%, Cumulative CPU 41.71 sec
2024-08-07 02:40:59,190 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 47.1 sec
MapReduce Total cumulative CPU time: 47 seconds 100 msec
Ended Job = job_1722119975506_0039
Launching Job 2 out of 2
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0040, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0040/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0040
Hadoop job information for Stage-2: number of mappers: 1; number of reducers: 1
2024-08-07 02:41:22,005 Stage-2 map = 0%,  reduce = 0%
2024-08-07 02:41:31,713 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 5.49 sec
2024-08-07 02:41:41,551 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 10.92 sec
MapReduce Total cumulative CPU time: 10 seconds 920 msec
Ended Job = job_1722119975506_0040
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 3   Cumulative CPU: 47.1 sec   HDFS Read: 592486965 HDFS Write: 59146 SUCCESS
Stage-Stage-2: Map: 1  Reduce: 1   Cumulative CPU: 10.92 sec   HDFS Read: 67333 HDFS Write: 103 SUCCESS
Total MapReduce CPU Time Spent: 58 seconds 20 msec
OK
ATL
Time taken: 96.607 seconds, Fetched: 1 row(s)
hive (airlineanalytics)> 
