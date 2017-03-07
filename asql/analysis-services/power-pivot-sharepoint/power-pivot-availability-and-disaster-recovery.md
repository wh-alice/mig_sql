---
title: "Power Pivot Availability and Disaster Recovery | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4aaf008c-3bcb-4dbf-862c-65747d1a668c
caps.latest.revision: 16
ms.author: "owend"
manager: "erikre"
---
# Power Pivot Availability and Disaster Recovery
  Availability and disaster recovery plans for [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] depend primarily on the design of your SharePoint farm, the amount of downtime acceptable for different components, and the tools and best practices you implement for SharePoint availability. This topic summarizes technologies and includes example topology diagrams to consider when planning availability and disaster recovery for a [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] deployment.  
  
||  
|-|  
|**[!INCLUDE[applies](../../a9retired/includes/applies-md.md)]**  SharePoint 2013 &#124; SharePoint 2010|  
  
 **In this topic:**  
  
-   [Example SharePoint 2013 topology for Power Pivot high availability](#bkmk_sharepoint2013)  
  
-   [Example SharePoint 2010 topology for Power Pivot high availability](#bkmk_sharepoint2010)  
  
-   [PowerPivot service application database and SQL Server availability and recovery technologies](#bkmk_sql_server_technologies)  
  
-   [Links to more information](#bkmk_more_resources)  
  
##  <a name="bkmk_sharepoint2013"></a> Example SharePoint 2013 topology for Power Pivot high availability  
 In a [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] 2013 deployment there is more flexibility in how you design [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] availability. In SharePoint 2013, the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] instance deployed in SharePoint mode, also referred to as the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] server, runs outside the SharePoint farm and can be installed on separate servers. Each instance of [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] in SharePoint mode is registered with Excel Services. The [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] shared service and service application run on SharePoint application servers.  
  
 The following diagram illustrates an example [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] 2013 deployment. This example supports good availability of the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] services and assumes the databases are backed up on a regular basis.  
  
 ![powerpivot availability in 2013](../../analysis-services/power-pivot-sharepoint/media/ssas-powerpivot-services-2013.png "powerpivot availability in 2013")  
  
-   **(1)** The Web front-end servers. Use the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] 2013 Add-in to install the data providers on each server. For more information, see [Install or Uninstall the Power Pivot for SharePoint Add-in &#40;SharePoint 2013&#41;](../../analysis-services/instances/install/windows/install-or-uninstall-the-power-pivot-for-sharepoint-add-in-sharepoint-2013.md).  
  
-   **(2)** The [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] shared service runs **on each** application server and allows the service application to run **across** application servers. Therefore if a single application server goes offline, the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] application will still be available.  
  
-   **(3)** Excel Calculation Services runs one each application server and allows the service application to run across application servers. Therefore if a single application server goes offline, Excel Calculation Services will still be available.  
  
-   **(4)** and **(6)** Instances of [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] ins SharePoint mode run on servers outside the SharePoint farm, this includes the Windows Service **SQL Server Analysis Services ([!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)])**. Each of these instances is registered with Excel Services **(3)**. Excel Services manages load balancing of requests to the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] servers. The [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] 2013 architecture enables you to have multiple servers for [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] so you can easily add more instances as needed. For more information, see [Manage Excel Services data model settings (SharePoint Server 2013)](http://technet.microsoft.com/library/jj219780\(v=office.15\).aspx).  
  
-   **(5)** The SQL Server databases used for content, configuration, and application databases. This includes the [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] service application database. Your DR plan should include the database layer. In this design the databases run on the same server as **(4)** one of the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] instances. **(4)** and **(5)** could also be on different servers.  
  
-   **(7)** Some form of SQL Server database backup or redundancy.  
  
##  <a name="bkmk_sharepoint2010"></a> Example SharePoint 2010 topology for Power Pivot high availability  
 The [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] 2010 architecture requires all [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] components run on the same SharePoint application servers. This includes the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] instance deployed in SharePoint mode and two shared services compared to only one in a SharePoint 2013 deployment.  
  
 The following diagram illustrates an example [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] 2010 deployment. This example supports good availability of the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] services and assumes the databases are backed up on a regular basis.  
  
 ![powerpivot availability in sharepoint 2010](../../analysis-services/power-pivot-sharepoint/media/ssas-powerpivot-services-2010.png "powerpivot availability in sharepoint 2010")  
  
