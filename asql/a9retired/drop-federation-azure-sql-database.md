---
title: "DROP FEDERATION (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "12/08/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DROP FEDERATION"
  - "DROP_FEDERATION_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DROP FEDERATION statement"
ms.assetid: a4acc538-2d25-45b1-83b3-91a16dafea6a
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# DROP FEDERATION (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Drops a federation, including data contained in the federation, in [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
## Syntax  
  
```  
DROP FEDERATION federation_name  
[;]   
```  
  
## Arguments  
 *federation_name*  
 The name of the federation to be dropped.  
  
## Remarks  
 **Properties of the SPLIT operation**  
  
-   The DROP FEDERATION statement must be the only statement in the batch, and cannot be part of an outer transaction  
  
-   The DROP FEDERATION statement can only be executed while connected to the federation root database.  
  
-   The DROP FEDERTION operation is an asynchronous operation.  
  
     When DROP is complete;  
  
    1.  All metadata and logical objects about the federation are cleaned up, and all of the federation members are dropped. The total time it takes to drop all federation members varies depending on the number of members in the federation.  
  
    2.  Existing connections and pooled connections to federation members are closed as the members are dropped.  
  
    3.  All existing connections to the federation members are disconnected. The dropped federation member no longer accepts connections.  
  
 **Concurrency of the DROP FEDERATION operation**  
  
 The DROP FEDERATION operation can be performed while ALTER FEDERATION operations such as SPLIT or DROP are in progress. In this case, DROP FEDERATION takes precedence and will cancel operations on all remaining federation members before dropping them.  
  
## Permissions  
 To drop federations, you must be connected to the federation root and must be a member of the **dbmanager** role on the server. You must also be a member of the **dbo** group for the database.  
  
 You must have CREATE and DROP DATABASE permissions on the source federation members and on the server that you are connected to. In Windows Azure SQL Database this is restricted to the members of the **dbmanager** server role. The owner of the source federation member becomes the owner of the destination federation member, regardless of the user account executing the operation.  
  
## See Also  
 [NIB - sys.federations](http://msdn.microsoft.com/en-us/d6394ca6-9593-458f-9fe0-d6b0882e9a5e)   
 [CREATE FEDERATION &#40;Azure SQL Database&#41;](../a9retired/create-federation-azure-sql-database.md)   
 [ALTER FEDERATION &#40;Azure SQL Database&#41;](../a9retired/alter-federation-azure-sql-database.md)   
 [Managing Database Federations](http://msdn.microsoft.com/library/windowsazure/hh597455.aspx)  
  
  