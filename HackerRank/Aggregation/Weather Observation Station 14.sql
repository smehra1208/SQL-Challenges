-- Challenge: Weather Observation Station 14
-- Query the greatest value Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
-- hhttps://www.hackerrank.com/challenges/weather-observation-station-14/problem

select round(max(LAT_N),4) as greatest_northern_latitude
    from STATION
where LAT_N < 137.2345;