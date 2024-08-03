hive> create database airlineanalytics;
hive> user airlineanalytics;



hive (airlineanalytics)> DROP TABLE IF EXISTS airlines ; 
OK
Time taken: 0.025 seconds
hive (airlineanalytics)> create external table airlines(id CHAR(2) ,name VARCHAR(30))
                       > row format delimited
                       > fields terminated by','
                       > location '/user/airlines'
                       > tblproperties('skip.header.line.count' = '1');
OK
Time taken: 0.153 seconds
hive (airlineanalytics)> DROP TABLE IF EXISTS airports ;
OK
Time taken: 0.061 seconds



  
hive (airlineanalytics)> CREATE TABLE airports   (id CHAR(3) , name VARCHAR(255)  , city VARCHAR(255)  ,state VARCHAR(255)  , country VARCHAR(255) , latitude  FLOAT  ,longitude FLOAT  ) 
                       > row format delimited 
                       > fields terminated by','
                       > location '/user/airports'
                       > tblproperties('skip.header.line.count' = '1');
OK
Time taken: 0.735 seconds
hive (airlineanalytics)>  DROP TABLE IF EXISTS flights ;
OK
Time taken: 0.123 seconds


  
hive (airlineanalytics)> CREATE TABLE flights ( YEAR INT, MONTH INT,  DAY INT,  DAY_OF_WEEK INT,  AIRLINE CHAR(10),  
                       >   FLIGHT_NUMBER INT, TAIL_NUMBER VARCHAR(10),  ORIGIN_AIRPORT VARCHAR(10), DESTINATION_AIRPORT VARCHAR(10),  
                       >   SCHEDULED_DEPARTURE INT, DEPARTURE_TIME INT, DEPARTURE_DELAY INT, TAXI_OUT INT, WHEELS_OFF INT, SCHEDULED_TIME INT,  
                       >   ELAPSED_TIME INT,AIR_TIME INT, DISTANCE INT, WHEELS_ON INT, TAXI_IN INT, SCHEDULED_ARRIVAL INT, ARRIVAL_TIME INT,  
                       >   ARRIVAL_DELAY INT, DIVERTED INT,CANCELLED INT, CANCELLATION_REASON CHAR(10), AIR_SYSTEM_DELAY CHAR(10),   
                       >   SECURITY_DELAY CHAR(10),  AIRLINE_DELAY CHAR(10), LATE_AIRCRAFT_DELAY CHAR(10), WEATHER_DELAY CHAR(10) )
                       > row format delimited 
                       > fields terminated by','
                       > location '/user/flights'
                       > tblproperties('skip.header.line.count' = '1');
OK
Time taken: 0.101 seconds
hive (airlineanalytics)> 



