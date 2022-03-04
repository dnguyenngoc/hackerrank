-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
-- vì là phải lấy hết các th -> th có 2 cái cùng power không thể group
-- -> search min follow condition của giá trị đang kiểm tra

select w.id, p.age, w.coins_needed, w.power
from wands as w
left join wands_property as p on (p.code = w.code)
where p.is_evil = 0 
    and w.coins_needed = 
    (
        select min(w1.coins_needed) 
        from 
            wands as w1 
            left join wands_property as p1 on (w1.code = p1.code) 
        where 
            w1.power = w.power  -- với mỗi power and age đang check tìm min của coins_needed
            and p1.age = p.age
    )
order by w.power desc, p.age desc