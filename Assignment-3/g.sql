
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





########################  g. List the top 5 busiest airports by number of departures, along with airport names.   ############

  
hive (airlineanalytics)> select ORIGIN_AIRPORT,name,count(ORIGIN_AIRPORT) theCount from flights left join airports on flights.ORIGIN_AIRPORT = airports.id group by ORIGIN_AIRPORT,name order by theCount DESC LIMIT 5;
Query ID = hadoop_20240806005313_088f15c2-cb96-466f-a6a3-550b72b1fd01
Total jobs = 2
2024-08-06 00:53:25	Dump the side-table for tag: 1 with group count: 322 into file: file:/tmp/hive_io/hadoop/24ed1e66-462f-406c-812c-b015ef7bab33/hive_2024-08-06_00-53-13_132_324264376166436498-1/-local-10006/HashTable-Stage-2/MapJoin-mapfile31--.hashtable
2024-08-06 00:53:25	Uploaded 1 File to: file:/tmp/hive_io/hadoop/24ed1e66-462f-406c-812c-b015ef7bab33/hive_2024-08-06_00-53-13_132_324264376166436498-1/-local-10006/HashTable-Stage-2/MapJoin-mapfile31--.hashtable (18300 bytes)
2024-08-06 00:53:25	End of local task; Time Taken: 2.829 sec.
Execution completed successfully
MapredLocal task succeeded
Launching Job 1 out of 2
Number of reduce tasks not specified. Estimated from input data size: 3
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0025, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0025/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0025
Hadoop job information for Stage-2: number of mappers: 3; number of reducers: 3
2024-08-06 00:53:39,821 Stage-2 map = 0%,  reduce = 0%
2024-08-06 00:53:55,179 Stage-2 map = 33%,  reduce = 0%, Cumulative CPU 8.94 sec
2024-08-06 00:54:00,536 Stage-2 map = 56%,  reduce = 0%, Cumulative CPU 35.84 sec
2024-08-06 00:54:07,238 Stage-2 map = 78%,  reduce = 0%, Cumulative CPU 42.87 sec
2024-08-06 00:54:08,402 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 43.64 sec
2024-08-06 00:54:11,967 Stage-2 map = 100%,  reduce = 67%, Cumulative CPU 52.42 sec
2024-08-06 00:54:13,011 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 56.82 sec
MapReduce Total cumulative CPU time: 56 seconds 820 msec
Ended Job = job_1722119975506_0025
Launching Job 2 out of 2
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0026, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0026/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0026
Hadoop job information for Stage-3: number of mappers: 1; number of reducers: 1
2024-08-06 00:54:32,281 Stage-3 map = 0%,  reduce = 0%
2024-08-06 00:54:39,835 Stage-3 map = 100%,  reduce = 0%, Cumulative CPU 4.26 sec
2024-08-06 00:54:48,233 Stage-3 map = 100%,  reduce = 100%, Cumulative CPU 8.04 sec
MapReduce Total cumulative CPU time: 8 seconds 40 msec
Ended Job = job_1722119975506_0026
MapReduce Jobs Launched: 
Stage-Stage-2: Map: 3  Reduce: 3   Cumulative CPU: 56.82 sec   HDFS Read: 592500552 HDFS Write: 26584 SUCCESS
Stage-Stage-3: Map: 1  Reduce: 1   Cumulative CPU: 8.04 sec   HDFS Read: 35468 HDFS Write: 391 SUCCESS
Total MapReduce CPU Time Spent: 1 minutes 4 seconds 860 msec
OK
ATL	Hartsfield-Jackson Atlanta International Airport	346836
ORD	Chicago O'Hare International Airport	285884
DFW	Dallas/Fort Worth International Airport	239551
DEN	Denver International Airport	196055
LAX	Los Angeles International Airport	194673
Time taken: 97.3 seconds, Fetched: 5 row(s)
hive (airlineanalytics)> 
