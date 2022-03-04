--https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

select 
    N, 
    case 
        when P is null then 'Root'
        when N not in (select distinct(P) from bst where P is not null) then 'Leaf'
        else 'Inner'
    end
from bst order by N
