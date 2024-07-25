
 
from mrjob.job import MRJob
from mrjob.step import MRStep
import numpy as np

class solution(MRJob):  
    def steps(self):
        return [
            MRStep(
                mapper=self.mapper,
                reducer=self.reducer),
            ]
    def mapper(self, _, line):
        (g_name,g_id) = line.split('|') 
        yield g_name,1 
    def reducer(self, key, values): 
        readings = sum(values) 
        yield key,readings

if __name__ == '__main__': 
    solution.run()  
    