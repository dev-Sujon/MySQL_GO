use DBMGERP
go

-- Count of distinct SampleRequisitionID
SELECT COUNT(DISTINCT SampleRequisitionID) AS FilteredSampleRecords
FROM GrmSampleRequisitionDetails;

-- Total count of records in GrmSampleRequisitionDetails
SELECT COUNT(*) AS TotalSampleRecords
FROM GrmSampleRequisitionDetails;

-- Count of all CustomCode entries
SELECT COUNT(CustomCode) AS TotalCustomCode
FROM YarnDODetail;

-- Count of distinct CustomCode entries
SELECT COUNT(DISTINCT CustomCode) AS UniqueCustomCode
FROM YarnDODetail;

-- Top 10 records from YarnDoDetail
SELECT TOP 10 *
FROM YarnDoDetail;

-- Top 10 records from SparePartsRequisitionDetail
SELECT TOP 10 *
FROM SparePartsRequisitionDetail;

-- Distinct AllocationID and FactoryAllocationID
SELECT DISTINCT AllocationID, FactoryAllocationID
FROM GrmSalesOrderFactoryAllocation;

-- ItemID with CreateOn sorted by date
SELECT ItemID, CreateOn
FROM GrmSalesOrderFactoryAllocation
ORDER BY CreateOn ASC;

-- Count of distinct AllocationID
SELECT COUNT(DISTINCT AllocationID) AS UniqueAllocation
FROM GrmSalesOrderFactoryAllocation;


select * from AccChequeTransectionMaster
select Distinct ChequeTransectionID,TransactionDate From AccChequeTransectionMaster
order by TransactionDate des