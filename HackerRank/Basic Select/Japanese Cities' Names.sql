-- Challenge: Japanese Cities' Names
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japanese-cities-name/problem

select name
    from CITY
where COUNTRYCODE = 'JPN';