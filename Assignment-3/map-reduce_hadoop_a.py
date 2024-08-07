




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
