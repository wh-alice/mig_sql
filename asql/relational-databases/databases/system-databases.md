---
title: "System Databases | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "system databases [SQL Server]"
  - "displaying system database data"
  - "modifying system data"
  - "viewing system database data"
ms.assetid: 30468a7c-4225-4d35-aa4a-ffa7da4f1282
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# System Databases
  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] includes the following system databases.  
  
|System database|Description|  
|---------------------|-----------------|  
|[master Database](../../relational-databases/databases/master-database.md)|Records all the system-level information for an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].|  
|[msdb Database](../../relational-databases/databases/msdb-database.md)|Is used by SQL Server Agent for scheduling alerts and jobs.|  
|[model Database](../../relational-databases/databases/model-database.md)|Is used as the template for all databases created on the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. Modifications made to the **model** database, such as database size, collation, recovery model, and other database options, are applied to any databases created afterward.|  
|[Resource Database](../../relational-databases/databases/resource-database.md)|Is a read-only database that contains system objects that are included with [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. System objects are physically persisted in the **Resource** database, but they logically appear in the **sys** schema of every database.|  
|[tempdb Database](../../relational-databases/databases/tempdb-database.md)|Is a workspace for holding temporary objects or intermediate result sets.|  
  
## Modifying System Data  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] does not support users directly updating the information in system objects such as system tables, system stored procedures, and catalog views. Instead, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provides a complete set of administrative tools that let users fully administer their system and manage all users and objects in a database. These include the following:  
  
-   Administration utilities, such as [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
-   SQL-SMO API. This lets programmers include complete functionality for administering [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] in their applications.  
  
-   [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] scripts and stored procedures. These can use system stored procedures and [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] DDL statements.  
  
 These tools shield applications from changes in the system objects. For example, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] sometimes has to change the system tables in new versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] to support new functionality that is being added in that version. Applications issuing SELECT statements that directly reference system tables are frequently dependent on the old format of the system tables. Sites may not be able to upgrade to a new version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] until they have rewritten applications that are selecting from system tables. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] considers the system stored procedures, DDL, and SQL-SMO published interfaces, and works to maintain the backward compatibility of these interfaces.  
  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] does not support triggers defined on the system tables, because they might modify the operation of the system.  
  
> [!NOTE]  
>  System databases cannot reside on UNC share directories.  
  
## Viewing System Database Data  
 You should not code [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statements that directly query the system tables, unless that is the only way to obtain the information that is required by the application. Instead, applications should obtain catalog and system information by using the following:  
  
-   System catalog views  
  
-   SQL-SMO  
  
-   Windows Management Instrumentation (WMI) interface  
  
-   Catalog functions, methods, attributes, or properties of the data API used in the application, such as ADO, OLE DB, or ODBC.  
  
-   [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] system stored procedures and built-in functions.  
  
## Related Tasks  
 [Back Up and Restore of System Databases &#40;SQL Server&#41;](../../relational-databases/backup-restore/back-up-and-restore-of-system-databases-sql-server.md)  
  
 [Hide System Objects in Object Explorer](../Topic/Hide%20System%20Objects%20in%20Object%20Explorer.md)  
  
## Related Content  
 [Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
  
 [Databases](../../relational-databases/databases/databases.md)  
  
  