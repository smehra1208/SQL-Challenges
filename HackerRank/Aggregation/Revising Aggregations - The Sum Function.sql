-- Challenge: Revising Aggregations - The Sum Function
-- Query the total population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

select sum(POPULATION) as TOTAL_POPULATION
    from CITY
where DISTRICT = 'California';
