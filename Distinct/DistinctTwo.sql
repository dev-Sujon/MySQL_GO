use DBMGERP
go

select top 10 * from AccChequeTransectionMaster
select Distinct UserID, ChequeTransectionID, CustomCode From AccChequeTransectionMaster

SELECT DISTINCT ChequeTransectionTypeID, UserID
FROM AccChequeTransectionMaster;

-- Top 10 unique UserID
SELECT DISTINCT TOP 10 UserID
FROM AccChequeTransectionMaster
ORDER BY UserID ASC;




select Distinct UserID
from AccChequeTransectionMaster
order by UserID asc


-- Count unique CustomerID
SELECT COUNT(DISTINCT CompanyID) AS UniqueCompany
FROM AccChequeTransectionMaster;

SELECT DISTINCT CustomCode, TransactionDate, CostCenterID, CompanyID, CreateOn
FROM AccChequeTransectionMaster
ORDER BY CreateOn ASC;  -- Ensure CreateBy exists in the table

SELECT UserID, COUNT(DISTINCT TransactionDate) AS UniqueCheques
FROM AccChequeTransectionMaster
GROUP BY UserID
ORDER BY UniqueCheques DESC;

