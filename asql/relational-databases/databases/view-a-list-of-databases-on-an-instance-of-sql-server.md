---
title: "View a List of Databases on an Instance of SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/09/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "current databases"
  - "databases currently on server [SQL Server]"
  - "database list [SQL Server]"
  - "viewing database list"
  - "displaying database list"
  - "databases [SQL Server], viewing"
  - "servers [SQL Server], databases listed on"
  - "listing databases"
ms.assetid: 7ee7a789-db36-4be9-8a0e-0362a1e152dd
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# View a List of Databases on an Instance of SQL Server
  This topic describes how to view a list of databases on an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To view a list of databases on an instance of SQL Server, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 If the caller of **sys.databases** is not the owner of the database and the database is not **master** or **tempdb**, the minimum permissions required to see the corresponding row are ALTER ANY DATABASE or VIEW ANY DATABASE server-level permission, or CREATE DATABASE permission in the **master** database. The database to which the caller is connected can always be viewed in **sys.databases**.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view a list of databases on an instance of SQL Server  
  
1.  In **Object Explorer**, connect to an instance of the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)], and then expand that instance.  
  
2.  To see a list of all databases on the instance, expand **Databases**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To view a list of databases on an instance of SQL Server  
  
1.  Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example returns a list of databases on the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. The list includes the names of the databases, their database IDs, and the dates when the databases were created.  
  
```tsql  
USE AdventureWorks2012;  
GO  
SELECT name, database_id, create_date  
FROM sys.databases ;  
GO  
  
```  
  
## See Also  
 [Databases and Files Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/databases-and-files-catalog-views-transact-sql.md)   
 [sys.databases &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md)  
  
  