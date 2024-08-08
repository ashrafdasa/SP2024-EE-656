
###################  f. Find the total departure delay for each airline, along with the airline name. ###################  
  
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
