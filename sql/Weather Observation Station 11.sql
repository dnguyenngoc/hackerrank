-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
select distinct(city) 
from station 
where 
left(city,1) not in ('u', 'e', 'o', 'a', 'i') 
or right(city,1) not in ('u', 'e', 'o', 'a', 'i')
