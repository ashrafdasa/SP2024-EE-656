
 
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
            
            MRStep(
                mapper=self.mapper3,
                reducer=self.reducer3),
            ]
    def mapper(self, _, line):
        uniqId = "0"
        tbleName = ""
        fields = line.split('\t') 
        if(len(fields) == 4): 
            tbleName = "A" #"u.data"
            uniqId = fields[1]  
            yield uniqId,(tbleName,1)
        else:
            fields = line.split('|') 
            tbleName = "B"  # u.item
            uniqId = fields[0]
            movieName = fields[1]  
            yield uniqId,(tbleName,movieName)
         
    def reducer(self, key, values): 
        records = list(values)
        a_records = [v for v in records if v[0] == 'A']
        b_records = [v for v in records if v[0] == 'B'] 
        for a_record in a_records: # Perform the left join
            if b_records:
                for b_record in b_records:
                    yield key, (str(a_record[1]) + b_record[1])
            else:
                pass
                #yield key, (a_record[1] + [None])
         
            
    def mapper2(self, id, name):  
        yield name,1 
    def reducer2(self, key, values):  
        records = list(values)
        records = np.sort( np.array(records) )
        yield key, sum(values) 

    def mapper3(self, key, value):
        # zfill(): Fills the string with zeros until it is of desired length
        yield "", str(value).zfill(10)+key
    def reducer3(self, key, values):
        # to output the list in descending order in the number of suppliers
        # values = sorted(values, reverse=True)
        for val in values:
            yield int(val[:10]), val[10:]       

if __name__ == '__main__': 
    solution.run()  
    