-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
select if(grade < 8, null, name), grade, marks
from students join grades
where marks between min_mark and max_mark
order by grade desc, name