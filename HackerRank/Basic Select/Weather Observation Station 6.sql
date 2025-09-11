-- Challenge: Weather Observation Station 6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem

select distinct CITY
    from STATION
where CITY like 'a%' 
   or CITY like 'e%'
   or CITY like 'i%'
   or CITY like 'o%'
   or CITY like 'u%';