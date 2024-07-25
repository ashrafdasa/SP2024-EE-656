
 
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
        if(int(movie_id) == 1):
            yield 1,float(rating)
    def reducer(self, key, values): 
        readings = list(values) 
        yield key,np.average(readings)
  
if __name__ == '__main__': 
    solution.run()  
    