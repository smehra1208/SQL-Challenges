-- Challenge: Population Density Difference
-- Query the difference between the maximum and minimum populations in CITY.
-- https://www.hackerrank.com/challenges/population-density-difference/problem

select 
    max(POPULATION) - min(POPULATION)
    from CITY;
