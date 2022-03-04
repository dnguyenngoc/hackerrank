-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
select s.city
from station as s
where 
    left(s.city, 1) in ('u','e','o', 'a', 'i') 
    and right(s.city, 1) in ('u','e','o', 'a', 'i')