---
title: "sys.conversation_priorities (Transact-SQL) | Microsoft Docs"
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
  - "conversation_priorities_TSQL"
  - "conversation_priorities"
  - "sys.conversation_priorities_TSQL"
  - "sys.conversation_priorities"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "conversations [Service Broker], priorities"
  - "Service Broker, conversations"
  - "sys.conversation_priorities catalog view"
ms.assetid: 7cbb9171-3310-4aae-8458-755c882d6462
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.conversation_priorities (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each conversation priority created in the current database, as shown in the following table: 
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|Priority_id|**int**|A number that uniquely identifies the conversation priority. Not NULLABLE.|  
|name|**sysname**|Name of the conversation priority. Not NULLABLE.|  
|service_contract_id|**int**|The identifier of the contract that is specified for the conversation priority. This can be joined on the service_contract_id column in sys.service_contracts. NULLABLE.|  
|local_service_id|**int**|The identifier of the service that is specified as the local service for the conversation priority. This column can be joined on the service_id column in sys.services. NULLABLE.|  
|remote_service_name|**nvarchar(256)**|The name of the service that is specified as the remote service for the conversation priority. NULLABLE.|  
|priority|**tinyint**|The priority level that is specified in this conversation priority. Not NULLABLE.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Examples  
 The following example lists the conversation priorities by using joins to show the contract and local service names.  
  
```  
SELECT scp.name AS priority_name,  
       ssc.name AS contract_name,  
       ssvc.name AS local_service_name,  
       scp.remote_service_name,  
       scp.priority AS priority_level  
FROM sys.conversation_priorities AS scp  
    INNER JOIN sys.service_contracts AS ssc  
       ON scp.service_contract_id = ssc.service_contract_id  
    INNER JOIN sys.services AS ssvc  
       ON scp.local_service_id = ssvc.service_id  
ORDER BY priority_name, contract_name,  
         local_service_name, remote_service_name;  
  
```  
  
## See Also  
 [ALTER BROKER PRIORITY &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-broker-priority-transact-sql.md)   
 [CREATE BROKER PRIORITY &#40;Transact-SQL&#41;](../../../t-sql/statements/create-broker-priority-transact-sql.md)   
 [DROP BROKER PRIORITY &#40;Transact-SQL&#41;](../../../t-sql/statements/drop-broker-priority-transact-sql.md)   
 [sys.services &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.services-transact-sql.md)   
 [sys.service_contracts &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.service-contracts-transact-sql.md)  
  
  