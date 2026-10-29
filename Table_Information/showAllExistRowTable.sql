USE DBMGERP;
GO

DECLARE @TableName NVARCHAR(255);
DECLARE @SQL NVARCHAR(MAX);

-- Cursor for your specific table list
DECLARE TableCursor CURSOR FOR
SELECT name
FROM sys.tables
WHERE name IN (
'AccBankWiseCOA','AccChequeBook','AccChequeBookDetail','AccChequeStatusLifeCycle','AccChequeStatusList',
'AccChequeTransectionDetail','AccChequeTransectionInvoiceDetail','AccChequeTransectionMaster',
'AccChequeTransectionType','AccChequeType','AccIncomeStatementHead','AccIncomeStatementHeadCategory',
'AccIncomeStatementHeadCOAMap','AccJournalChequeReference','AccJournalDetail','AccJournalMaster',
'AccJournalType','AccVoucherPostingCtrlSetting','BilBillingDuration','BilBillingType','BilBillType',
'CmnAccountIntegrationSetting','CmnAddressCity','CmnAddressCountry','CmnAddressMaster','CmnAddressState',
'CmnAddressType','CmnAreaList','CmnAreaMapping','CmnBank','CmnBankAccount','CmnBankAccountType',
'CmnBankBranch','CmnBatchMaster','CmnBatchType','CmnBranchWiseChartOfAccountMap',
'CmnCancelApprovalTransaction','CmnCarrierType','CmnChartOfAccount','CmnChartOfAccount_BackUpMG',
'CmnChartOfAccountBackUpOn01012022','CmnChartOfAccountsBase','CmnChartOfAccountType','CmnCompany',
'CmnCompanyAddress','CmnCompanyCategory','CmnCompanyGroup','CmnCompanyGroupDetail','CmnCompanyLogo',
'CmnCompanyRegistration','CmnCompanyRegistrationType','CmnCompanyType','CmnContactType','CmnCostHeadInfo',
'CmnCurrencyMaster','CmnCurrencyRate','CmnCustomerSalesAreaMapping','CmnDashBoard','CmnDashBoardPanel',
'CmnDashBoardType','CmnDataBaseLocation','CmnDeliveryType','CmnDepartment','CmnDocList',
'CmnDocListFormat','CmnDocListFormatAutoNo','CmnDocListFormatDetail','CmnDocListTableMapping',
'CmnDocType','CmnFiscalYear','CmnInvoiceType','CmnItemAccountType','CmnItemBrand','CmnItemCategory',
'CmnItemColor','CmnItemGroup','CmnItemGroupAccountSetting','CmnItemMaster','CmnItemModel','CmnItemOrigin',
'CmnItemPriceMethod','CmnItemPriceType','CmnItemRequisitionDetail','CmnItemRequisitionMaster',
'CMNITEMSIZEENTRY','CmnlineNo','CmnModuleFormCompany','CmnModuleList','CmnOrganogram','CmnOrganogramList',
'CmnOrganogramLocation','CmnOrganogramType','CmnPackSettingDetail','CmnPackSettingMaster','CmnPackSize',
'CmnPackSizeType','CmnPackType','CmnPartnerDetail','CmnPartnerType','CmnPaymentMethod','CmnPaymentTerm',
'CmnPeriod','CmnPeriodType','CmnPermissionGroup','CmnPermissionGroupDoc','CmnPermissionGroupUser',
'CmnPortMaster','CmnProductionHourSetup','CmnProject','CmnReferenceImageDetail','CmnReferenceImageMaster',
'CmnShippingMode','CmnStatusList','CmnTaxMaster','CmnTaxType','CmnTermList','CmnTermType',
'CmnTransactionReferenceType','CmnTransactionReferenceTypeDetail','CmnTransactionType',
'CmnTransactionTypeERPIntigration','CmnUOM','CmnUOMGroup','CmnUserAccountSetting','CmnUserAccountType',
'CmnUserAuthentication','CmnUserCreditLimit','CmnUserDashBoardGroup','CmnUserDashBoardSetting',
'CmnUserGender','CmnUserGroup','CmnUserInfo','CmnUserInfoBasic','CmnUserLogDetail','CmnUserLogMaster',
'CmnUserPriorityType','CmnUserReligion','CmnUserTitle','CmnUserType','CmnWorkFlowDetail',
'CmnWorkFlowMaster','CmnWorkFlowTransaction','CmnYear','COA_Temp','DuplicateUser','EmpList',
'FabricPODetail','FabricPOMaster','FaiDepriciationDetail','FaiDepriciationMaster','FaLastItemTrackingNo',
'FAMRRDetail','FAMRRItemTracking','FAMRRMaster','FAPurchaseInvoiceDetail','FAPurchaseInvoiceDiscountDetail',
'FAPurchaseInvoiceMaster','FAPurchaseInvoiceTaxDetail','FAPurchaseOrderDetail','FAPurchaseOrderMaster',
'FARequisitionDetail','FARequisitionMaster','GoalTest','GrmAccessoriesDetail','GrmAdditionalCostDetail',
'GrmAirFraightRequisitionDetail','GrmAirFraightRequisitionMaster','GrmApplicationType','GrmBankDocDetail',
'GrmBankDocMaster','grmBBLCAmendment','grmBBLCMaster','grmBBLCPIDetail','GrmBtoBLCType',
'GrmBulkExpNoUploadDetail','GrmBulkExpNoUploadMaster','GrmBulkInvoiceCreateDetail','GrmBulkInvoiceCreateMaster',
'GrmBulkTnAUploadDetail','GrmBulkTnAUploadMaster','GrmBuyerWareHouse','GrmCompanyWiseSignatoryList',
'GrmComposition','GrmCostingMaster','GrmCostSetting','GrmCostType','GrmDailyProductionDetail',
'GrmDailyProductionMaster','GrmDailyProductionPlanDetail','GrmDailyProductionPlanMaster','GrmDepo',
'GrmEmbroideryType','GrmExFactoryTrackingDetail','GrmExFactoryTrackingMaster','grmExpLCSCDetail',
'grmExportLCAmendment','grmExportLCMaster','GrmFabricCIDetail','GrmFabricCIMaster','GrmFabricCITrackingDetail',
'GrmFabricCITrackingMaster','GrmFabricComposition','GrmFabricDetails','GrmFabricDODetail','GrmFabricDOMaster',
'GrmFabricMRRDetail','GrmFabricMRRMaster','GrmFabricPITrackingDetail','GrmFabricPITrackingMaster',
'GrmFabricStockMaster','GrmFactoryWiseMachineMap','GrmFolder','GrmGaugeGroup','GrmGSIssueDetail',
'GrmGSIssueMaster','GrmGSItemOpeningStock','GrmGSItemStockSummary','GrmGSMRRDetail','GrmGSMRRMaster',
'GrmGSPurchaseDetail','GrmGSPurchaseInvoiceDetail','GrmGSPurchaseInvoiceDiscountDetail','GrmGSPurchaseInvoiceMaster',
'GrmGSPurchaseInvoiceTaxDetail','GrmGSPurchaseMaster','GrmGSRequisitionDetail','GrmGSRequisitionMaster',
'GrmGuide','GrmInterCompanyLoanHeadMap','grmLCSalesOrderDetail','GRMLTProductionAmountDetail',
'GRMLTProductionAmountMaster','GrmLTProductionRateDetail','GrmLTProductionRateMaster','GrmMachine',
'GrmMachineModel','GrmMachineType','GrmMeasurementDetail','GrmMeasurementPart','GrmOperation','GrmOperationBulletin',
'GrmOption','GrmOtherCostingInvoiceDetail','GrmOtherCostInvoiceMaster','GrmPackSettingDetail',
'GrmPackSettingMaster','GrmPCApplyDetail','GrmPCApplyMaster','GrmPrintType','GrmProductionPlanSampleDetail',
'GrmProductionPlanSampleMaster','GrmProductionRateDetail','GrmProductionRateMaster','GrmProductionSection',
'GrmProductionWorkCategory','GrmQuotationAccessoriesDetail','GrmQuotationAdditionalCostDetail','GrmQuotationDetail',
'GrmQuotationFabricDetail','GrmQuotationMaster','GrmQuotationYarnDetail','GrmReturnableStyleDODetail',
'GrmReturnableStyleDOMaster','GrmReturnableStyleMRRDetail','GrmReturnableStyleMRRMaster','GrmSalesInvoice',
'GrmSalesInvoiceCommission','GrmSalesInvoiceDetail','GrmSalesInvoiceDiscount','GrmSalesOrder',
'GrmSalesOrderDelivery','GrmSalesOrderFactoryAllocation','GrmSampleDevelopmentDetl','GrmSampleDevStatus',
'GrmSampleRequisitionAccessories','GrmSampleRequisitionDetails','GrmSampleRequisitionFabric',
'GrmSampleRequisitionMaster','GrmSampleType','GrmSeason','GrmSection','GrmSectionWiseDailyProductionDetail',
'GrmSectionWiseDailyProductionMaster','GrmSIPackingDetail','GrmSizeGroup','GrmStyleAllocationMaster',
'GrmStyleDODetail','GrmStyleDOMaster','GrmStyleDOPackingDetail','GrmStyleImage','GrmStyleMRRDetail',
'GrmStyleMRRMaster','GrmStyleStockMaster','GrmStyleType','GrmStyleUnit','GrmSubContractPIDetail',
'GrmSubContractPIMaster','GrmSubContractPODetail','GrmSubContractPOMaster','GrmTermApplicableFromDate',
'GrmTermOfShiping','GrmTestType','GrmToDChangeApplication','GrmTODChangeApplicationDetail','GrmTrimsCIDetail',
'GrmTrimsCIMaster','GrmTrimsCITrackingDetail','GrmTrimsCITrackingMaster','GrmTrimsDODetail','GrmTrimsDOMaster',
'GrmTrimsMRRDetail','GrmTrimsMRRMaster','GrmTrimsPITrackingDetail','GrmTrimsPITrackingMaster','GrmTrimsStockMaster',
'GrmUDBBLCDetail','GrmUDMaster','GrmWashType','GRMWovenSewingProductionDetail','GrmWovenSewingProductionMaster',
'GrmYarnCIDetail','GrmYarnCIMaster','GrmYarnCITrackingDetail','GrmYarnCITrackingMaster','GrmYarnPITrackingDetail',
'GrmYarnPITrackingMaster','HRMCreateJobPosition','HRMEmpJobContract','HRMJobContractType','HRMJobGrade',
'InvDepriciationMethod','InvDODetail','InvDOMaster','InvDOType','InvItemPriceMethod','InvMRRMaster',
'keys','LinkingProductionEMPCardNoMapping','MigrateDataCOA','NewTableName','PerMission','ProfitLoss',
'PurPO_Detail','PurPO_Master','PurQuotationType','SalChargeType','SalDiscountType','SalItemSalesPrice',
'SalItemSalesPriceDetail','SalQuotationDetail','SalQuotationMaster','SalQuotationTemplate','SalSalesCategory',
'SalSalesType','SparePartsIssueDetail','SparePartsIssueMaster','SparePartsItemStockSummary',
'SparePartsMRRDetail','SparePartsMRRMaster','SparePartsPurchaseDetail','SparePartsPurchaseInvoiceDetail',
'SparePartsPurchaseInvoiceMaster','SparePartsPurchaseMaster','SparePartsRequisitionDetail',
'SparePartsRequisitionMaster','StyleDeptTmp','SVRCommunicationMedia','sysdiagrams','Table_Customer1',
'Table_Employee','Table_Product','tblBankLedger','tblTriTest','Temp','TempCountry','Test','TestCustomer',
'TestEmployee','TestItem','tmp','TmpBBLCno','tmpFixedAssetOpening2016','TrimmingProductionEMPCardNoMapping',
'TrimsPODetail','TrimsPOMaster','ttt','YarnDODetail','YarnDOMaster','YarnMRRDetail','YarnMRRMaster',
'YarnPODeliveryDetail','YarnPODetail','YarnPOMaster','YarnPOTerm','YarnStockMaster'
);

OPEN TableCursor;
FETCH NEXT FROM TableCursor INTO @TableName;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @SQL = N'
    IF EXISTS (SELECT 1 FROM ' + QUOTENAME(@TableName) + ')
    BEGIN
        PRINT ''Showing TOP 5 from ' + @TableName + ''';
        SELECT TOP 5 * FROM ' + QUOTENAME(@TableName) + ';
    END';

    EXEC sp_executesql @SQL;

    FETCH NEXT FROM TableCursor INTO @TableName;
END

CLOSE TableCursor;
DEALLOCATE TableCursor;
