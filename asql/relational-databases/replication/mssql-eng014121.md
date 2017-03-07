---
title: "MSSQL_ENG014121 | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "MSSQL_ENG014121 error"
ms.assetid: c8595854-cce1-4566-ad64-d565555caded
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQL_ENG014121
    
## Message Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|14121|  
|Event Source|MSSQLSERVER|  
|Component|[!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)]|  
|Symbolic Name||  
|Message Text|Could not drop the Distributor '%s'. This Distributor has associated distribution databases.|  
  
## Explanation  
 A [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance that is configured as a Distributor cannot be removed from the role of Distributor because there are distribution databases associated with the instance. This error occurs if you attempt to drop a distribution database that is associated with one or more Publishers.  
  
## User Action  
 To find the names of any Publishers and distribution databases associated with this Distributor, execute [sp_helpdistpublisher &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helpdistpublisher-transact-sql.md) from any database on the Distributor.  
  
 Execute [sp_dropdistributiondb &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dropdistributiondb-transact-sql.md) for any distribution databases associated with this Distributor. After all distribution database associations are removed, you can disable distribution.  
  
## See Also  
 [Errors and Events Reference &#40;Replication&#41;](../../relational-databases/replication/errors-and-events-reference-replication.md)   
 [Configure Distribution](../../relational-databases/replication/configure-distribution.md)  
  
  