---
title: "Remove a Utility Control Point (SQL Server Utility) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c048a416-900e-4c77-8243-e0f0d8b94068
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
---
# Remove a Utility Control Point (SQL Server Utility)
  This topic describes how to remove a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] utility control point (UCP) from the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Security](#Security)  
  
-   **To remove a Utility Control Point, using:**  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
 Before you use this procedure to remove the UCP from the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Utility, note the following requirements. The stored procedure will run prerequisite checks as part of the operation.  
  
-   Before you run this procedure, all managed instances of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must be removed from the UCP. Note that the UCP is a managed instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. From more information, see [Remove an Instance of SQL Server from the SQL Server Utility](../../relational-databases/manage/remove-an-instance-of-sql-server-from-the-sql-server-utility.md).  
  
-   This procedure must be run on a computer that is a UCP.  
  
-   If the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] where the UCP was removed has a non-Utility data collection set, the UMDW database (sysutility_mdw) will not be dropped by the procedure. If this is the case, the UMDW database (sysutility_mdw) must be dropped manually before the UCP can be created again.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 This procedure must be run by a user with **sysadmin** permissions; the same permissions required to create a UCP.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To remove a Utility Control Point  
  
1.  Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
```  
EXEC msdb.dbo.sp_sysutility_ucp_remove;  
```  
  
## See Also  
 [SQL Server Utility Features and Tasks](../../relational-databases/manage/sql-server-utility-features-and-tasks.md)   
 [Use Utility Explorer to Manage the SQL Server Utility](../../relational-databases/manage/use-utility-explorer-to-manage-the-sql-server-utility.md)   
 [Troubleshoot the SQL Server Utility](../Topic/Troubleshoot%20the%20SQL%20Server%20Utility.md)  
  
  