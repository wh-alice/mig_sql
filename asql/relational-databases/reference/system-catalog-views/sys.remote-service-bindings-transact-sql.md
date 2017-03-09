---
title: "sys.remote_service_bindings (Transact-SQL) | Microsoft Docs"
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
  - "sys.remote_service_bindings_TSQL"
  - "remote_service_bindings_TSQL"
  - "remote_service_bindings"
  - "sys.remote_service_bindings"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.remote_service_bindings catalog view"
ms.assetid: 4e1a885d-eed1-4993-9c87-e6fd781f437d
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.remote_service_bindings (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This catalog view contains a row per remote service binding. 
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|Name of this remote service binding. Not NULLABLE.|  
|**remote_service_binding_id**|**int**|ID of this remote service binding. Not NULLABLE.|  
|**principal_id**|**int**|ID of the database principal that owns this remote service binding. NULLABLE.|  
|**remote_service_name**|**nvarchar(256)**|Name of the remote service that this binding applies to. NULLABLE.|  
|**service_contract_id**|**int**|ID of the contract that this binding applies to. A value of 0 is a wildcard that means this binding applies to all contracts for the service. Not NULLABLE.|  
|**remote_principal_id**|**int**|ID for the user specified in the remote service binding. Service Broker uses a certificate owned by this user for communicating with the specified service on the specified contracts. NULLABLE.|  
|**is_anonymous_on**|**bit**|This remote service binding uses ANONYMOUS security. The identity of the user that begins the conversation is not provided to the target service. Not NULLABLE.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
  