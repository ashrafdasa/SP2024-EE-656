########


hadoop@ashraf-VirtualBox:~$ hdfs dfs -mkdir /user/airlines
hadoop@ashraf-VirtualBox:~$ hdfs dfs -mkdir /user/flights
hadoop@ashraf-VirtualBox:~$ hdfs dfs -mkdir /user/airports
hadoop@ashraf-VirtualBox:~$ hdfs dfs -put /home/hadoop/Downloads/airlines.csv /user/airlines
hadoop@ashraf-VirtualBox:~$ hdfs dfs -put /home/hadoop/Downloads/flights.csv /user/flights
hadoop@ashraf-VirtualBox:~$ hdfs dfs -put /home/hadoop/Downloads/airports.csv /user/airports




#######
a. Count the number of rows in each table.
b. Display the first 10 records from each table.
c. Find the total departure delay for each airline.
d. Find the top 5 flights with the longest arrival delays.
e. List the top 5 busiest airports by the number of departures.
f. Find the total departure delay for each airline, along with the airline name.
g. List the top 5 busiest airports by number of departures, along with airport
names.
h. Find the top 5 flights with the longest arrival delays, including airline name and
destination airport name.
i. Identify the airline with the most flights arriving at a specific airport.
j. List the top 5 airlines with the highest total arrival delays at a specific airport
(e.g., ORD).
3. Answer questions a, e, f, h, and I, from question 3 above, using map-reduce running on
hadoop.
