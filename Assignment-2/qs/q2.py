
 
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
        (user_id,movie_id,rating,_) = line.split('\t') 
        if(float(rating)> 4.5):
            yield 0, 1
    def reducer(self, key, values):
        yield key, sum(values)

 

if __name__ == '__main__': 
    solution.run()  
    