-- Challenge: Weather Observation Station 16
-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-16/problem

select round(min(LAT_N),4)
	from STATION
where LAT_N > 38.7780;