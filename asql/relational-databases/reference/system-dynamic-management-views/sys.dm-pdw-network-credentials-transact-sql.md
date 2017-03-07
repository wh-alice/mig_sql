---
title: "sys.dm_pdw_network_credentials (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-data-warehouse"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: d4fee3ad-6285-4ea5-8513-5e6eb617abb0
caps.latest.revision: 8
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_network_credentials (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Returns a list of all network credentials stored in the [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)] appliance for all target servers. Results are listed for the Control node, and every Compute node.  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|pdw_node_id|**int**|Unique numeric id associated with the node.|  
|target_server_name|**nvarchar(32)**|IP address of the target server that [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)] will access by using the username and password credentials.|  
|username|**nvarchar(32)**|Username for which the password is stored.|  
|last_modified|**datetime**|Datetime of the last operation that modified the credential.|  
  
## Permissions  
 Requires VIEW SERVER STATE.  
  
## General Remarks  
 The key for this dynamic management view is *pdw_node_id* plus *target_server_name*.  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)  
  
  