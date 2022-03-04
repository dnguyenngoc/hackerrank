-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select temp.id, temp.name, sum(temp.score) as total
from 
(
    select 
        s.hacker_id as id, 
        h.name as name, 
        max(s.score) as score
    from submissions as s
    left join hackers as h on (h.hacker_id = s.hacker_id)
    group by s.hacker_id, h.name, s.challenge_id
) temp 
group by temp.id, temp.name 
having total != 0
order by total desc, temp.id asc
