---
title: "Upgrade Workbooks and Scheduled Data Refresh (SharePoint 2013) | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a49c4af4-e243-4926-be97-74da1f9d54eb
caps.latest.revision: 20
ms.author: "owend"
manager: "erikre"
---
# Upgrade Workbooks and Scheduled Data Refresh (SharePoint 2013)
  This topic explains the user experience of workbooks created in previous [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] environments and how to upgrade [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbooks so that you can take advantage of new features introduced in this release. To learn more about new features, see [What’s New in Power Pivot](http://go.microsoft.com/fwlink/?LinkID=203917).  
  
> [!WARNING]  
>  You cannot rollback upgrade for workbooks that are upgraded automatically on the server. Once a workbook is upgraded, it remains upgraded. To use a previous version, you can republish the previous workbook to SharePoint, restore a previous version, or recycle the workbook. For more information about restoring or recycling a document in SharePoint, see [Plan to protect content by using recycle bins and versioning](http://go.microsoft.com/fwlink/?LinkId=238669).  
  
 This topic contains the following sections:  
  
-   [Overview of Upgrading Workbooks](#bkmk_overview)  
  
-   [Upgrade to SQL Server 2012 Service Pack 1 (SP1) workbooks from 2008 R2 Workbooks](#bkmk_to_2012sp1_from_2008r2)  
  
-   [Upgrade to Office 2013 workbooks from Versions created by using the 2012 Power Pivot Add-In for Excel](#bkmk_to_2012sp1_from_2012)  
  
-   [Upgrade to SQL Server 2012 workbooks from Versions created by using the 2008 R2 Power Pivot Add-In for Excel 2010](#bkmk_to_2012_from_2008R2)  
  
-   [Running Multiple Workbook Versions on a Newer Server](#bkmk_runold)  
  
##  <a name="bkmk_overview"></a> Overview of Upgrading Workbooks  
 A [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbook is an Excel workbook that contains embedded [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] data. Upgrading a workbook has two benefits:  
  
-   Use new features in [!INCLUDE[ssGeminiClient](../../../../a9notintoc/includes/ssgeminiclient-md.md)].  
  
-   Enables scheduled data refresh for workbooks that run with a [!INCLUDE[ssSQL11SP1](../../../../analysis-services/instances/install/windows/includes/sssql11sp1-md.md)] Analysis Services server in SharePoint mode.  
  
> [!IMPORTANT]  
>  You cannot rollback an upgraded workbook, so be sure to make a copy of the file if you want to use it in the previous version of [!INCLUDE[ssGeminiClient](../../../../a9notintoc/includes/ssgeminiclient-md.md)], or on a previous version of [!INCLUDE[ssGeminiShort](../../../../a9notintoc/includes/ssgeminishort-md.md)].  
  
 The following table lists the support and behavior of [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbooks based on the environment  in which the workbook was created. The behavior described includes the general user experience, the supported upgrade options to upgrade the workbook to the particular environment, and the behavior of scheduled data refresh of a workbook that has not yet been upgraded.  
  
### Workbook Behavior and Upgrade Options  
  
|Created In|\<|Support and Behavior|>|  
|----------------|--------|--------------------------|--------|  
||**2008 R2 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for SharePoint 2010**|**2012 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for SharePoint 2010**|**2012 SP1 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for SharePoint 2013**|  
|**2008 R2 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2010**|All Features|**Experience:** Users can interact with the workbook in the browser and use it as a data source for other solutions.<br /><br /> **Upgrade:** Workbooks will auto upgrade in the document library if Auto Upgrade is enabled for the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] system Service in the SharePoint farm,<br /><br /> **Schedule data refresh:** NOT supported. Workbook needs to be upgraded.|**Experience:** Users can interact with the workbook and use it as a data source for other solutions.<br /><br /> **Upgrade:** Auto upgrade is not available. Users must manually upgrade their 2008 R2 workbooks to the 2012 version or to the office 2013 version.<br /><br /> **Schedule data refresh:** NOT supported. Workbook needs to be upgraded.|  
|**2012 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel**|Not supported|All Features|**Experience:** Users can interact with the workbook in the browser and use it as a data source for other solutions. Schedule data refresh is available.<br /><br /> **Upgrade:** Auto upgrade is not supported. Users can manually upgrade their workbooks to the Office 2013 version.<br /><br /> **Schedule data refresh:** supported.|  
|**Excel 2013**|Not supported|Not supported|All Features|  
  
##  <a name="bkmk_to_2012sp1_from_2008r2"></a> Upgrade to SQL Server 2012 Service Pack 1 (SP1) workbooks from 2008 R2 Workbooks  
 This section describes upgrading to SQL Server 2012 SP1 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2013 workbooks from SQL Server 2008 R2 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2010 workbooks.  
  
 **Behavior Change:** SQL Server 2008 R2 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbooks will not be automatically upgraded  when they are used in SQL Server 2012 SP1 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for SharePoint 2013. Therefore, scheduled data refreshes will not work for SQL Server 2008 R2 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbooks  
  
 2008 R2 workbooks will open in [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for SharePoint 2013, however scheduled data refreshes will not work. If you review the refresh history you will see an error message similar to the following:  
  
 “The workbook contains an unsupported [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] model. The [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] model in the workbook is in the SQL Server 2008 R2 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2010 format. Supported [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] models are the following:  
  
-   SQL Server 2012 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2010.  
  
-   SQL Server 2012 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2013.  
  
 **How to upgrade a workbook:** The Scheduled data refresh will not work until you upgrade the workbook to a 2012 workbook. To upgrade the workbook and model it contains, complete one of the following:  
  
-   Download and open the workbook in Microsoft Excel 2010 with the SQL Server 2012 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel add-in installed.  
  
     Open the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] window and upgrade the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] model.  
  
     Then save the workbook and republish it to SharePoint.  
  
-   Download and open the workbook in Microsoft Excel 2013.  
  
     Open the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] window and upgrade the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] model.  
  
     Then save the workbook and republish it to the SharePoint server.  
  
 For more information on Changes to Analysis Services features, see [Behavior Changes to Analysis Services Features in SQL Server 2016](../../../../analysis-services/behavior-changes-to-analysis-services-features-in-sql-server-2016.md)  
  
 For more information on refresh history, see [View Data Refresh History &#40;Power Pivot for SharePoint&#41;](../../../../analysis-services/power-pivot-sharepoint/view-data-refresh-history-power-pivot-for-sharepoint.md).  
  
##  <a name="bkmk_to_2012sp1_from_2012"></a> Upgrade to Office 2013 workbooks from Versions created by using the 2012 Power Pivot Add-In for Excel  
 This section describes Upgrading **to** SQL Server 2012 SP1 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] in Excel 2013 **from** SQL Server 2012 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2010 workbooks.  
  
 Upgrading a workbook resolves the following error that occurs when attempting scheduled data refresh on the previous workbook version workbook:  
  
 “Refresh operation for workbooks created with earlier version of [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] is not available.”  
  
 **How to upgrade a workbook**  
  
1.  Upgrade each workbook manually by opening it in Microsoft Excel 2013.  
  
2.  To upgrade the workbook and model it contains, download and open the workbook in Microsoft Excel 2013.  
  
3.  Open the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] window and upgrade the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] model.  
  
4.  Then save the workbook and republish it to the SharePoint 2013 server.  
  
##  <a name="bkmk_to_2012_from_2008R2"></a> Upgrade to SQL Server 2012 workbooks from Versions created by using the 2008 R2 Power Pivot Add-In for Excel 2010  
 This section describes Upgrading **to** SQL Server 2012 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2010 **from** SQL Server 2008 R2 [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel 2010 workbooks.  
  
 Upgrading a workbook resolves the following error that occurs when attempting scheduled data refresh on the previous workbook version workbook:  
  
 “Refresh operation for workbooks created with earlier version of [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] is not available.”  
  
 **How to upgrade a workbook**  
  
 There are two ways to upgrade:  
  
1.  Upgrade each workbook manually by opening it in Excel on a computer that has the [!INCLUDE[ssSQL11](../../../../a9notintoc/includes/sssql11-md.md)] version of [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel, and then republish it to the server. When you open the workbook in the newer version of the add-in, the following internal operations occur: the data provider in the workbook data connection string is updated to MSOLAP.5, metadata is updated, and relationships are recreated to conform to a newer implementation.  
  
2.  Alternatively, a SharePoint Administrator  can enable the auto-upgrade feature for the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] System Service in a SharePoint farm to  automatically upgrade a [!INCLUDE[ssKilimanjaro](../../../../a9notintoc/includes/sskilimanjaro-md.md)][!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbook when schedule data refresh runs (only workbooks that are configured for scheduled data refresh are upgraded).  
  
    > [!NOTE]  
    >  Automatic upgrade is a server configuration feature; you cannot enable or disable it for specific workbooks, libraries, or site collections.  
  
 **How to configure automatic upgrade during data refresh**  
  
 To use automatic upgrade, you must select the **Automatically upgrade [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbooks to enable data refresh from the server** checkbox in the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] Configuration Tool. Within the tool, the checkbox is on the **Upgrade [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] System Service** page, and on the **Create [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] Service Application** page if you are configuring a new installation.  
  
 You can run the following cmdlet to verify whether automatic upgrade is enabled:  
  
```  
PS C:\Windows\system32> Get-PowerPivotSystemService  
```  
  
 The output from Get-PowerPivotSystemService is a list of properties and corresponding values. You should see **WorkbookUpgradeOnDataRefresh** in the property list. It will be set to **true** if automatic upgrade is enabled. If it is **false**, continue to the next step, enabling automatic workbook upgrade.  
  
 To enable automatic workbook upgrade, run the following command:  
  
```  
PS C:\Windows\system32> Set-PowerPivotSystemService –WorkbookUpgradeOnDataRefresh:$true –Confirm:$false  
```  
  
 After you upgrade the workbook, you can use scheduled data refresh and new features in the [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] for Excel add-in.  
  
##  <a name="bkmk_runold"></a> Running Multiple Workbook Versions on a Newer Server  
 You can run older and newer versions of [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbooks side by side on a [!INCLUDE[ssSQL11SP1](../../../../analysis-services/instances/install/windows/includes/sssql11sp1-md.md)] instance of [!INCLUDE[ssGeminiShort](../../../../a9notintoc/includes/ssgeminishort-md.md)].  
  
 Depending on how you installed the server, **you might need** to install a previous version of the Analysis Services OLE DB provider before you can access older and newer workbooks on the same server.  
  
 Note that Publishing newer version workbooks on previous SQL Server instances of [!INCLUDE[ssGeminiShort](../../../../a9notintoc/includes/ssgeminishort-md.md)] is not supported. A [!INCLUDE[ssKilimanjaro](../../../../a9notintoc/includes/sskilimanjaro-md.md)] instance will not load a workbook that you created in the [!INCLUDE[ssSQL11](../../../../a9notintoc/includes/sssql11-md.md)] version of [!INCLUDE[ssGeminiClient](../../../../a9notintoc/includes/ssgeminiclient-md.md)], and a SQL Server 2012 instance will not load Office 2013 workbooks with advanced data models that you created using the [!INCLUDE[ssSQL11SP1](../../../../analysis-services/instances/install/windows/includes/sssql11sp1-md.md)] version of [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] in Excel.  
  
###  <a name="bkmk_msolapxslx"></a> How to Check for MSOLAP Data Provider Information in a Power Pivot Workbook  
 Use the following instructions to check which OLE DB provider is used in a [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbook. Checking the data connection information does not require the [!INCLUDE[ssGeminiClient](../../../../a9notintoc/includes/ssgeminiclient-md.md)] add-in to be installed.  
  
1.  In Excel, on the Data tab, click **Connections**. Click **Properties**.  
  
2.  On the **Definition** tab, the provider version appears at the beginning of the connection string.  
  
     **Provider=MSOLAP.5** indicates the workbook is [!INCLUDE[ssSQL11](../../../../a9notintoc/includes/sssql11-md.md)].  
  
     **Provider=MSOLAP.4** indicates [!INCLUDE[ssKilimanjaro](../../../../a9notintoc/includes/sskilimanjaro-md.md)].  
  
     **Data Source=$Embedded$** indicates that the workbook is a [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbook, using an embedded database.  
  
###  <a name="bkmk_msolappc"></a> How to Check for the Current Version of the MSOLAP Data Provider on a Local Computer  
 Use the following instructions to check which OLE DB provider is the current version on the server or workstation that runs [!INCLUDE[ssGemini](../../../../a9notintoc/includes/ssgemini-md.md)] workbooks. Knowing the current version can help you troubleshoot data connection errors after upgrading.  
  
1.  In the Registry Editor, go to HKEY_CLASSES_ROOT  
  
2.  Scroll down to MSOLAP. Verify that MSOLAP.5 is listed among the OLAP providers installed on the system. Verify that MSOLAP | CurVer is set to MSOLAP.5  
  
## See Also  
 [Migrate Power Pivot to SharePoint 2013](../../../../analysis-services/instances/install/windows/migrate-power-pivot-to-sharepoint-2013.md)   
 [Upgrade Power Pivot for SharePoint](../../../../database-engine/install/windows/upgrade-power-pivot-for-sharepoint.md)   
 [What's New in Analysis Services](../../../../analysis-services/what-s-new-in-analysis-services.md)   
 [View Data Refresh History &#40;Power Pivot for SharePoint&#41;](../../../../analysis-services/power-pivot-sharepoint/view-data-refresh-history-power-pivot-for-sharepoint.md)  
  
  