-- Challenge: Population Census
-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'. Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
-- https://www.hackerrank.com/challenges/asian-population/problem
-- MySQL


select sum(C.POPULATION) as total_population
    from CITY C
join COUNTRY CO 
on C.COUNTRYCODE = CO.CODE 
where CO.CONTINENT = 'ASIA'