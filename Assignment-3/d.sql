

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



hive (airlineanalytics)> SELECT * FROM flights ORDER BY DEPARTURE_DELAY ASC LIMIT 5;
Query ID = hadoop_20240803174444_0fa5ce45-203c-4b2c-b7f5-e926b7225023
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1722119975506_0012, Tracking URL = http://ashraf-VirtualBox:8088/proxy/application_1722119975506_0012/
Kill Command = /home/hadoop/hadoop/bin/mapred job  -kill job_1722119975506_0012
Hadoop job information for Stage-1: number of mappers: 3; number of reducers: 1
2024-08-03 17:44:55,910 Stage-1 map = 0%,  reduce = 0%
2024-08-03 17:45:13,986 Stage-1 map = 33%,  reduce = 0%, Cumulative CPU 9.51 sec
2024-08-03 17:45:22,626 Stage-1 map = 44%,  reduce = 0%, Cumulative CPU 42.0 sec
2024-08-03 17:45:23,749 Stage-1 map = 56%,  reduce = 0%, Cumulative CPU 47.91 sec
2024-08-03 17:45:30,226 Stage-1 map = 78%,  reduce = 0%, Cumulative CPU 59.98 sec
2024-08-03 17:45:31,286 Stage-1 map = 100%,  reduce = 22%, Cumulative CPU 62.34 sec
2024-08-03 17:45:33,410 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 65.85 sec
MapReduce Total cumulative CPU time: 1 minutes 5 seconds 850 msec
Ended Job = job_1722119975506_0012
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 3  Reduce: 1   Cumulative CPU: 65.85 sec   HDFS Read: 592475886 HDFS Write: 946 SUCCESS
Total MapReduce CPU Time Spent: 1 minutes 5 seconds 850 msec
OK
2015	11	27	5	WN        	5432	N792SW	AMA	LAS	710	NULL	NULL	NULL	NULL	140	NULL	NULL	758	NULL	NULL	730	NULL	NULL	0	1	B         	          	          	          	          	          
2015	11	27	5	WN        	4044		LBB	DAL	745	NULL	NULL	NULL	NULL	65	NULL	NULL	293	NULL	NULL	850	NULL	NULL	0	1	B         	          	          	          	          	          
2015	11	27	5	WN        	4200	N399WN	DAL	AMA	855	NULL	NULL	NULL	NULL	70	NULL	NULL	323	NULL	NULL	1005	NULL	NULL	0	1	B         	          	          	          	          	          
2015	12	31	4	AA        	1042	N870AA	SAN	MIA	2210	NULL	NULL	NULL	NULL	277	NULL	NULL	2267	NULL	NULL	547	NULL	NULL	0	1	A         	          	          	          	          	          
2015	11	27	5	WN        	4091	N7727A	ICT	DAL	705	NULL	NULL	NULL	NULL	75	NULL	NULL	333	NULL	NULL	820	NULL	NULL	0	1	B         	          	          	          	          	          
Time taken: 50.709 seconds, Fetched: 5 row(s)
hive (airlineanalytics)> 
