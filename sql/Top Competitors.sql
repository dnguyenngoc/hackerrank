
--https://www.hackerrank.com/challenges/full-score/problem
select 
        h.hacker_id, 
        h.name 
from submissions as s
inner join challenges as c on (c.challenge_id = s.challenge_id) --inner lay phan giao
inner join difficulty as d on (d.difficulty_level = c.difficulty_level)
inner join hackers as h on (h.hacker_id = s.hacker_id)
where
    s.score = d.score 
    and d.difficulty_level = c.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc