---
title: "Change the Proxy Account for the Utility Collection Set on a Managed Instance of SQL Server (SQL Server Utility) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ff37ba8b-a08c-4109-b6e2-5748c995a52c
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# Change Proxy Account for Utility Collection on  Managed SQL Server
  This topic describes how to change the proxy account for the Utility Collection Set on a managed instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To change the proxy account for the utility collection set on a managed instance of SQL Server  
  
1.  Remove the managed instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] from the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Utility.  
  
    -   In **Utility Explorer** in SSMS, click on the **Managed Instances** node.  
  
    -   In the **Utility Explorer** list view, right-click the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance name, and select **Remove Managed Instance…**. For more information, see [Remove an Instance of SQL Server from the SQL Server Utility](../../relational-databases/manage/remove-an-instance-of-sql-server-from-the-sql-server-utility.md).  
  
2.  Enroll the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Utility again.  
  
    -   In **Utility Explorer** in SSMS, right-click on the **Managed Instances** node, and select **Add Managed Instance…**.  
  
    -   Follow prompts to complete the wizard, specifying the new proxy account.  
  
## See Also  
 [SQL Server Utility Features and Tasks](../../relational-databases/manage/sql-server-utility-features-and-tasks.md)   
 [Troubleshoot the SQL Server Utility](http://msdn.microsoft.com/en-US/library/ee210592(SQL.130).aspx)  
  
  