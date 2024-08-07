
import os
os.chdir("pywork/mapperWork/assignment-2/")
withHadoop =   "-r hadoop"

# a. Count the number of rows in each table.
shellCommand = "python3 map-reduce_hadoop_a.py u.item "+ withHadoop  
os.system(shellCommand)


# e. List the top 5 busiest airports by the number of departures.
shellCommand = "python3 map-reduce_hadoop_e.py u.item "+ withHadoop  
os.system(shellCommand)

# f. Find the total departure delay for each airline, along with the airline name.
shellCommand = "python3 map-reduce_hadoop_f.py u.item "+ withHadoop  
os.system(shellCommand)

# h. Find the top 5 flights with the longest arrival delays, including airline name and destination airport name.
shellCommand = "python3 map-reduce_hadoop_h.py u.item "+ withHadoop  
os.system(shellCommand)


# i. Identify the airline with the most flights arriving at a specific airport.
shellCommand = "python3 map-reduce_hadoop_i.py u.item "+ withHadoop  
os.system(shellCommand)
