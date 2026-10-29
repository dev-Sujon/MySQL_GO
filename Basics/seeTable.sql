use master
go


-- Display table names
select table_name as Table_Name from INFORMATION_SCHEMA.TABLES where table_type = 'BASE TABLE' 
union ALL
-- Display total count of tables
select concat('Total Tables: ', count(*)) from information_schema.tables where table_type = 'BASE TABLE'

select * from Buyers;
select * from Brands;
select * from Styles;
select * from BrandwiseContribution;
select * from DatewiseBuyerContribution;
select * from CostingMISReport;