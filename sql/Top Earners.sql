-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select 
(salary * months) as earnings , count(*) 
from employee 
group by earnings 
order by earnings desc 
limit 1;