---
title: "Display Data and Log Space Information for a Database | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logs [SQL Server], space"
  - "status information [SQL Server], space"
  - "displaying space information"
  - "disk space [SQL Server], displaying"
  - "databases [SQL Server], space used"
  - "viewing space information"
  - "space allocation [SQL Server], displaying"
  - "data space [SQL Server]"
ms.assetid: c7b99463-4bab-4e9b-9217-fcb0898dc757
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# Display Data and Log Space Information for a Database
  This topic describes how to display the data and log space information for a database in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)].  

  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Permission to execute **sp_spaceused** is granted to the **public** role. Only members of the **db_owner** fixed database role can specify the **@updateusage** parameter.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To display data and log space information for a database  
  
1.  In Object Explorer, connect to an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] and then expand that instance.  
  
2.  Expand **Databases**.  
  
3.  Right-click a database, point to **Reports**, point to **Standard Reports,**, and then click **Disk Usage**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To display data and log space information for a database by using sp_spaceused  
  
1.  Connect to the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example uses the [sp_spaceused](../../relational-databases/reference/system-stored-procedures/sp-spaceused-transact-sql.md) system stored procedure to report disk space information for the `Vendor` table and its indexes.  
  
```tsql  
USE AdventureWorks2012;  
GO  
EXEC sp_spaceused N'Purchasing.Vendor';  
GO  
```  
  
#### To display data and log space information for a database by querying sys.database_files  
  
1.  Connect to the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example queries the [sys.database_files](../../relational-databases/reference/system-catalog-views/sys.database-files-transact-sql.md) catalog view to return specific information about the data and log files in the [!INCLUDE[ssSampleDBobject](../../a9retired/includes/sssampledbobject-md.md)] database.  
  
```tsql  
USE AdventureWorks2012;  
GO  
SELECT file_id, name, type_desc, physical_name, size, max_size  
FROM sys.database_files ;  
GO  
  
```  
  
## See Also  
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [sys.database_files &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-files-transact-sql.md)   
 [sp_spaceused &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-spaceused-transact-sql.md)   
 [Add Data or Log Files to a Database](../../relational-databases/databases/add-data-or-log-files-to-a-database.md)   
 [Delete Data or Log Files from a Database](../../relational-databases/databases/delete-data-or-log-files-from-a-database.md)  
  
  