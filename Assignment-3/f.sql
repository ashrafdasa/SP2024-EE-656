
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





########################   f. Find the total departure delay for each airline, along with the airline name.   ############

hive (airlineanalytics)> SELECT airline,name,sum(departure_delay) theCount from flights left join airlines on flights.airline = airlines.id group by airline,name;
Query ID = hadoop_20240803211347_47f6bb16-9d4f-4b56-a048-14a6a83d45f2
Total jobs = 1
2024-08-03 21:14:03	Starting to launch local task to process map join;	maximum memory = 239075328
2024-08-03 21:14:06	Dump the side-table for tag: 1 with group count: 14 into file: file:/tmp/hive_io/hadoop/24ed1e66-462f-406c-812c-b015ef7bab33/hive_2024-08-03_21-13-48_040_4590744288530808428-1/-local-10005/HashTable-Stage-2/MapJoin-mapfile11--.hashtable
Execution completed successfully
MapredLocal task succeeded
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 3
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0021, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0021/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0021
Hadoop job information for Stage-2: number of mappers: 3; number of reducers: 3
2024-08-03 21:14:29,637 Stage-2 map = 0%,  reduce = 0%
2024-08-03 21:14:52,417 Stage-2 map = 33%,  reduce = 0%, Cumulative CPU 11.91 sec
2024-08-03 21:15:06,241 Stage-2 map = 44%,  reduce = 0%, Cumulative CPU 49.08 sec
2024-08-03 21:15:08,636 Stage-2 map = 56%,  reduce = 0%, Cumulative CPU 51.62 sec
2024-08-03 21:15:19,065 Stage-2 map = 78%,  reduce = 4%, Cumulative CPU 66.14 sec
2024-08-03 21:15:20,239 Stage-2 map = 100%,  reduce = 4%, Cumulative CPU 70.61 sec
2024-08-03 21:15:21,327 Stage-2 map = 100%,  reduce = 48%, Cumulative CPU 73.56 sec
2024-08-03 21:15:25,028 Stage-2 map = 100%,  reduce = 72%, Cumulative CPU 78.68 sec
2024-08-03 21:15:26,106 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 89.81 sec
MapReduce Total cumulative CPU time: 1 minutes 29 seconds 810 msec
Ended Job = job_1722119975506_0021
MapReduce Jobs Launched: 
Stage-Stage-2: Map: 3  Reduce: 3   Cumulative CPU: 89.81 sec   HDFS Read: 592499514 HDFS Write: 991 SUCCESS
Total MapReduce CPU Time Spent: 1 minutes 29 seconds 810 msec
OK
B6        	JetBlue Airways	3026467
NK        	Spirit Air Lines	1840887
VX        	Virgin America	553852
AA        	American Airlines Inc.	6369435
EV        	Atlantic Southeast Airlines	4857338
HA        	Hawaiian Airlines Inc.	36972
MQ        	American Eagle Airlines Inc.	2837908
UA        	United Air Lines Inc.	7355348
US        	US Airways Inc.	1196447
AS        	Alaska Airlines Inc.	306997
DL        	Delta Air Lines Inc.	6427294
F9        	Frontier Airlines Inc.	1205449
OO        	Skywest Airlines Inc.	4517510
WN        	Southwest Airlines Co.	13186520
Time taken: 101.743 seconds, Fetched: 14 row(s)
hive (airlineanalytics)> 
