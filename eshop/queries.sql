-- List users and the number of their favorites

-- Inner join 
select fullname, count(pid) as cnt 
from user, favourites 
where user.id = favourites.uid
group by fullname

-- Alternative syntax
select fullname, count(pid) as cnt 
from user inner join favourites 
on user.id = favourites.uid
group by fullname

-- Left outer join (includes all users, even if the have no favorites)
select fullname, count(pid) as cnt 
from user left join favourites 
on user.id = favourites.uid
group by fullname

-- List products and the number of times they have been added to favorites
select name, count(pid) as cnt 
from product left join favourites 
on product.id = favourites.pid
group by name
