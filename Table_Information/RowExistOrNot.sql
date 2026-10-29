use DBMGERP
go

select t.name as TableName,
	   case 
			when p.rows = 0 then 'No Rows Exist'
			else 'Rows Exist'
	   end as Message
from sys.tables t 
left join sys.partitions p
	on t.object_id = p.object_id
	and p.index_id in (0,1) -- heap or clustered index
group by t.name, p.rows



select * from CmnAddressMaster;

select Distinct AddressId,CustomCode,CompanyID 
From CmnAddressMaster 
Where CreateOn > 2021