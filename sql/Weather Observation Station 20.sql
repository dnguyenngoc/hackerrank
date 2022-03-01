-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true

select round(temp.lat_n, 4) from
(SELECT (@n := @n + 1) as stt, -- dùng cái này để đánh lại số thứ tự của data sau khi 
       id,                     -- order by lat_n để xđ đc trung vị vì id k phải primary key
       lat_n
FROM station, (SELECT @n := 0) m
ORDER BY lat_n) temp
where temp.stt = (select ceil(count(id)/2) from station)
