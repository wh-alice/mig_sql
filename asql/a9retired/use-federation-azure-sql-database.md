---
title: "USE FEDERATION (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "02/23/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "USE FEDERATION"
  - "USE_FEDERATION_TSQL"
  - "sql13.swb.federations.connect.f1"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "USE FEDERATION statement"
ms.assetid: 86cb496a-9f0a-4bf0-b099-9533ded32d24
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# USE FEDERATION (Azure SQL Database)
  Connects to a federation.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
 [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
USE FEDERATION ROOT  
    WITH RESET  
  
USE FEDERATION federation_name (distribution_name = value)  
    WITH [FILTERING={ON|OFF},] RESET  
[;]  
```  
  
## Arguments  
 ROOT  
 Points an existing connection to the federation root. If connected to a federation member, the connection is reset back to the federation root database. When connected to any other database, it has no effect.  
  
 *federation_name*  
 The name of the federation targeted by the connection.  
  
 *distribution_name*  
 The name of the federation key for this federation.  
  
 *value*  
 The value to use for connecting to the federation member. The federation member servicing the federation value becomes the federation member that the connection is established to.  
  
 The value must comply with the type that the federation specified in the federation_name defined.  
  
 The value cannot be NULL.  
  
 WITH FILTERING=ON|OFF  
 When this argument is not presented, the filtering is set to ON.  
  
 When FILTERING is set to OFF, the connection scope is set to the full range covered by the federation member containing the specified key value. The connection behaves the same if it were connected to the member through its physical federation member name (the database name).  
  
 Filtering is set to OFF when applications want to work with all data in the federation member (for example for scanning the entire range) and have built logic already to deal with filtering to a single atomic federation atomic unit instance in their app.  
  
 When FILTERING is set to ON, the connection scope is set to the federation key instance in a federation member rather than to the full range of federation member. In this mode, the query processor adds a predicate (fed_column=value) on the federation column to every query that refers to a federated table.  
  
 Filtering is set to ON when applications want to scope their access to an atomic federation atomic unit automatically (for example just to tenant_id 55).  
  
 WITH RESET  
 This is a required keyword that makes the connection reset explicit.  
  
## Remarks  
 The USE FEDERATION statement provides efficient connection pooling behavior for existing connectivity libraries by allowing applications to first connect to the database that contains the federation object and through the USE FEDERATION statement, switch to the specific federation member. This ensures that the client connection pool is smaller than it would be if it had to address individual federation members or federation atomic unit values.  
  
 USE FEDERATION can be executed on connection at any point in the lifetime of the connection but must be the only statement in the batch and does not support parameterization.  
  
 USE FEDERATION rewires a connection from the current federation member or the root database to the federation root, or to the specified value that is contained within a federation member. When a connection is rewired with USE FEDERATION, the connection is reestablished. Thus all existing settings and the context of the connection is lost. This is equivalent to running sp_reset_connection when a connection is retrieved from a connection pool.  
  
 Since the master database cannot contain a federation, USE FEDERATION ROOT ran within the master database has no effect.  
  
 USE FEDERATION with a federation name that does not exist returns an error such as ‘Federation \<federation name> does not exist’.  
  
 Using FILTERING=ON allows limiting of the view of the connection to only a given federation key instance. Connecting to a federation key instance binds the query to a specific federation atomic unit. This modifies the semantics of queries issued on the connection by introducing a predicate **P**. **P** is injected for all federated tables in a given query as **Federation_Column =@filtering_value**.  
  
 Any query that attempts to load, insert, or move a row out of the current federation filtering value is illegal and will fail, as though there were a check constraint on the target table enforcing P."  
  
> [!WARNING]  
>  The federation atomic unit is not a security boundary. The query processor does not guarantee complete isolation of information between units within the same federation member. Do not rely on filtering as a security isolation mechanism.  
>   
>  The query processor does not guarantee federations filtering will be processed prior to processing additional filtering or expressions. Because the processing order is not guaranteed, arbitrary logic could run on those rows, which could result in unexpected exceptions such as overflow or divide by zero exceptions.  
  
## Example  
 The following example demonstrates how to route the connection to federation root.  
  
```c#  
using (SqlConnection connection = new SqlConnection(connectionString))   
{   
    connection.Open();   
  
    using (SqlCommand command = connection.CreateCommand())   
    {   
        // Route the connection to federation root   
        // Note that the CommandText should not contain any additional commends  
        command.CommandText = "USE FEDERATION ROOT WITH RESET";   
        command.ExecuteNonQuery();   
    }   
}  
```  
  
  