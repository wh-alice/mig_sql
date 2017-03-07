---
title: "CREATE FEDERATION (Azure SQL Database) | Microsoft Docs"
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
  - "FEDERATION_TSQL"
  - "FEDERATION"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "CREATE FEDERATION statement"
ms.assetid: 361cecba-526e-4375-8ac5-a8365d5c3c57
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# CREATE FEDERATION (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Creates a new federation in [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
## Syntax  
  
```  
CREATE FEDERATION  
    federation_name { <federation_distribution_scheme> }  
  
<federation_distribution_scheme> ::=   
    <federation_distribution>  
  
<federation_distribution> ::=  
     ( distribution_name <data_type> RANGE )  
  
<data_type> ::=   
     [system_type_name . ] type_name    
```  
  
## Arguments  
 *federation_name*  
 The name of the federation to be created. The name must be unique within the [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)] and comply with the rules for identifiers, and is of type **sysname**.  
  
 *distribution_name*  
 The name of the federation key. The name is an identifier used to refer to the federation key, and is referred to with federation related statements such as CREATE TABLE … FEDERATED ON(...) or USE FEDERATION. Distribution_name must conform to the rules for identifiers and is of type **sysname**.  
  
 *type_name*  
 The type name for the federation key type. The type must be of type **int**, **bigint**, **uniqueidentifier**, or **varbinary**(*n*), where *n* can be a maximum of 900.  
  
 RANGE  
 The type of partitioning. Only RANGE partitioning is supported.  
  
## Remarks  
 The federation object allows scaling out a collection of tables. A federation contains the entire data set for the given collection of tables, and defines the distribution policy and the data type to use for the distribution of data.  
  
 Federations can be created in any database, and there can be many federations within a database. Each federation represents a separate collection of tables such as ‘all customer data’ or ‘all order data’, and each federation member typically contains a subset of the full dataset. In the special case of a single federation member, the single member can contain the whole of the collection of tables.  
  
 When a federation is created, the first member covering the full range for the specified data type is also created. This federation member is visible in sys.databases as a regular database in the master database. It is also visible in the user database that contains the federation through the sys.federation_members system view. The member database name is generated randomly.  
  
 With range distribution, range_low and range_high represent the boundary values for the federation member. For federation members, range_low is set to the minimum value allowed in the federation key in a given member, and range_high is set to the maximum value +1 allowed in the federation key for a given member. In the special case of a single federation member, range_low represents the minimum value of the domain of the federation key data type and range_high is NULL to represent the maximum value+1. The range cannot have gaps in coverage of the range; there cannot be absent values in the range. Every valid value of the range is covered by a federation member. The federation key data type is used to specify the domain of the values allowed. The range_low value is inclusive to the range, while range_high is exclusive. For example, if a federation member has a range_low of 100 and a range_high of 200, the value 100 is included in the federation but the value of 200 is not. The federation member containing the maximum value of the range includes the maximum value for the federation key data type domain, and will report NULL as the range_high value.  
  
> [!IMPORTANT]  
>  The CREATE FEDERATION statement must be the only statement in the batch, and cannot be part of an outer transaction. If an outer transaction exists, error 226 will be returned.  
  
  