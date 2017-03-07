---
title: "sp_delete_database_firewall_rule (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "2016-07-28"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_delete_database_firewall_rule"
  - "sp_delete_database_firewall_rule_TSQL"
  - "sys.sp_delete_database_firewall_rule"
  - "sys.sp_delete_database_firewall_rule_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_delete_database_firewall_rule procedure"
ms.assetid: ed295312-e586-4fc2-9e80-806b490ee7bd
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_delete_database_firewall_rule (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-asdw-xxx_md](../../relational-databases/security/encryption/includes/tsql-appliesto-xxxxxx-asdb-asdw-xxx-md.md)]

  Removes database-level firewall setting from your [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)] or [!INCLUDE[ssSDW_md](../../database-engine/configure/windows/includes/sssdw-md.md)]. Database firewall rules can be configured and deleted for the master database, and for user databases on [!INCLUDE[ssSDS_md](../../analysis-services/multidimensional-models/includes/sssds-md.md)].   
  
 
## Syntax  
  
```  
  
sp_delete_database_firewall_rule [@name =] [N]'name'
[ ; ]  
```  
  
## Arguments  
 [**@name =**] **'***name***'**  
 The name of the database-level firewall setting that will be removed. *name* is **nvarchar(128)** with no default value. The Unicode identifier `N` is required for SQL Data Warehouse but optional for [!INCLUDE[ssSDS_md](../../analysis-services/multidimensional-models/includes/sssds-md.md)]. 
  
## Permissions  
 Only the server-level principal login created by the provisioning process can delete database level firewall rules.  
  
## Example  
 The following example removes the database-level firewall setting named ‘Example DB Setting 1’.  
  
```  
-- Remove database-level firewall setting  
EXECUTE sp_delete_database_firewall_rule N'Example DB Setting 1';  
  
```  
  
## See Also  
 [Azure SQL Database Firewall](https://azure.microsoft.com/documentation/articles/sql-database-firewall-configure/)   
 [How to: Configure Firewall Settings (Azure SQL Database)](https://azure.microsoft.com/documentation/articles/sql-database-configure-firewall-settings/)   
 [sp_set_firewall_rule &#40;Azure SQL Database&#41;](../../relational-databases/system-stored-procedures/sp-set-firewall-rule-azure-sql-database.md)   
 [sp_set_database_firewall_rule &#40;Azure SQL Database&#41;](../../relational-databases/system-stored-procedures/sp-set-database-firewall-rule-azure-sql-database.md)   
 [sys.database_firewall_rules &#40;Azure SQL Database&#41;](../../relational-databases/system-catalog-views/sys.database-firewall-rules-azure-sql-database.md)  
  
  

