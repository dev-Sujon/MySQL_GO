SELECT TOP 5 UserID, COUNT(DISTINCT ChequeNo) AS UniqueCheques
FROM AccChequeTransectionMaster
GROUP BY UserID
ORDER BY UniqueCheques DESC;
