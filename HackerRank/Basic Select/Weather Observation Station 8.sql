-- Challenge: Weather Observation Station 8
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

select distinct CITY
    from STATION
where left(CITY,1) in ('a','e','i','o','u')
      and
      right(CITY,1) in ('a','e','i','o','u');