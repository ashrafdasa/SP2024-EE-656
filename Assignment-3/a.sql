Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 1
2024-08-03 16:08:39,040 Stage-1 map = 0%,  reduce = 0%
2024-08-03 16:09:39,937 Stage-1 map = 0%,  reduce = 0%
2024-08-03 16:09:50,254 Stage-1 map = 33%,  reduce = 0%, Cumulative CPU 10.14 sec
2024-08-03 16:09:52,400 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 29.82 sec
2024-08-03 16:09:58,791 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 33.17 sec
MapReduce Total cumulative CPU time: 33 seconds 170 msec
Ended Job = job_1722119975506_0001
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 1   Cumulative CPU: 33.17 sec   HDFS Read: 592472832 HDFS Write: 107 SUCCESS
Total MapReduce CPU Time Spent: 33 seconds 170 msec
OK
5819415
Time taken: 106.734 seconds, Fetched: 1 row(s)
hive> show tables;
OK
airlines
airports
flights
Time taken: 0.104 seconds, Fetched: 3 row(s)
hive> set hiveconf:hive.cli.print.current.db=true;
