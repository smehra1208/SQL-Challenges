-- Challenge: Weather Observation Station 2
/*
	Query the following two values from the STATION table:
	1. The sum of all values in LAT_N rounded to a scale of  decimal places.
	2. The sum of all values in LONG_W rounded to a scale of  decimal places.
*/
-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem

select 
    round(sum(LAT_N),2) as LAT_SUM,
    round(sum(LONG_W),2) as LONG_SUM
    from STATION;