-   **(1)** The Web front-end servers. Install the data providers on each server. For more information, see [Install the Analysis Services OLE DB Provider on SharePoint Servers](http://msdn.microsoft.com/en-us/2c62daf9-1f2d-4508-a497-af62360ee859).  
  
-   **(2)** The two [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] shared services and **(4)** the Windows Service **SQL Server Analysis Services ([!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)])** are installed on the SharePoint application servers.  
  
     The [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] System Service runs **on each** application server and allows the service application to run **across** application servers. If a single application server goes offline, the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] service application will still be available.  
  
     To increase [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] capacity in a SharePoint 2010, deploy more SharePoint application servers running the [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] System Service.  
  
-   **(3)** Excel Calculation Services runs on each application server and allows the service application to run across application servers. Therefore if a single application server goes offline, Excel Calculation Services will still be available.  
  
-   **(5)** The SQL Server databases used for content, configuration, and application databases. This includes the [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] service application database. Your DR plan should include the database layer.  
  
-   **(6)** Some form of SQL Server database backup or redundancy.  
  
##  <a name="bkmk_sql_server_technologies"></a> PowerPivot service application database and SQL Server availability and recovery technologies  
 Include the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] service application database in you SharePoint high availability planning. The default name of the database is `DefaultPowerPivotServiceApplicationDB-<GUID>`. The following is a summary of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] availability technologies and recommendations when used with the [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] database. For more information, see [Supported high availability and disaster recovery options for SharePoint databases (SharePoint 2013)](http://technet.microsoft.com/library/jj841106.aspx).  
  
||Comments|  
|-|--------------|  
|[!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)] and [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] synchronous mirroring in a farm for availability.|Supported but not recommended. The recommendation is to use Always On in Synchronous – commit mode.|  
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssHADR](../../a9notintoc/includes/sshadr-md.md)] in Synchronous-Commit mode|Supported and recommended.|  
|[!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)] asynchronous mirroring or log-shipping to another farm for disaster recovery.|Supported.|  
|[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssHADR](../../a9notintoc/includes/sshadr-md.md)] with asynchronous-commit for disaster recovery|Supported|  
  
-   [!INCLUDE[ssHADR](../../a9notintoc/includes/sshadr-md.md)]  
  
-   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Log Shipping  
  
 For more information on how to plan a cold standby scenario with [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)], see [PowerPivot Disaster Recovery](http://social.technet.microsoft.com/wiki/contents/articles/22137.sharepoint-powerpivot-disaster-recovery.aspx).  
  
## Verification  
 For guidance and scripts to help you verify a [!INCLUDE[ssGeminiShort](../../a9notintoc/includes/ssgeminishort-md.md)] deployment before and after a disaster recovery cycle, see [CheckList: Use PowerShell to Verify Power Pivot for SharePoint](../../analysis-services/instances/install/windows/checklist-use-powershell-to-verify-power-pivot-for-sharepoint.md).  
  
##  <a name="bkmk_more_resources"></a> Links to more information  
  
-   [Supported high availability and disaster recovery options for SharePoint databases (SharePoint 2013)](http://technet.microsoft.com/library/jj841106.aspx)  
  
-   [Plan for disaster recovery (SharePoint Server 2010)](http://technet.microsoft.com/library/ff628971\(v=office.14\).aspx)  
  
-   [SQL Server Cloud backup and recovery white paper](http://www.microsoft.com/server-cloud/solutions/cloud-backup-recovery.aspx?WT.srch=1&WT.mc_ID=SEM_BING_USEvergreenSearch_Unassigned&CR_CC=Unassigned#fbid=RjU2Nbzu2dT)  
  
-   [Microsoft® SQL Server Backup to Microsoft Windows® Azure®Tool](http://www.microsoft.com/download/details.aspx?id=40740)  
  
 **Community content**  
  
-   [Managing Service Instances on SharePoint 2013](http://www.petri.co.il/manage-service-instances-sharepoint-2013.htm)  
  
