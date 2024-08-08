######################### e. List the top 5 busiest airports by the number of departures. ##############################

from mrjob.job import MRJob
from mrjob.step import MRStep
import numpy as np

class solution(MRJob):  
    def steps(self):
        return [
            MRStep(
                mapper=self.mapper,
                reducer=self.reducer
                ), 
            MRStep( 
                reducer=self.reducer2
                ),  
            ]
    def mapper(self, _, line): 
        fields = line.split(',')  
        Origin_Airport = fields[7]
        yield Origin_Airport,1
         
    def reducer(self, key, values):  
        yield None, (int(sum(values)),key)
               
    def reducer2(self, key, values):  
        self.alist = []
        for value in values: 
            self.alist.append(value)
        
        self.blist = []
        for i in range(5):
            self.blist.append(max(self.alist))
            self.alist.remove(max(self.alist))

        for i in range(5):
            yield self.blist[i]
                
if __name__ == '__main__': 
    solution.run()  






-------------------------------------------------------------------

hadoop@ashraf-VirtualBox:~/pywork/mapperWork/assignment-3$ /bin/python3 /home/hadoop/pywork/mapperWork/assignment-3/map-reduce_assignment-3-MR.py
No configs found; falling back on auto-configuration
No configs specified for inline runner
Creating temp directory /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265
Running step 1 of 2...
Running step 2 of 2...
job output is in /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265/output
Streaming final output from /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265/output...
346836  "ATL"
285884  "ORD"
239551  "DFW"
196055  "DEN"
194673  "LAX"
Removing temp directory /tmp/map-reduce_hadoop_e.hadoop.20240808.031020.501265...


