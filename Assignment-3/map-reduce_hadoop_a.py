

######################### a. Count the number of rows in each table. ##############################
  
from mrjob.job import MRJob
from mrjob.step import MRStep

class solution(MRJob):  
    def steps(self):
        return [
            MRStep(
                mapper=self.mapper,
                reducer=self.reducer)
            ]
    def mapper(self, _, line): 
        yield 0, 1
    def reducer(self, key, values):
        yield key, sum(values)

 

if __name__ == '__main__': 
    solution.run()




--------------------------------------------



hadoop@ashraf-VirtualBox:~/pywork/mapperWork/assignment-3$ /bin/python3 /home/hadoop/pywork/mapperWork/assignment-3/map-reduce_assignment-3-MR.py
No configs found; falling back on auto-configuration
No configs specified for inline runner
Creating temp directory /tmp/map-reduce_hadoop_a.hadoop.20240808.030640.678152
Running step 1 of 1...
job output is in /tmp/map-reduce_hadoop_a.hadoop.20240808.030640.678152/output
Streaming final output from /tmp/map-reduce_hadoop_a.hadoop.20240808.030640.678152/output...
0       15
Removing temp directory /tmp/map-reduce_hadoop_a.hadoop.20240808.030640.678152...
No configs found; falling back on auto-configuration
No configs specified for inline runner
Creating temp directory /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.201272
Running step 1 of 1...
job output is in /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.201272/output
Streaming final output from /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.201272/output...
0       323
Removing temp directory /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.201272...
No configs found; falling back on auto-configuration
No configs specified for inline runner
Creating temp directory /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.831610
Running step 1 of 1...
job output is in /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.831610/output
Streaming final output from /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.831610/output...
0       5819080
Removing temp directory /tmp/map-reduce_hadoop_a.hadoop.20240808.030641.831610...
