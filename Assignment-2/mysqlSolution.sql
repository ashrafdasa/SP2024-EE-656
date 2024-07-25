SET GLOBAL local_infile=1;
SET GLOBAL log_bin_trust_function_creators = 1;
use Assignment2;

DROP TABLE IF EXISTS u_data ;
CREATE TABLE u_data (user_id INT,movie_id int, rating int, timestamp int); 
LOAD DATA LOCAL INFILE 'C:/Users/xu7719/Downloads/ee-egr/EE-656/Assignment-2/u.data' INTO TABLE u_data  FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n'; 

DROP TABLE IF EXISTS u_user ;
CREATE TABLE u_user (user_id INT,age int, gender CHAR, profession VARCHAR(255),zip_code VARCHAR(255) ); 
LOAD DATA LOCAL INFILE 'C:/Users/xu7719/Downloads/ee-egr/EE-656/Assignment-2/u.user' INTO TABLE u_user  FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n'; 

DROP TABLE IF EXISTS u_item ;
CREATE TABLE u_item (movie_id INT,movie_title VARCHAR(255),movieDate VARCHAR(255), unused_field CHAR, url VARCHAR(255),f0 INT,f1 INT,f2 INT,f3 INT,f4 INT,f5 INT,f6 INT,f7 INT
																						,f8 INT,f9 INT,f10 INT,f11 INT,f12 INT,f13 INT,f14 INT
                                                                                        ,f15 INT,f16 INT,f17 INT,f18 INT ); 
LOAD DATA LOCAL INFILE 'C:/Users/xu7719/Downloads/ee-egr/EE-656/Assignment-2/u.item' INTO TABLE u_item  FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n'; 
 
  
DROP TABLE IF EXISTS u_genre ;
CREATE TABLE u_genre (genre_name varchar(255),genre_id INT); 
LOAD DATA LOCAL INFILE 'C:/Users/xu7719/Downloads/ee-egr/EE-656/Assignment-2/u.genre' INTO TABLE u_genre  FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n'; 

 

#	1. Find the total number of movies in the dataset. 
SELECT COUNT(movie_id) FROM u_item;

#	2. List all movie ids with a rating higher than 4.5. 
SELECT COUNT(user_id) FROM u_data WHERE rating > 4.5;

#	3. Count the number of users who have rated movies. 
SELECT COUNT(user_id) from (SELECT DISTINCT(user_id) FROM u_data) a ;

#	4. Find the average rating of the movie with movie_id = 1. 
SELECT AVG(rating) FROM u_data WHERE movie_id = 1;

#	5. List all users who have rated more than 100 movies. 
SELECT tempUser.user_id,tempUser.theCount  FROM (
SELECT user_id,COUNT(user_id) theCount FROM u_data group by user_id) tempUser
WHERE theCount  > 100;
 
#	6. List all unique genres available in the dataset. 
SELECT * FROM u_genre;

#	7. Find the total number of ratings given by users.
SELECT COUNT(user_id) FROM u_data;
  
#	8. Find the top 5 highest-rated movies. 
SELECT ratedMovie.movie_id,movie_title,theCount FROM (
SELECT movie_id,count(movie_id) theCount FROM u_data group by movie_id) ratedMovie
LEFT JOIN u_item on ratedMovie.movie_id = u_item.movie_id
ORDER BY theCount DESC
LIMIT 5;
 
#	9. Count the number of ratings given by female users. 
SELECT count(user_id) FROM u_data where user_id in (
SELECT user_id FROM u_user where gender = 'F');

 
#	10. Find the average rating given by all users. 
SELECT avg(rating) FROM u_data;
 

#	11. Calculate the average rating given by students. 
SELECT avg(rating) FROM u_data where user_id in (
SELECT user_id FROM u_user where profession = 'student');
 
#	12. Calculate the average rating given by users aged between 20 and 30. 
SELECT avg(rating) FROM u_data where user_id in (
SELECT user_id FROM u_user where age > 20 and age < 30);
 
#	13. List the top 5 users who have given the most ratings. 
select * from 
(select user_id,count(user_id) theCount from u_data group by user_id) ratedUser
ORDER BY theCount DESC
LIMIT 5;

#	14. Find the most popular genre based on the number of ratings. 
DROP FUNCTION IF EXISTS getGenreName ;
DELIMITER //
CREATE FUNCTION getGenreName(genreID INT,genreStatus int) RETURNS VARCHAR(255)
BEGIN 
	DECLARE genreName VARCHAR(20);
	IF genreStatus < 1 THEN RETURN ''; 
    END IF;
    SELECT genre_name INTO genreName FROM u_genre WHERE genre_id = genreID LIMIT 1;
  RETURN genreName;
END;//
DELIMITER ;

SELECT getGenreName(7,1);
SELECT getGenreName(12,1);
SELECT getGenreName(8,0);
     
SELECT mostRatedMovieID.movie_id,u_item.movie_title
								,getGenreName(0,u_item.f0) f0
								,getGenreName(1,u_item.f1) f1
                                ,getGenreName(2,u_item.f2) f2
                                ,getGenreName(3,u_item.f3) f3
                                ,getGenreName(4,u_item.f4) f4
                                ,getGenreName(5,u_item.f5) f5
                                ,getGenreName(6,u_item.f6) f6
                                ,getGenreName(7,u_item.f7) f7
                                ,getGenreName(8,u_item.f8) f8
                                ,getGenreName(9,u_item.f9) f9
                                ,getGenreName(10,u_item.f10) f10
                                ,getGenreName(11,u_item.f11) f11
                                ,getGenreName(12,u_item.f12) f12
                                ,getGenreName(13,u_item.f13) f13
                                ,getGenreName(14,u_item.f14) f14
                                ,getGenreName(15,u_item.f15) f15
                                ,getGenreName(16,u_item.f16) f16
                                ,getGenreName(17,u_item.f17) f17
                                ,getGenreName(18,u_item.f18) f18 FROM 	
	(SELECT movie_id,count(movie_id) theCount FROM u_data group by movie_id ORDER BY theCount DESC LIMIT 1) mostRatedMovieID
LEFT JOIN u_item on mostRatedMovieID.movie_id= u_item.movie_id;

 

#	15. Find the user who has given the lowest average rating and list their ratings. 

SELECT user_id,movie_title FROM u_data 
LEFT JOIN u_item on u_data.movie_id = u_item.movie_id
where u_data.user_id in  (
SELECT user_id from (SELECT user_id,avg(rating) avgRating FROM u_data group by user_id ORDER BY avgRating ASC LIMIT 1) lowestRatingByUser);
 
 

#	16. Find all movies that have a rating higher than the average rating of all movies
SELECT * FROM u_data WHERE rating > (SELECT avg(rating) FROM u_data)

 