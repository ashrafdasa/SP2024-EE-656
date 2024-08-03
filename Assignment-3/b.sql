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

#################################################################

hive (airlineanalytics)> select * from airlines limit 10;
OK
UA	United Air Lines Inc.
AA	American Airlines Inc.
US	US Airways Inc.
F9	Frontier Airlines Inc.
B6	JetBlue Airways
OO	Skywest Airlines Inc.
AS	Alaska Airlines Inc.
NK	Spirit Air Lines
WN	Southwest Airlines Co.
DL	Delta Air Lines Inc.
Time taken: 0.205 seconds, Fetched: 10 row(s)



#################################################################

hive (airlineanalytics)> select * from airports limit 10;
OK
ABE	Lehigh Valley International Airport	Allentown	PA	USA	40.65236	-75.4404
ABI	Abilene Regional Airport	Abilene	TX	USA	32.41132	-99.6819
ABQ	Albuquerque International Sunport	Albuquerque	NM	USA	35.04022	-106.60919
ABR	Aberdeen Regional Airport	Aberdeen	SD	USA	45.44906	-98.42183
ABY	Southwest Georgia Regional Airport	Albany	GA	USA	31.53552	-84.19447
ACK	Nantucket Memorial Airport	Nantucket	MA	USA	41.25305	-70.06018
ACT	Waco Regional Airport	Waco	TX	USA	31.61129	-97.23052
ACV	Arcata Airport	Arcata/Eureka	CA	USA	40.97812	-124.10862
ACY	Atlantic City International Airport	Atlantic City	NJ	USA	39.45758	-74.57717
ADK	Adak Airport	Adak	AK	USA	51.87796	-176.64603
Time taken: 0.198 seconds, Fetched: 10 row(s)
hive (airlineanalytics)> 


#################################################################
hive (airlineanalytics)> select * from flights limit 10;
OK
2015	1	1	4	AS        	98	N407AS	ANC	SEA	5	2354	-11	21	15	205	194	169	1448	404	4	430	408	-22	0	0	          	          	          	          	          	          
2015	1	1	4	AA        	2336	N3KUAA	LAX	PBI	10	2	-8	12	14	280	279	263	2330	737	4	750	741	-9	0	0	          	          	          	          	          	          
2015	1	1	4	US        	840	N171US	SFO	CLT	20	18	-2	16	34	286	293	266	2296	800	11	806	811	5	0	0	          	          	          	          	          	          
2015	1	1	4	AA        	258	N3HYAA	LAX	MIA	20	15	-5	15	30	285	281	258	2342	748	8	805	756	-9	0	0	          	          	          	          	          	          
2015	1	1	4	AS        	135	N527AS	SEA	ANC	25	24	-1	11	35	235	215	199	1448	254	5	320	259	-21	0	0	          	          	          	          	          	          
2015	1	1	4	DL        	806	N3730B	SFO	MSP	25	20	-5	18	38	217	230	206	1589	604	6	602	610	8	0	0	          	          	          	          	          	          
2015	1	1	4	NK        	612	N635NK	LAS	MSP	25	19	-6	11	30	181	170	154	1299	504	5	526	509	-17	0	0	          	          	          	          	          	          
2015	1	1	4	US        	2013	N584UW	LAX	CLT	30	44	14	13	57	273	249	228	2125	745	8	803	753	-10	0	0	          	          	          	          	          	          
2015	1	1	4	AA        	1112	N3LAAA	SFO	DFW	30	19	-11	17	36	195	193	173	1464	529	3	545	532	-13	0	0	          	          	          	          	          	          
2015	1	1	4	DL        	1173	N826DN	LAS	ATL	30	33	3	12	45	221	203	186	1747	651	5	711	656	-15	0	0	          	          	          	          	          	          
Time taken: 2.317 seconds, Fetched: 10 row(s)
hive (airlineanalytics)> 


