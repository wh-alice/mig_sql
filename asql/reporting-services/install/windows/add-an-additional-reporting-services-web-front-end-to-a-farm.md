---
title: "Add an Additional Reporting Services Web Front-end to a Farm | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-03"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d7a11bda-ae26-49ac-b071-37d83cae5afe
caps.latest.revision: 11
ms.author: "asaxton"
manager: "erikre"
---
# Add an Additional Reporting Services Web Front-end to a Farm
  [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] SharePoint mode includes components needed for application servers and web front-end (WFE) servers. This topic focuses on installing the required [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] components for a WFE server, including the application pages used by [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] features such as subscriptions, data alerts, and [!INCLUDE[ssCrescent](../../../a9notintoc/includes/sscrescent-md.md)]. The primary [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] installation needed for a WFE is to install the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] add-in for SharePoint 2016 products.  
  
## Prerequisites  
  
-   You must be a local administrator to run SQL Server Setup.  
  
-   The computer must be joined to a domain.  
  
-   You need to know the name of the existing database server that is hosting the SharePoint configuration and content databases.  
  
-   The database server must be configured to allow for remote database connections.  If it is not, you will not be able to join the new server to the farm because the new server will not be able to make a connection to the SharePoint configuration databases.  
  
-   The new server will need to have the same version of SharePoint installed that the current farm servers are running. For example if the farm already has SharePoint 2013 Service Pack 1 (SP1) installed, you will need to also install SP1 on the new server before it can join the farm.  
  
## Steps  
 The steps in this topic assume that a SharePoint farm administrator is installing and configuring the server. The diagram shows a typical three tier environment and the numbered items in the diagram are described in the following list:  
  
-   (1) Multiple web front-end (WFE) servers. The WFE servers require the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] add-in for SharePoint 2010. The following steps add a second application server to this tier.  
  
-   (2) Two application servers running [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] and web sites, for example Central Administration.  
  
-   (3) Two SQL Server database servers.  
  
-   (4) Represents a software or hardware network load balancing solution (NLB)  
  
 ![Add SSRS to a new SharePoint WFE](../../../reporting-services/install/windows/media/rs-sharepointscale-wfe.gif "Add SSRS to a new SharePoint WFE")  
  
 The following steps assume that an administrator is installing and configuring the server.  
  
|Step|Description and Link|  
|----------|--------------------------|  
|Add a SharePoint server to a farm.|You will need to intall SharePoint to deploy another Reporting Services application.<br/><br/>For SharePoint 2013, see [Add SharePoint server to a farm in SharePoint Server 2013](https://technet.microsoft.com/library/cc261752(v=office.15).aspx).<br/><br/>For SharePoint 2016, see [Add SharePoint server to a farm in SharePoint Server 2016](https://technet.microsoft.com/library/cc261752(v=office.16).aspx).|  
|Install the [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] add-in for SharePoint 2016 products.|There are several methods for installing the add-in. The following steps use the [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] setup wizard. For more information on installing the add-in, see [Install or Uninstall the Reporting Services Add-in for SharePoint](../../../reporting-services/install/windows/install-or-uninstall-the-reporting-services-add-in-for-sharepoint.md)<br /><br /> 1) Run [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] installation.<br /><br /> 2) On the **Setup Role** page, select **SQL Server Feature Installation**<br /><br /> 3) On the **Feature Selection** page, select **Reporting Services add-in for SharePoint products**<br /><br /> 4) Click **Next** on the next several pages to complete the setup options.<br /><br/>For more information on installing [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)], see [Install The First Report Server in SharePoint Mode](http://msdn.microsoft.com/en-us/b29d0f45-0068-4c84-bd7e-5b8a9cd1b538)|  
|Verify the new server is operational.|1) In SharePoint Central Administration, click **Manage servers in this farm** in the **System Settings** group.<br /><br /> 2) Verify the new server is in the list.|  
|Update your NLB solution.|If appropriate, update your hardware or software NLB environment to include the new server.|  
  
## See Also  
[Add SharePoint server to a farm in SharePoint Server 2016](https://technet.microsoft.com/library/cc261752(v=office.16).aspx)  
[Add SharePoint server to a farm in SharePoint Server 2013](https://technet.microsoft.com/library/cc261752(v=office.15).aspx)
  
  