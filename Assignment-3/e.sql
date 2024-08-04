
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





###################  List the top 5 busiest airports by the number of departures. ###################  



hive (airlineanalytics)> select origin_airport,airports.name,count(origin_airport) theCount from flights LEFT JOIN airports on flights.origin_airport = airports.id  group by origin_airport,name order by theCount DESC LIMIT 5;
Query ID = hadoop_20240803203111_844c7be3-11b0-4b43-9562-c97b4e63bcb4
Total jobs = 2
2024-08-03 20:31:30	Starting to launch local task to process map join;	maximum memory = 239075328
2024-08-03 20:31:40	Dump the side-table for tag: 1 with group count: 322 into file: file:/tmp/hive_io/hadoop/24ed1e66-462f-406c-812c-b015ef7bab33/hive_2024-08-03_20-31-11_836_3555586091826475511-1/-local-10006/HashTable-Stage-2/MapJoin-mapfile01--.hashtable
2024-08-03 20:31:40	Uploaded 1 File to: file:/tmp/hive_io/hadoop/24ed1e66-462f-406c-812c-b015ef7bab33/hive_2024-08-03_20-31-11_836_3555586091826475511-1/-local-10006/HashTable-Stage-2/MapJoin-mapfile01--.hashtable (18300 bytes)
2024-08-03 20:31:40	End of local task; Time Taken: 10.183 sec.
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
Starting Job = job_1722119975506_0018, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0018/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0018
Hadoop job information for Stage-2: number of mappers: 3; number of reducers: 3
2024-08-03 20:32:22,031 Stage-2 map = 0%,  reduce = 0%
2024-08-03 20:32:59,254 Stage-2 map = 33%,  reduce = 0%, Cumulative CPU 53.65 sec
2024-08-03 20:33:12,180 Stage-2 map = 56%,  reduce = 0%, Cumulative CPU 81.47 sec
2024-08-03 20:33:27,187 Stage-2 map = 78%,  reduce = 0%, Cumulative CPU 96.21 sec
2024-08-03 20:33:29,457 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 100.8 sec
2024-08-03 20:33:31,867 Stage-2 map = 100%,  reduce = 44%, Cumulative CPU 105.79 sec
2024-08-03 20:33:35,421 Stage-2 map = 100%,  reduce = 67%, Cumulative CPU 110.99 sec
2024-08-03 20:33:37,850 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 126.74 sec
MapReduce Total cumulative CPU time: 2 minutes 7 seconds 420 msec
Ended Job = job_1722119975506_0018
Launching Job 2 out of 2
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0019, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0019/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0019
Hadoop job information for Stage-3: number of mappers: 1; number of reducers: 1
2024-08-03 20:34:13,633 Stage-3 map = 0%,  reduce = 0%
2024-08-03 20:34:27,694 Stage-3 map = 100%,  reduce = 0%, Cumulative CPU 8.6 sec
2024-08-03 20:34:42,235 Stage-3 map = 100%,  reduce = 100%, Cumulative CPU 16.4 sec
MapReduce Total cumulative CPU time: 16 seconds 400 msec
Ended Job = job_1722119975506_0019
MapReduce Jobs Launched: 
Stage-Stage-2: Map: 3  Reduce: 3   Cumulative CPU: 127.42 sec   HDFS Read: 592500189 HDFS Write: 26584 SUCCESS
Stage-Stage-3: Map: 1  Reduce: 1   Cumulative CPU: 16.4 sec   HDFS Read: 35489 HDFS Write: 391 SUCCESS
Total MapReduce CPU Time Spent: 2 minutes 23 seconds 820 msec
OK
ATL	Hartsfield-Jackson Atlanta International Airport	346836
ORD	Chicago O'Hare International Airport	285884
DFW	Dallas/Fort Worth International Airport	239551
DEN	Denver International Airport	196055
LAX	Los Angeles International Airport	194673
Time taken: 213.07 seconds, Fetched: 5 row(s)
hive (airlineanalytics)> 

