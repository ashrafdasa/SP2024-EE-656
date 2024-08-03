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


###################################################################################

  
hive (airlineanalytics)> select count(id) from airlines;
Query ID = hadoop_20240803164708_65789a8e-c2f7-4120-af2f-4b3993bca60f
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0005, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0005/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0005
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2024-08-03 16:47:26,621 Stage-1 map = 0%,  reduce = 0%
2024-08-03 16:47:33,180 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 3.53 sec
2024-08-03 16:47:39,634 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 7.68 sec
MapReduce Total cumulative CPU time: 7 seconds 680 msec
Ended Job = job_1722119975506_0005
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 7.68 sec   HDFS Read: 13525 HDFS Write: 102 SUCCESS
Total MapReduce CPU Time Spent: 7 seconds 680 msec
OK
14
Time taken: 33.847 seconds, Fetched: 1 row(s)
hive (airlineanalytics)> 







#################################################################################

hive (airlineanalytics)> select count(id) from airports;
Query ID = hadoop_20240803165804_5a3958d0-0b08-4f36-9212-aa9fa122abe5
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0006, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0006/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0006
Hadoop job information for Stage-1: number of mappers: 0; number of reducers: 1
2024-08-03 16:58:16,733 Stage-1 map = 0%,  reduce = 0%
2024-08-03 16:58:25,335 Stage-1 map = 0%,  reduce = 100%, Cumulative CPU 3.84 sec
MapReduce Total cumulative CPU time: 3 seconds 840 msec
Ended Job = job_1722119975506_0006
MapReduce Jobs Launched: 
Stage-Stage-1: Reduce: 1   Cumulative CPU: 3.84 sec   HDFS Read: 7134 HDFS Write: 101 SUCCESS
Total MapReduce CPU Time Spent: 3 seconds 840 msec
OK
322
Time taken: 22.571 seconds, Fetched: 1 row(s)


###################################################################################

hive (airlineanalytics)> select count(year) from flights;
Query ID = hadoop_20240803170034_17cfe7ca-06d6-445d-ba6b-59fb4cf1dc80
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0008, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0008/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0008
Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 1
2024-08-03 17:00:46,614 Stage-1 map = 0%,  reduce = 0%
2024-08-03 17:01:00,515 Stage-1 map = 67%,  reduce = 0%, Cumulative CPU 10.85 sec
2024-08-03 17:01:02,605 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 19.56 sec
2024-08-03 17:01:06,873 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 22.8 sec
MapReduce Total cumulative CPU time: 22 seconds 800 msec
Ended Job = job_1722119975506_0008
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 1   Cumulative CPU: 22.8 sec   HDFS Read: 592467325 HDFS Write: 107 SUCCESS
Total MapReduce CPU Time Spent: 22 seconds 800 msec
OK
5819079
Time taken: 35.815 seconds, Fetched: 1 row(s)
hive (airlineanalytics)> 
