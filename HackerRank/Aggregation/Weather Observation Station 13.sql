-- Challenge: Weather Observation Station 13
-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem

select round(sum(LAT_N),4) as sum_of_northern_latitudes
    from STATION
where LAT_N > 38.7880 and 
      LAT_N < 137.2345