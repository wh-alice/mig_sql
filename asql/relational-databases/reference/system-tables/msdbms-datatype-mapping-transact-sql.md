---
title: "MSdbms_datatype_mapping (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "MSdbms_datatype_mapping_TSQL"
  - "MSdbms_datatype_mapping"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSdbms_datatype_mapping system table"
ms.assetid: 13289a0b-dfb0-4771-ad80-4c5f83cded99
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSdbms_datatype_mapping (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSdbms_datatype_mapping** table contains the allowable data type mappings from the data type in the source database management system (DBMS) to one or more specific data types in the destination DBMS. This table is stored in the **msdb** database and is used for heterogeneous database replication.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**datatype_mapping_id**|**int**|Identifies each unique data type mapping.|  
|**map_id**|**int**|Identifies the source data type.|  
|**dest_datatype_id**|**int**|Identifies the destination data type.|  
|**dest_precision**|**bigint**|Defines the precision of the destination data type, where a value of NULL means that precision is not used, and a value of **-1** means that the precision of the source data type is used.|  
|**dest_scale**|**int**|Defines the scale of the destination data type, where a value of NULL means that scale is not used, and a value of **-1** means that the scale of the source data type is used.|  
|**dest_length**|**bigint**|Defines the length of the destination data type, where a value of NULL means that length is not used, and a value of **-1** means that the length of the source data type is used.|  
|**dest_nullable**|**bit**|Indicates whether the destination column in the mapping allows NULL values, where a value of NULL means that this definition is not required.|  
|**dest_createparams**|**int**|The bitmap that describes what combination of length, precision, and scale are applicable for each data type, which includes:<br /><br /> **0x1** = PRECISION.<br /><br /> **0x2** = SCALE.<br /><br /> **0x4** = LENGTH.|  
  
## See Also  
 [Heterogeneous Database Replication](../../../relational-databases/replication/non-sql/heterogeneous-database-replication.md)   
 [Specify Data Type Mappings for an Oracle Publisher](../../../relational-databases/replication/publish/specify-data-type-mappings-for-an-oracle-publisher.md)   
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  