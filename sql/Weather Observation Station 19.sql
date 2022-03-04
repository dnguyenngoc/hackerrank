-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- Euclidean distance d= sqrt((y-y')^2 + (x-x')^2)
select round(sqrt(power((t.c-t.a),2) + power((t.d-t.b),2)), 4)
from 
(select
    min(lat_n) as a,
    min(long_w) as b,
    max(lat_n) as c,
    max(long_w) as d
from station) t