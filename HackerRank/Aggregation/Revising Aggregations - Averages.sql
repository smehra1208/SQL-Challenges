-- Challenge: Revising Aggregations - Averages
-- Query the average population of all cities in CITY where District is California
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

select avg(POPULATION) as AVG_POPULATION
    from CITY
where DISTRICT = 'California';
