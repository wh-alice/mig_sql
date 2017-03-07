---
title: "sys.sysservers (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.sysservers"
  - "sysservers_TSQL"
  - "sysservers"
  - "sys.sysservers_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysservers system table"
  - "sys.sysservers compatibility view"
ms.assetid: d02f186f-c00f-44a6-b38d-dc78a3d2145b
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysservers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each server that an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] can access as an OLE DB data source.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**srvid**|**smallint**|ID (for local use only) of the remote server.|  
|**srvstatus**|**smallint**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**srvname**|**sysname**|Name of the server.|  
|**srvproduct**|**sysname**|Product name for the remote server.|  
|**providername**|**nvarchar(128)**|OLE DB provider name for access to this server.|  
|**datasource**|**nvarchar(4000)**|OLE DB data source value.|  
|**location**|**nvarchar(4000)**|OLE DB location value.|  
|**providerstring**|**nvarchar(4000)**|OLE DB provider string value.|  
|**schemadate**|**datetime**|Date this row was last updated.|  
|**topologyx**|**int**|Not used.|  
|**topologyy**|**int**|Not used.|  
|**catalog**|**sysname**|Catalog that is used when a connection is made to an OLE DB provider.|  
|**srvcollation**|**sysname**|The collation of the server.|  
|**connecttimeout**|**int**|Time-out setting for the server-connection.|  
|**querytimeout**|**int**|Time-out setting for queries against the server.|  
|**srvnetname**|**char(30)**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**isremote**|**bit**|1 = Server is a remote server.<br /><br /> 0 = Server is a linked server.|  
|**rpc**|**bit**|1 = **sp_serveroption@rpc** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@rpc** set to **false** or **off**.|  
|**pub**|**bit**|1 = **sp_serveroption@pub** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@pub** set to **false** or **off**.|  
|**sub**|**bit**|1 = **sp_serveroption@sub** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@sub** set to **false** or **off**.|  
|**dist**|**bit**|1 = **sp_serveroption@dist** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@dist** set to **false** or **off**.|  
|**dpub**|**bit**|1 = **sp_serveroption@dpub** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@dpub** set to **false** or **off**.|  
|**rpcout**|**bit**|1 = **sp_serveroption@rpc out** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@rpc out** set to **false** or **off**.|  
|**dataaccess**|**bit**|1 = **sp_serveroption@data access** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@data access** set to **false** or **off**.|  
|**collationcompatible**|**bit**|1 = **sp_serveroption@collation compatible** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@collation compatible** set to **false** or **off**.|  
|**system**|**bit**|1 = **sp_serveroption@system** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@system** set to **false** or **off**.|  
|**useremotecollation**|**bit**|1 = **sp_serveroption@remote collation** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@remote collation** set to **false** or **off**.|  
|**lazyschemavalidation**|**bit**|1 = **sp_serveroption@lazy schema validation** set to **true** or **on**.<br /><br /> 0 = **sp_serveroption@lazy schema validation** set to **false** or **off**.|  
|**collation**|**sysname**|Server collation as set by **sp_serveroption@collation name**.|  
|**nonsqlsub**|bit|0 = server is an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]<br /><br /> 1 = server is not an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  