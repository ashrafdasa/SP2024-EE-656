 
import os  
withHadoop =  " -r hadoop"


# a. Count the number of rows in each table.
shellCommand = "python3 map-reduce_hadoop_a.py airlines.csv "+ withHadoop  
os.system(shellCommand)

shellCommand = "python3 map-reduce_hadoop_a.py airports.csv "+ withHadoop  
os.system(shellCommand)

shellCommand = "python3 map-reduce_hadoop_a.py flights.csv "+ withHadoop  
os.system(shellCommand)


# e. List the top 5 busiest airports by the number of departures.
shellCommand = "python3 map-reduce_hadoop_e.py flights.csv "+ withHadoop  
# os.system(shellCommand)

#  f. Find the total departure delay for each airline, along with the airline name. 
shellCommand = "python3 map-reduce_hadoop_f.py flights.csv airlines.csv"+ withHadoop  
#os.system(shellCommand)


# h. Find the top 5 flights with the longest arrival delays, including airline name and destination airport name.
shellCommand = "python3 map-reduce_hadoop_h.py flights.csv airlines.csv "+ withHadoop  
os.system(shellCommand)


# i. Identify the airline with the most flights arriving at a specific airport.
shellCommand = "python3 map-reduce_hadoop_i.py flights.csv airlines.csv"+ withHadoop  
os.system(shellCommand)

 
