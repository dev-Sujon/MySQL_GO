use dbmgerp
go
select * from INFORMATION_SCHEMA.tables where table_type = 'base table'

select * from PurPO_Detail
select * from PurPO_Master

select top 10 * from CmnUserInfo;
select top 10 * from CmnUserGender;
select top 10 * from CmnUserLogDetail;
select top 10 * from CmnUserLogMaster;


SELECT
    cui.UserID,
    cui.UserFirstName,
    cui.DateOfBirth,
    cui.EffectiveDate AS JoiningDate,
    culm.UserIP,
    culm.LogInTime,
    culm.LogOutTime
FROM CmnUserInfo AS cui
LEFT JOIN CmnUserLogMaster AS culm
    ON cui.UserID = culm.UserID
WHERE CAST(culm.LogInTime AS DATE) = CAST(GETDATE() AS DATE);

