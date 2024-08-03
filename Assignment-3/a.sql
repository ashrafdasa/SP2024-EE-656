hive (airlineanalytics)> select count(id) from airlines;
Query ID = hadoop_20240803163219_a2226d2a-6d06-4ff9-a7b5-5854bc4fd8a1
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0002, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0002/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0002
Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 1
2024-08-03 16:32:31,461 Stage-1 map = 0%,  reduce = 0%
2024-08-03 16:32:44,874 Stage-1 map = 33%,  reduce = 0%, Cumulative CPU 5.2 sec
2024-08-03 16:32:45,963 Stage-1 map = 67%,  reduce = 0%, Cumulative CPU 13.3 sec
2024-08-03 16:32:47,034 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 21.61 sec
2024-08-03 16:32:52,390 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 25.4 sec
MapReduce Total cumulative CPU time: 25 seconds 400 msec
Ended Job = job_1722119975506_0002
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 1   Cumulative CPU: 25.4 sec   HDFS Read: 592473977 HDFS Write: 107 SUCCESS
Total MapReduce CPU Time Spent: 25 seconds 400 msec
OK
5819415
Time taken: 36.276 seconds, Fetched: 1 row(s)
