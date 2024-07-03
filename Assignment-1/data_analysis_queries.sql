# a. List All Airlines 
SELECT * FROM airlines;

# b. Count the Number of Airports in Each Country. 
SELECT country,COUNT(id) theCount FROM airports 
	GROUP BY country;

# c. Find Flights with a Duration Longer than 5 Hours. 
SELECT * FROM flights WHERE AIR_TIME > 5;

# d. Find the Top 10 Longest Flights by Duration. 
SELECT * FROM flights 
	ORDER BY AIR_TIME DESC 
	LIMIT 10;


# e. What is the IATA_CODE for the airline that had the greatest number of flights in 2015? 
SELECT airline, COUNT(airline) as theCount FROM flights 
	WHERE year = 2015 
	GROUP BY airline 
	ORDER BY theCount DESC 
	LIMIT 1;
 
 
# f. What is the name of the airline that had the greatest number of flights in 2015?
SELECT airlines.name, COUNT(airlines.name) as theCount FROM flights 
	LEFT JOIN airlines ON flights.airline = airlines.id 
	WHERE year = 2015 
	GROUP BY airlines.name 
	ORDER BY theCount DESC 
	LIMIT 1;

# g. ON which day of the week were there the greatest number of flights? 
SELECT day_of_week,COUNT(day_of_week) theCount FROM flights 
	GROUP BY day_of_week 
    ORDER BY theCount DESC 
    LIMIT 1;


# h. ON which day of the week was there the least number of flights?
SELECT day_of_week,COUNT(day_of_week) theCount FROM flights 
	GROUP BY day_of_week 
	ORDER BY theCount ASC 
	LIMIT 1;


# i. ON which day of the year 2015 did Delta Airlines have the greatest number of flights?
SELECT day_of_week,COUNT(day_of_week) theCount FROM flights 
	WHERE airline in ( SELECT ID FROM airlines WHERE NAME LIKE 'delta %' ) 
	AND year = 2015 
	GROUP BY day_of_week 
	ORDER BY theCount DESC 
	LIMIT 1;


# j. What is the name of the airline that had the least number of flights during 2015?
SELECT name,COUNT(name) theCount FROM flights 
  LEFT JOIN airlines ON flights.airline = airlines.id 
  WHERE year = 2015 
  GROUP BY name 
  ORDER BY theCount ASC 
  LIMIT 1;
 
 
# k. Which airline had the greatest average "departure delay" times? 
	# STEP 1: SET NULLS TO BE ZEROS : 
	UPDATE flights SET departure_delay = 0 WHERE ISNULL(departure_delay) = 1 ; 
 
# STEP 2: ANSWER k.Which airline had the greatest average "departure delay" times? 
SELECT airlines.name,avg(departure_delay) theAvg FROM flights 
	LEFT JOIN airlines ON flights.airline = airlines.id 
	GROUP BY airlines.name 
	ORDER BY theAvg ASC 
    LIMIT 1;
  
  
## l. Which ten airports were the most frequent destinatiON airport? 
SELECT airports.name,COUNT(airports.name) theCount FROM flights 
  LEFT JOIN airports ON flights.destination_airport = airports.id 
  GROUP BY airports.name 
  ORDER BY theCount DESC 
  LIMIT 10;
  
# m. Which ten airports WHERE the most frequent originating flights?
SELECT airports.name,COUNT(airports.name) theCount FROM flights 
	LEFT JOIN airports ON flights.origin_airport = airports.id 
	GROUP BY airports.name 
	ORDER BY theCount DESC 
	LIMIT 10;
  
  
  
# n. Which airline had the greatest percentage of "departure delay" flights? 
SELECT name , SUM(isDelayed)/COUNT(isDelayed) thePercentage FROM 
  (SELECT name, departure_delay, 
		CASE 
			WHEN departure_delay < 0 THEN 1 
			ELSE 0 END isDelayed 
		FROM flights 
		LEFT JOIN airlines ON airline = airlines.id 
		) AS isDelayedTble 
	GROUP BY name 
	ORDER BY thePercentage DESC 
	LIMIT 10;
 
 

#o. Find All Airports in the State of California. 
SELECT * FROM airports WHERE state = 'CA';

# p. List All Flights with a Distance Greater Than 1000 Miles.
SELECT * FROM flights WHERE distance > 1000 ;


#q. Top 5 Airlines with Most Flights.
SELECT airlines.name , COUNT(airlines.name) theCount FROM flights 
  LEFT JOIN airlines ON flights.airline = airlines.id 
  GROUP BY airlines.name 
  ORDER BY theCount DESC 
  LIMIT 5;


# r. Total Number of Flights FROM Each Airport. 
SELECT airports.name,COUNT(airports.name) theCount FROM flights 
  LEFT JOIN airports ON flights.origin_airport = airports.id 
  GROUP BY airports.name 
  ORDER BY theCount DESC;

# s. Average Flight DuratiON for Each Airline. 
SELECT airlines.name,avg(AIR_TIME) theAvg FROM flights 
  LEFT JOIN airlines ON flights.airline = airlines.id 
  GROUP BY airlines.name 
  ORDER BY theAvg DESC;

# t. Top 5 Longest Flights by Distance. 
SELECT * FROM flights ORDER BY distance DESC LIMIT 5

  