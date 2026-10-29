SELECT
    m.CustomCode,
    d.ItemID,
    im.ItemName,
    m.RequisitionDate,
    m.RequisitionID,
    m.CompanyID,
    c.CompanyName,
    d.CreateBy,
    u.UserFullName
FROM SparePartsRequisitionMaster AS m
INNER JOIN SparePartsRequisitionDetail AS d
    ON m.RequisitionID = d.RequisitionID
INNER JOIN CmnCompany AS c
    ON m.CompanyID = c.CompanyID
INNER JOIN CmnUserInfo AS u
    ON d.CreateBy = u.UserID
INNER JOIN CmnItemMaster AS im
    ON d.ItemID = im.ItemID
WHERE m.CustomCode IN (
    'MGL-SPRT-2603001',
    'MGSL-SPRT-2603001',
    'MGSL-SPRT-2603002',
    'MGSL-SPRT-2605001',
    'MGL-SPR-2604008',
    'MGL-SPR-2605001',
    'MGL-SPR-2606002'
)
ORDER BY
    m.RequisitionDate,
    m.CustomCode,
    d.ItemID;