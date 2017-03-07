---
title: "FEDERATION_FILTERING_VALUE (Azure SQL Database) | Microsoft Docs"
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
f1_keywords: 
  - "FEDERATION_FILTERING_VALUE_TSQL"
  - "FEDERATION_FILTERING_VALUE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "FEDERATION_FILTERING_VALUE"
ms.assetid: 18b3a53e-c6d7-476e-a9c3-d28e26070941
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# FEDERATION_FILTERING_VALUE (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Returns the federation filtering value for filtering connections in [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
## Syntax  
  
```  
FEDERATION_FILTERING_VALUE ('distribution_name')   
```  
  
## Arguments  
 *distribution_name*  
 Specifies the name of the federation key.  
  
## Remarks  
 Returns NULL when the connection type is not filtering or the connection is to a database that cannot have a filtering type connection, such as a non-federated database.  
  
 Returns an error if the call is not well-formed, such as an invalid number of parameters or incorrect parameter type.  
  
## See Also  
 [Managing Database Federations](http://msdn.microsoft.com/library/windowsazure/hh597455.aspx)   
 [Federation Views &#40;Azure SQL Database&#41;](../a9retired/federation-views-azure-sql-database.md)  
  
  