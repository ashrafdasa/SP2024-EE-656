
 
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
        (user_id,movie_id,rating,_) = line.split('\t') 
        yield user_id,1 
    def reducer(self, key, values): 
        readings = sum(values) 
        yield key,readings

if __name__ == '__main__': 
    solution.run()  
    