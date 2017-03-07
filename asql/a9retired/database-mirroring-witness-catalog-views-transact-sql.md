---
title: "Database Mirroring Witness Catalog Views (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "02/21/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "catalog views [SQL Server], database mirroring"
ms.assetid: 8a0c9053-5d76-4aa9-a18d-0ea1c514034d
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Database Mirroring Witness Catalog Views (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  In a database mirroring session, automatic failover requires a witness server. Ideally, the witness resides on a separate computer from both the principal and mirror servers. The witness does not serve the database. Instead, it monitors the status of the principal and mirror servers. If the principal server fails, the witness may initiate automatic failover to the witness server. For more information, see [Database Mirroring Witness](../database-engine/database-mirroring/database-mirroring-witness.md).  
  
 For information about the catalog view for database mirroring witnesses, see [sys.database_mirroring_witnesses &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/database-mirroring-witness-catalog-views-sys.database-mirroring-witnesses.md).  
  
> [!NOTE]  
>  For the information about the catalog-view columns for mirrored databases, see [sys.databases &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md).  
  
## See Also  
 [sys.database_mirroring_endpoints &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.database-mirroring-endpoints-transact-sql.md)  
  
  