
import os
os.chdir("pywork/mapperWork/assignment-2/")
withHadoop =   "-r hadoop"


# 1. Find the total number of movies in the dataset. 
shellCommand = "python3 qs/q1.py u.item "+ withHadoop  
###os.system(shellCommand)


# 2. List all movie ids with a rating higher than 4.5.
shellCommand = "python3 qs/q2.py u.data "+ withHadoop  
###os.system(shellCommand)

# 3. Count the number of users who have rated movies.
shellCommand = "python3 qs/q3.py u.data "+ withHadoop  
###os.system(shellCommand)


# 4. Find the average rating of the movie with movie_id = 1.
shellCommand = "python3 qs/q4.py u.data "+ withHadoop  
##os.system(shellCommand)

# 5. List all users who have rated more than 100 movies.
shellCommand = "python3 qs/q5.py u.data "+ withHadoop  
###os.system(shellCommand)

# 6. List all unique genres available in the dataset.
shellCommand = "python3 qs/q6.py u.genre "+ withHadoop  
###os.system(shellCommand)

# 7. Find the total number of ratings given by users. 
shellCommand = "python3 qs/q7.py u.data "+ withHadoop  
###os.system(shellCommand)


# 8. Find the top 5 highest-rated movies.
shellCommand = "python3 qs/q8.py u.data u.item"+ withHadoop  
###os.system(shellCommand)


# 9. Count the number of ratings given by female users.
shellCommand = "python3 qs/q9.py u.data u.user"+ withHadoop  
###os.system(shellCommand)


# 10. Find the average rating given by all users.
shellCommand = "python3 qs/q10.py u.data u.data"+ withHadoop  
os.system(shellCommand)

# 11. Calculate the average rating given by students.
shellCommand = "python3 qs/q11.py u.data u.data"+ withHadoop  
os.system(shellCommand)

# 12. Calculate the average rating given by users aged between 20 and 30.
shellCommand = "python3 qs/q12.py u.data u.data"+ withHadoop  
os.system(shellCommand)


# 13. List the top 5 users who have given the most ratings.
shellCommand = "python3 qs/q13.py u.data u.data"+ withHadoop  
os.system(shellCommand)


# 14. Find the most popular genre based on the number of ratings.
shellCommand = "python3 qs/q14.py u.data u.data"+ withHadoop  
os.system(shellCommand)


# 15. Find the user who has given the lowest average rating and list their ratings.
shellCommand = "python3 qs/q15.py u.data u.data"+ withHadoop  
os.system(shellCommand)

# 16. Find all movies that have a rating higher than the average rating of all movies.
shellCommand = "python3 qs/q16.py u.data u.data"+ withHadoop  
os.system(shellCommand)

