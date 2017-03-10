---
title: "sp_set_database_firewall_rule (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "2016-07-27"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_set_database_firewall_rule"
  - "sp_set_database_firewall_rule_TSQL"
  - "sys.sp_set_database_firewall_rule"
  - "sys.sp_set_database_firewall_rule_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_set_database_firewall_rule"
  - "firewall_rules, setting database rules"
ms.assetid: 8f0506b6-a4ac-4e4d-91db-8077c40cb17a
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_set_database_firewall_rule (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-asdw-xxx_md](../../../relational-databases/reference/system-dynamic-management-views/includes/tsql-appliesto-xxxxxx-asdb-asdw-xxx-md.md)]

  Creates or updates the database-level firewall rules for your [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)] or [!INCLUDE[ssSDW_md](../../../database-engine/configure/windows/includes/sssdw-md.md)]. Database firewall rules can be configured for the **master** database, and for user databases on [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)]. Database firewall rules are particularly useful when using contained database users. For more information, see [Contained Database Users - Making Your Database Portable](../../../relational-databases/security/contained-database-users-making-your-database-portable.md).  
  
## Syntax  
  
```  
  
sp_set_database_firewall_rule [@name = ] [N]'name'  
, [@start_ip_address =] 'start_ip_address'  
, [@end_ip_address =] 'end_ip_address'
[ ; ]  
```  
  
## Arguments  
 **[@name** = ] [N]'*name*'  
 The name used to describe and distinguish the database-level firewall setting. *name* is **nvarchar(128)** with no default value. The Unicode identifier `N` is required for [!INCLUDE[ssSDW_md](../../../database-engine/configure/windows/includes/sssdw-md.md)] but optional for [!INCLUDE[ssSDS_md](../../../analysis-services/multidimensional-models/includes/sssds-md.md)]. 
  
 **[@start_ip_address** =] '*start_ip_address*'  
 The lowest IP address in the range of the database-level firewall setting. IP addresses equal to or greater than this can attempt to connect to the [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] instance. The lowest possible IP address is `0.0.0.0`. *start_ip_address* is **varchar(50)** with no default value.  
  
 [**@end_ip_address** =] '*end_ip_address*'  
 The highest IP address in the range of the database-level firewall setting. IP addresses equal to or less than this can attempt to connect to the [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] instance. The highest possible IP address is `255.255.255.255`. *end_ip_address* is **varchar(50)** with no default value.  
  
 The following table demonstrates the supported arguments and options in [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)].  
  
> [!NOTE]  
>  Windows Azure connection attempts are allowed when both this field and the *start_ip_address* field equals `0.0.0.0`.  
  
## Remarks  
 The names of database-level firewall settings for a database must be unique. If the name of the database-level firewall setting provided for the stored procedure already exists in the database-level firewall settings table, the starting and ending IP addresses will be updated. Otherwise, a new database-level firewall setting will be created.  
  
 When you add a database-level firewall setting where the beginning and ending IP addresses are equal to `0.0.0.0`, you enable access to your database in the [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] server from Windows Azure. Provide a value to the *name* parameter that will help you remember what the firewall setting is for.  
  
## Permissions  
 Requires **CONTROL** permission on the database.  
  
## Examples  
 The following code creates a database-level firewall setting called `Allow Windows Azure` that enables access to your database from Windows Azure.  
  
```  
-- Enable Windows Azure connections.  
EXECUTE sp_set_database_firewall_rule N'Allow Windows Azure','0.0.0.0','0.0.0.0';  
  
```  
  
 The following code creates a database-level firewall setting called `Example DB Setting 1` for only the IP address `0.0.0.4`. Then, the `sp_set_database firewall_rule` stored procedure is called again to allow an additional IP address, `0.0.0.5`, in that firewall setting.  
  
```  
-- Create database-level firewall setting for only IP 0.0.0.4  
EXECUTE sp_set_database_firewall_rule N'Example DB Setting 1','0.0.0.4','0.0.0.4';  
  
-- Update database-level firewall setting to also allow IP 0.0.0.5  
EXECUTE sp_set_database_firewall_rule N'Example DB Setting 1','0.0.0.4','0.0.0.5';  
  
```  
  
## See Also  
 [Azure SQL Database Firewall](https://azure.microsoft.com/documentation/articles/sql-database-firewall-configure/)   
 [How to: Configure Firewall Settings (Azure SQL Database)](https://azure.microsoft.com/documentation/articles/sql-database-configure-firewall-settings/)   
 [sp_set_firewall_rule &#40;Azure SQL Database&#41;](../../../relational-databases/reference/system-stored-procedures/sp-set-firewall-rule-azure-sql-database.md)   
 [sp_delete_database_firewall_rule &#40;Azure SQL Database&#41;](../../../relational-databases/reference/system-stored-procedures/sp-delete-database-firewall-rule-azure-sql-database.md)   
 [sys.database_firewall_rules &#40;Azure SQL Database&#41;](../../../relational-databases/reference/system-catalog-views/sys.database-firewall-rules-azure-sql-database.md)  
  
  