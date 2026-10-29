use DBMGERP
go
--'AccBankWiseCOA','AccChequeBook','AccChequeBookDetail','AccChequeStatusLifeCycle','AccChequeStatusList'
select top 10 * from AccBankWiseCOA
select top 10 * from AccChequeBook
select top 10 * from AccChequeBookDetail

SELECT DISTINCT ChequeBookDetailID, ChequeBookID
FROM AccChequeBookDetail;

select * from AccChequeStatusLifeCycle
