-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- manhattan distance d= |y-y'| + |x-x'|
select round((abs(t.c-t.a) + abs(t.d-t.b)), 4)
from 
(select
    min(lat_n) as a,
    min(long_w) as b,
    max(lat_n) as c,
    max(long_w) as d
from station) t