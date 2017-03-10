---
title: "sys.dm_xe_database_session_object_columns (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 0e6adc54-4d97-4ef0-bf4f-b4538d69f136
caps.latest.revision: 8
ms.author: "genemi"
manager: "jhubbard"
---
# sys.dm_xe_database_session_object_columns (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Shows the configuration values for objects that are bound to a session.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)] V12 and any later versions.|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|event_session_address|**varbinary(8)**|The memory address of the event session. Has a many-to-one relationship with sys.dm_xe_database_sessions.address. Is not nullable.|  
|column_name|**nvarchar(60)**|The name of the configuration value. Is not nullable.|  
|column_id|**int**|The ID of the column. Is unique within the object. Is not nullable.|  
|column_value|**nvarchar(2048)**|The configured value of the column. Is nullable.|  
|object_type|**nvarchar(60)**|The type of the object.  Is not nullable.object_type is one of:<br /><br /> event<br /><br /> target|  
|object_name|**nvarchar(60)**|The name of the object to which this column belongs. Is not nullable.|  
|object_package_guid|**uniqueidentifier**|The GUID of the package that contains the object. Is not nullable.|  
  
## Permissions  
 Requires VIEW DATABASE STATE permission.  
  
### Relationship Cardinalities  
  
|From|To|Relationship|  
|----------|--------|------------------|  
|dm_xe_database_session_object_columns.object_name<br /><br /> dm_xe_database_session_object_columns.object_package_guid|sys.dm_xe_objects.package_guid<br /><br /> sys.dm_xe_objects.name|Many-to-one|  
|dm_xe_database_session_object_columns.column_name<br /><br /> dm_xe_database_session_object_columns.column_id|sys.dm_xe_object_columns.name<br /><br /> sys.dm_xe_object_columns.column_id|Many-to-one|  
  
## See Also  
 [Extended Events](../../../relational-databases/extended-events/extended-events.md)  
  
  