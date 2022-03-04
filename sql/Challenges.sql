-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
select 
    c.hacker_id as id,
    h.name as name, 
    count(c.challenge_id) as total
from challenges as c
left join hackers as h on (h.hacker_id = c.hacker_id)
group by c.hacker_id, h.name
having 
    total = (
        select max(temp1.total)
        from (
            select hacker_id, count(challenge_id) AS total 
            from challenges
            group by hacker_id
            order by total
        ) as temp1
    )
    or total in (
        select temp2.total
        from(
            select hacker_id, count(challenge_id) AS total 
            from challenges
            group by hacker_id
            order by total desc
        ) AS temp2
        group by temp2.total 
        having count(temp2.total) = 1
    )
order by total desc, id

