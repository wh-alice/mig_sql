---
title: "sp_pdw_add_network_credentials (SQL Data Warehouse) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 0729eeff-ac7e-43f0-80fa-ff5346a75985
caps.latest.revision: 10
ms.author: "barbkess"
manager: "jhubbard"
---
# sp_pdw_add_network_credentials (SQL Data Warehouse)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  This stores network credentials in [!INCLUDE[ssSDW](../../../database-engine/configure/windows/includes/sssdw-md.md)] and associates them with a server. For example, use this stored procedure to give [!INCLUDE[ssSDW](../../../database-engine/configure/windows/includes/sssdw-md.md)] appropriate read/write permissions to perform database backup and restore operations on a target server, or to create a backup of a certificate used for TDE.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
sp_pdw_add_network_credentials 'target_server_name',  'user_name', ꞌpasswordꞌ  
```  
  
## Arguments  
 '*target_server_name*'  
 Specifies the target server host name or IP address. [!INCLUDE[ssSDW](../../../database-engine/configure/windows/includes/sssdw-md.md)] will access this server by using the username and password credentials passed to this stored procedure.  
  
 To connect through the InfiniBand network, use the InfiniBand IP address of the target server.  
  
 *target_server_name* is defined as nvarchar(337).  
  
 '*user_name*'  
 Specifies the user_name that has permissions to access the target server. If credentials already exist for the target server, they will be updated to the new credentials.  
  
 *user_name* is defined as nvarchar (513).  
  
 '*password*ꞌ  
 Specifies the password for *user_name*.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Permissions  
 Requires **ALTER SERVER STATE** permission.  
  
## Error Handling  
 An error occurs if adding credentials does not succeed on the Control node and all Compute nodes.  
  
## General Remarks  
 This stored procedure adds network credentials to the NetworkService account for [!INCLUDE[ssSDW](../../../database-engine/configure/windows/includes/sssdw-md.md)]. The NetworkService account runs each instance of SMP [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on the Control node and the Compute nodes. For example, when a backup operation runs, the Control node and each Compute node will use the NetworkService account credentials to gain read and write permission to the target server.  
  
## Examples: [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### A. Add credentials for performing a database backup  
 The following example associates the user name and password credentials for the domain user seattle\david with a target server that has an IP address of 10.172.63.255. The user seattle\david has read/write permissions to the target server. [!INCLUDE[ssSDW](../../../database-engine/configure/windows/includes/sssdw-md.md)] will store these credentials and use them to read and write to and from the target server, as necessary for backup and restore operations.  
  
```  
EXEC sp_pdw_add_network_credentials '10.172.63.255', 'seattle\david', '********';  
```  
  
 The backup command requires that the server name be entered as an IP address.  
  
> [!NOTE]  
>  To perform the database backup over InfiniBand, be sure to use the InfiniBand IP address of the backup server.  
  
## See Also  
 [sp_pdw_remove_network_credentials &#40;SQL Data Warehouse&#41;](../../../relational-databases/reference/system-stored-procedures/sp-pdw-remove-network-credentials-sql-data-warehouse.md)  
  
  

