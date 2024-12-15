
select count(Sales_person) as Total_Person , [Location] 
from dbo.people  
group by [Location] 
order by [Location] ASC ;

select count(Sales_person) as Total_Person , [Location] 
from dbo.people  
group by [Location] 
order by [Location] ASC ;

select count(Sales_person) as Total_Person , [Location] , Team
from dbo.people  
where Team ='Jucies' and [Location] ='Paris'
group by [Location] , Team ;

select round(max(cost_per_Box),2) as Max_Cost from dbo.products ;

select count(Product) as Count_of_Product , Category from dbo.products
group by Category 
order by Category ASC ;

select Count(Size) as Count_Large_size , Product from dbo.products
where size='LARGE' or size='SMALL'
group by Product ;

select * from dbo.geo g
left join dbo.sales s
on g.GeoID = s.Geo ;

select * from dbo.geo g
inner join dbo.sales s
on g.GeoID = s.Geo ;

select * from dbo.sales s 
right join dbo.people p
on p.SP_ID = s.Sales_Person ;

select * from dbo.sales s 
Inner join dbo.people p
on p.SP_ID = s.Sales_Person ;

select * from dbo.sales s 
full join dbo.people p
on p.SP_ID = s.Sales_Person ;


select Sales_Person from dbo.sales
intersect
select SP_ID from dbo.people ;


