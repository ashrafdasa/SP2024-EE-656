
 
from mrjob.job import MRJob
from mrjob.step import MRStep

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
        (user_id,movie_id,rating,_) = line.split('\t') 
        yield user_id,1
    def reducer(self, key, values): 
        yield key,sum(values)

    def mapper2(self, in1, in2): 
        yield 0,1
    def reducer2(self, key, values): 
        yield key,sum(values)

 

if __name__ == '__main__': 
    solution.run()  
    