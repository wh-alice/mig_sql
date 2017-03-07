---
title: "sys.servers (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "servers_TSQL"
  - "sys.servers_TSQL"
  - "servers"
  - "sys.servers"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.servers catalog view"
ms.assetid: 4e774ed9-4e83-4726-9f1d-8efde8f9feff
caps.latest.revision: 53
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.servers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row per linked or remote server registered, and a row for the local server that has **server_id** = 0.  
  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**server_id**|**int**|Local ID of linked server.|  
|**name**|**sysname**|When **server_id** = 0, this is the server name.<br /><br /> When **server_id** >0 , this is the local name of linked server.|  
|**product**|**sysname**|Product name of the linked server. "SQL Server" indicates this is another instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|**provider**|**sysname**|OLE DB provider name for connecting to linked server.|  
|**data_source**|**nvarchar(4000)**|OLE DB data source connection property.|  
|**location**|**nvarchar(4000)**|OLE DB location connection property. NULL if none.|  
|**provider_string**|**nvarchar(4000)**|OLE DB provider-string connection property.<br /><br /> Is NULL unless the caller has the ALTER ANY LINKED SERVER permission.|  
|**catalog**|**sysname**|OLEDB catalog connection property. NULL if none.|  
|**connect_timeout**|**int**|Connect time-out in seconds, 0 if none.|  
|**query_timeout**|**int**|Query time-out in seconds, 0 if none.|  
|**is_linked**|**bit**|0 = Is an old-style server added by using **sp_addserver**, with different RPC and distributed-transaction behavior.<br /><br /> 1 = Standard linked server.|  
|**is_remote_login_enabled**|**bit**|RPC option is set enabling incoming remote logins for this server.|  
|**is_rpc_out_enabled**|**bit**|Outgoing (from this server) RPC is enabled.|  
|**is_data_access_enabled**|**bit**|Server is enabled for distributed queries.|  
|**is_collation_compatible**|**bit**|Collation of remote data is assumed to be compatible with local data if no collation information is available.|  
|**uses_remote_collation**|**bit**|If 1, use the collation reported by the remote server; otherwise, use the collation specified by the next column.|  
|**collation_name**|**sysname**|Name of collation to use, or NULL if just use local.|  
|**lazy_schema_validation**|**bit**|If 1, schema validation is not checked at query startup.|  
|**is_system**|**bit**|This server can be accessed only by the internal system.|  
|**is_publisher**|**bit**|Server is a replication Publisher.|  
|**is_subscriber**|**bit**|Server is a replication Subscriber.|  
|**is_distributor**|**bit**|Server is a replication Distributor.|  
|**is_nonsql_subscriber**|**bit**|Server is a non-SQL Server replication Subscriber.|  
|**is_remote_proc_transaction_promotion_enabled**|**bit**|If 1, calling a remote stored procedure starts a distributed transaction and enlists the transaction with MS DTC. For more information, see [sp_serveroption &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-serveroption-transact-sql.md).|  
|**modify_date**|**datetime**|Date that server information was last changed.|  
  
## Permissions  
 The value in **provider_string** is always NULL unless the caller has the ALTER ANY LINKED SERVER permission.  
  
 Permissions are not required to view the local server (**server_id** = 0).  
  
 When you create a linked or remote server, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] creates a default login mapping to the **public** server role. This means that by default, all logins can view all linked and remote servers. To restrict visibility to these servers, remove the default login mapping by executing [sp_droplinkedsrvlogin](../../relational-databases/system-stored-procedures/sp-droplinkedsrvlogin-transact-sql.md) and specifying NULL for the *locallogin* parameter.  
  
 If the default login mapping is deleted, only users that have been explicitly added as a linked login or remote login can view the linked or remote servers for which they have a login. To view all linked and remote servers after the default login mapping is deleted requires the following permissions:  
  
-   ALTER ANY LINKED SERVER or ALTER ANY LOGIN ON SERVER  
  
-   Membership in the **setupadmin** or **sysadmin** fixed server roles  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Linked Servers Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/linked-servers-catalog-views-transact-sql.md)   
 [sp_addlinkedsrvlogin &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addlinkedsrvlogin-transact-sql.md)   
 [sp_addremotelogin &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addremotelogin-transact-sql.md)  
  
  