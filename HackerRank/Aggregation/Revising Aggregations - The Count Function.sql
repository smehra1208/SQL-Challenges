-- Challenge: Revising Aggregations - The Count Function
-- Query a count of the number of cities in CITY having a Population larger than 100,000
-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem

select count(*)
	from CITY
where POPULATION > 100000;