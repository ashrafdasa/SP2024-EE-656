

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


######################  d. Find the top 5 flights with the longest arrival delays. #########################


hive (airlineanalytics)> SELECT * FROM flights WHERE ISNULL(departure_delay)!=false ORDER BY departure_delay ASC LIMIT 5;
Query ID = hadoop_20240803201720_6c274e45-c94f-4473-8d95-eda38258826a
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0016, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0016/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0016
Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 1
2024-08-03 20:17:53,210 Stage-1 map = 0%,  reduce = 0%
2024-08-03 20:18:19,081 Stage-1 map = 33%,  reduce = 0%, Cumulative CPU 41.85 sec
2024-08-03 20:18:23,724 Stage-1 map = 44%,  reduce = 0%, Cumulative CPU 47.67 sec
2024-08-03 20:18:24,943 Stage-1 map = 56%,  reduce = 0%, Cumulative CPU 47.67 sec
2024-08-03 20:18:33,126 Stage-1 map = 78%,  reduce = 0%, Cumulative CPU 61.89 sec
2024-08-03 20:18:35,404 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 64.75 sec
2024-08-03 20:18:39,910 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 73.75 sec
MapReduce Total cumulative CPU time: 1 minutes 13 seconds 750 msec
Ended Job = job_1722119975506_0016
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 1   Cumulative CPU: 73.75 sec   HDFS Read: 592479077 HDFS Write: 946 SUCCESS
Total MapReduce CPU Time Spent: 1 minutes 13 seconds 750 msec
OK
2015	11	27	5	WN        	4200	N399WN	DAL	AMA	855	NULL	NULL	NULL	NULL	70	NULL	NULL	323	NULL	NULL	1005	NULL	NULL	0	1	B         	          	          	          	          	          
2015	11	27	5	WN        	4044		LBB	DAL	745	NULL	NULL	NULL	NULL	65	NULL	NULL	293	NULL	NULL	850	NULL	NULL	0	1	B         	          	          	          	          	          
2015	11	27	5	AA        	1224	N504AA	MCI	DFW	733	NULL	NULL	NULL	NULL	112	NULL	NULL	460	NULL	NULL	925	NULL	NULL	0	1	A         	          	          	          	          	          
2015	12	31	4	AA        	1042	N870AA	SAN	MIA	2210	NULL	NULL	NULL	NULL	277	NULL	NULL	2267	NULL	NULL	547	NULL	NULL	0	1	A         	          	          	          	          	          
2015	11	27	5	WN        	4091	N7727A	ICT	DAL	705	NULL	NULL	NULL	NULL	75	NULL	NULL	333	NULL	NULL	820	NULL	NULL	0	1	B         	          	          	          	          	          
Time taken: 83.611 seconds, Fetched: 5 row(s)
hive (airlineanalytics)> 

