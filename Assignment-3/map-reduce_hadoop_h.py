



###################  h. Find the top 5 flights with the longest arrival delays, including airline name and destination airport name. ###################  



 
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
        fields = line.split('\t') 
        if(len(fields) == 4): 
            tbleName = "A" #"u.data"
            uniqId = fields[0] 
            yield uniqId,(tbleName,1)
        else:
            fields = line.split('|') 
            tbleName = "B"  # u.user tbl
            gender = fields[2]
            uniqId = fields[0]
            if(gender == 'F'):  
                yield uniqId,(tbleName,gender)
         
    def reducer(self, key, values): 
        records = list(values)
        a_records = [v for v in records if v[0] == 'A']
        b_records = [v for v in records if v[0] == 'B'] 
        for a_record in a_records: # Perform the right join
            if b_records:
                for b_record in b_records:
                    yield key, (str(a_record[1]) + b_record[1])
            
            
    def mapper2(self, id, name):  
        yield name,1 
    def reducer2(self, key, values):   
        yield key, sum(values) 
    

if __name__ == '__main__': 
    solution.run()  
    
