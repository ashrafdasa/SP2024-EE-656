
 
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
        fields = line.split('\t') 
        yield "avg",float(fields[2])
        
         
    def reducer(self, key, values): 
        records = list(values)
        np.average(np.array(records))
        yield key, np.average(np.array(records))
         
    

if __name__ == '__main__': 
    solution.run()  
    