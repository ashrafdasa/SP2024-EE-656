
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



########################  h.  Find the top 5 flights with the longest arrival delays, including airline name and destination airport name.   ############

hive (airlineanalytics)> select ARRIVAL_DELAY,DESTINATION_AIRPORT,AIRLINE,NAME from flights LEFT JOIN airlines on flights.airline=airlines.id where isnull(ARRIVAL_DELAY)=false order by ARRIVAL_DELAY asc limit 5; 
Query ID = hadoop_20240806015555_7cd1f952-76cf-490c-9b35-4f43c2773ced
Total jobs = 1
Execution completed successfully
MapredLocal task succeeded
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0030, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0030/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0030
Hadoop job information for Stage-2: number of mappers: 3; number of reducers: 1
2024-08-06 01:56:24,462 Stage-2 map = 0%,  reduce = 0%
2024-08-06 01:56:44,026 Stage-2 map = 33%,  reduce = 0%, Cumulative CPU 26.26 sec
2024-08-06 01:56:50,659 Stage-2 map = 56%,  reduce = 0%, Cumulative CPU 48.61 sec
2024-08-06 01:56:59,415 Stage-2 map = 78%,  reduce = 0%, Cumulative CPU 61.98 sec
2024-08-06 01:57:01,538 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 66.31 sec
2024-08-06 01:57:03,713 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 70.61 sec
MapReduce Total cumulative CPU time: 1 minutes 10 seconds 610 msec
Ended Job = job_1722119975506_0030
MapReduce Jobs Launched: 
Stage-Stage-2: Map: 3  Reduce: 1   Cumulative CPU: 70.61 sec   HDFS Read: 592476348 HDFS Write: 341 SUCCESS
Total MapReduce CPU Time Spent: 1 minutes 10 seconds 610 msec
OK
-87	DFW	AA        	American Airlines Inc.
-87	PHX	US        	US Airways Inc.
-82	SEA	AS        	Alaska Airlines Inc.
-81	LAX	UA        	United Air Lines Inc.
-81	12892	VX        	Virgin America
Time taken: 70.858 seconds, Fetched: 5 row(s)
hive (airlineanalytics)> 

