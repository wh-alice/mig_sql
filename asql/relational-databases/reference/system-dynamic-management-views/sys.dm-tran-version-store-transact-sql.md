---
title: "sys.dm_tran_version_store (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_tran_version_store_TSQL"
  - "sys.dm_tran_version_store"
  - "dm_tran_version_store"
  - "dm_tran_version_store_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_tran_version_store dynamic management view"
ms.assetid: 7ab44517-0351-4f91-bdd9-7cf940f03c51
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_tran_version_store (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a virtual table that displays all version records in the version store. **sys.dm_tran_version_store** is inefficient to run because it queries the entire version store, and the version store can be very large.  
  
 Each versioned record is stored as binary data together with some tracking or status information. Similar to records in database tables, version-store records are stored in 8192-byte pages. If a record exceeds 8192 bytes, the record will be split across two different records.  
  
 Because the versioned record is stored as binary, there are no problems with different collations from different databases. Use **sys.dm_tran_version_store** to find the previous versions of the rows in binary representation as they exist in the version store.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[sqldbesa](../../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
## Syntax  
  
```  
  
sys.dm_tran_version_store  
```  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**transaction_sequence_num**|**bigint**|Sequence number of the transaction that generates the record version.|  
|**version_sequence_num**|**bigint**|Version record sequence number. This value is unique within the version-generating transaction.|  
|**database_id**|**int**|Database ID of the versioned record.|  
|**rowset_id**|**bigint**|Rowset ID of the record.|  
|**status**|**tinyint**|Indicates whether a versioned record has been split across two records. If the value is 0, the record is stored in one page. If the value is 1, the record is split into two records that are stored on two different pages.|  
|**min_length_in_bytes**|**smallint**|Minimum length of the record in bytes.|  
|**record_length_first_part_in_bytes**|**smallint**|Length of the first part of the versioned record in bytes.|  
|**record_image_first_part**|**varbinary(8000)**|Binary image of the first part of version record.|  
|**record_length_second_part_in_bytes**|**smallint**|Length of the second part of version record in bytes.|  
|**record_image_second_part**|**varbinary(8000)**|Binary image of the second part of the version record.|  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] admin account.  
  
## Examples  
 The following example uses a test scenario in which four concurrent transactions, each identified by a transaction sequence number (XSN), are running in a database that has the ALLOW_SNAPSHOT_ISOLATION and READ_COMMITTED_SNAPSHOT options set to ON. The following transactions are running:  
  
-   XSN-57 is an update operation under serializable isolation.  
  
-   XSN-58 is the same as XSN-57.  
  
-   XSN-59 is a select operation under snapshot isolation.  
  
-   XSN-60 is the same as XSN-59.  
  
 The following query is executed.  
  
```  
SELECT  
    transaction_sequence_num,  
    version_sequence_num,  
    database_id rowset_id,  
    status,  
    min_length_in_bytes,  
    record_length_first_part_in_bytes,  
    record_image_first_part,  
    record_length_second_part_in_bytes,  
    record_image_second_part  
  FROM sys.dm_tran_version_store;  
```  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
```  
transaction_sequence_num version_sequence_num database_id  
------------------------ -------------------- -----------  
57                      1                    9             
57                      2                    9             
57                      3                    9             
58                      1                    9             
  
rowset_id            status min_length_in_bytes  
-------------------- ------ -------------------  
72057594038321152    0      12                   
72057594038321152    0      12                   
72057594038321152    0      12                   
72057594038386688    0      16                   
  
record_length_first_part_in_bytes  
---------------------------------  
29                                 
29                                 
29                                 
33                                 
  
record_image_first_part                                               
--------------------------------------------------------------------  
0x50000C0073000000010000000200FCB000000001000000270000000000          
0x50000C0073000000020000000200FCB000000001000100270000000000          
0x50000C0073000000030000000200FCB000000001000200270000000000          
0x500010000100000002000000030000000300F800000000000000002E0000000000  
  
record_length_second_part_in_bytes record_image_second_part  
---------------------------------- ------------------------  
0                                  NULL  
0                                  NULL  
0                                  NULL  
0                                  NULL  
```  
  
 The output shows that XSN-57 has created three row versions from one table and XSN-58 has created one row version from another table.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Transaction Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/transaction-related-dynamic-management-views-and-functions-transact-sql.md)  
  
  