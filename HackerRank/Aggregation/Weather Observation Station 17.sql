-- Challenge: Weather Observation Station 17
-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem

select round(LONG_W,4)
    from STATION
where LAT_N = (select min(LAT_N)
                    from STATION
                where LAT_N > 38.7780);