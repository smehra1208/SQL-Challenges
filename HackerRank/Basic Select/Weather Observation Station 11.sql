-- Challenge: Weather Observation Station 11
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

select distinct CITY
    from STATION
where left(CITY,1) not in ('a','e','i','o','u')
      or 
      right(CITY,1) not in ('a','e','i','o','u');