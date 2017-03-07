---
title: "sys.dm_pdw_nodes_database_encryption_keys (Transact-SQL) | Microsoft Docs"
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
ms.assetid: e7fd02b2-5d7e-4816-a0af-b58ae2ac3f7a
caps.latest.revision: 9
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_nodes_database_encryption_keys (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../../a9retired/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Returns information about the encryption state of a database and its associated database encryption keys. **sys.dm_pdw_nodes_database_encryption_keys** provides this information for each node. For more information about database encryption, see [Transparent Data Encryption (SQL Server PDW)](http://msdn.microsoft.com/en-us/b82ad21d-09dd-43dd-8fab-bcf2c8c3ac6d).  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|database_id|**int**|ID of the physical database on each node.|  
|encryption_state|**int**|Indicates whether the database on this node is encrypted or not encrypted.<br /><br /> 0 = No database encryption key present, no encryption<br /><br /> 1 = Unencrypted<br /><br /> 2 = Encryption in progress<br /><br /> 3 = Encrypted<br /><br /> 4 = Key change in progress<br /><br /> 5 = Decryption in progress<br /><br /> 6 = Protection change in progress (The certificate that is encrypting the database encryption key is being changed.)|  
|create_date|**datetime**|Displays the date the encryption key was created.|  
|regenerate_date|**datetime**|Displays the date the encryption key was regenerated.|  
|modify_date|**datetime**|Displays the date the encryption key was modified.|  
|set_date|**datetime**|Displays the date the encryption key was applied to the database.|  
|opened_date|**datetime**|Shows when the database key was last opened.|  
|key_algorithm|**varchar(?)**|Displays the algorithm that is used for the key.|  
|key_length|**int**|Displays the length of the key.|  
|encryptor_thumbprint|**varbin**|Shows the thumbprint of the encryptor.|  
|percent_complete|**real**|Percent complete of the database encryption state change. This will be 0 if there is no state change.|  
|node_id|**int**|Unique numeric id associated with the node.|  
  
## Permissions  
 Requires the VIEW SERVER STATE permission on the server.  
  
## Examples: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]  
 The following example joins `sys.dm_pdw_nodes_database_encryption_keys` to other system tables to indicate the encryption state for each node of the TDE protected databases.  
  
```  
SELECT D.database_id AS DBIDinMaster, D.name AS UserDatabaseName,   
PD.pdw_node_id AS NodeID, DM.physical_name AS PhysDBName,   
keys.encryption_state  
FROM sys.dm_pdw_nodes_database_encryption_keys AS keys  
JOIN sys.pdw_nodes_pdw_physical_databases AS PD  
    ON keys.database_id = PD.database_id AND keys.pdw_node_id = PD.pdw_node_id  
JOIN sys.pdw_database_mappings AS DM  
    ON DM.physical_name = PD.physical_name  
JOIN sys.databases AS D  
    ON D.database_id = DM.database_id  
ORDER BY D.database_id, PD.pdw_node_ID;  
```  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)   
 [CREATE DATABASE ENCRYPTION KEY &#40;Transact-SQL&#41;](../../../t-sql/statements/create-database-encryption-key-transact-sql.md)   
 [ALTER DATABASE ENCRYPTION KEY &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-database-encryption-key-transact-sql.md)   
 [DROP DATABASE ENCRYPTION KEY &#40;Transact-SQL&#41;](../../../t-sql/statements/drop-database-encryption-key-transact-sql.md)  
  
  

