-- Challenge: Weather Observation Station 12
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem

select distinct CITY
    from STATION
where left(CITY,1) not in ('a','e','i','o','u')
      and
      right(CITY,1) not in ('a','e','i','o','u');