
###################  i. Identify the airline with the most flights arriving at a specific airport.  ###################  
 
from mrjob.job import MRJob
from mrjob.step import MRStep
import numpy as np

class solution(MRJob):  
    def steps(self):
        return [
            MRStep(
                mapper=self.mapper,
                reducer=self.reducer), 
            MRStep(
                mapper=self.mapper2,
                reducer=self.reducer2),  
            ]
    def mapper(self, _, line):
        uniqId = "0"
        tbleName = ""
        fields = line.split(',') 
        if(len(fields) > 2):  
            tbleName = "A" #flights"
            uniqId = fields[4] 
            depatureDelay = fields[11]
            if depatureDelay is None:
                depatureDelay = 0
            yield uniqId,(tbleName,depatureDelay)
        else: 
            tbleName = "B"  # airlines tbl
            name = fields[1]
            uniqId = fields[0] 
            yield uniqId,(tbleName,name)
         
    def reducer(self, key, values): 
        records = list(values)
        a_records = [v for v in records if v[0] == 'A']
        b_records = [v for v in records if v[0] == 'B'] 
        for a_record in a_records: # Perform the right join
            if b_records:
                for b_record in b_records:
                    if(a_record[1] == ''): 
                        a_record[1] = 0
                    a_record[1] = int(float(a_record[1]))
                    yield b_record[1], a_record[1]
            

    def mapper2(self, key, values):   
        yield key, values 
        

    def reducer2(self, key, values):    
        yield key, sum(values) 

     
if __name__ == '__main__': 
    solution.run() 





----------------------------------------------------------


hadoop@ashraf-VirtualBox:~/pywork/mapperWork/assignment-3$ /bin/python3 /home/hadoop/pywork/mapperWork/assignment-3/map-reduce_assignment-3-MR.py
No configs found; falling back on auto-configuration
No configs specified for inline runner
Creating temp directory /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265
Running step 1 of 2...
Running step 2 of 2...
job output is in /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265/output
Streaming final output from /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265/output...
WN        	1261855
Removing temp directory /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265...

