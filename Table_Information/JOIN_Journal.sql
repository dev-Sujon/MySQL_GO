use dbmgerp
go

SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
  --AND TABLE_NAME LIKE '%Journal%'
ORDER BY TABLE_NAME ASC;

------ Account Journal Read SQL --------
select Top 10 * from AccJournalChequeReference;
select Top 10 * from AccJournalDetail;
select Top 10 * from AccJournalMaster;
select Top 10 * from AccJournalType;
select Top 10 * from CmnCompany 

SELECT 
    ajm.CustomCode,
    ajm.Narration,
    ajm.JournalID,
    ajm.JournalDate,
    ajd.SourceReferenceNo,
    ajd.BaseReferenceNo,
    ajd.OfferingRate,
    ajd.DrAmount,
    ajd.DrAmountFC,
    ajd.CrAmount,
    ajd.CrAmountFC,
    cc.CompanyName
FROM AccJournalMaster AS ajm
LEFT JOIN AccJournalDetail AS ajd
    ON ajd.JournalID = ajm.JournalID
LEFT JOIN CmnCompany AS cc
    ON cc.CompanyID = ajm.CompanyID;
	   


