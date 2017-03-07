---
title: "sys.dm_xe_database_sessions (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 33ea5179-16bb-4abd-96cc-9bc696e80987
caps.latest.revision: 7
ms.author: "genemi"
manager: "jhubbard"
---
# sys.dm_xe_database_sessions (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Returns information about session events. Events are discrete execution points. Predicates can be applied to events to stop them from firing if the event does not contain the required information.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)] V12 and any later versions.|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|event_session_address|**varbinary(8)**|The memory address of the event session. Is not nullable.|  
|event_name|**nvarchar(60)**|The name of the event that an action is bound to. Is not nullable.|  
|event_package_guid|**uniqueidentifier**|The GUID for the package containing the event. Is not nullable.|  
|event_predicate|**nvarchar(2048)**|An XML representation of the predicate tree that is applied to the event. Is nullable.|  
  
## Permissions  
 Requires VIEW DATABASE STATE permission.  
  
### Relationship Cardinalities  
As of 2015-07-13, 'sys.dm_xe_objects' is one of these XEvents DMVs that do Not contain '_database' in their name. Not a typo or error in the following table's right-side column. The name is the same in Microsoft SQL Server and Azure SQL Database. GeneMi.  
  
|From|To|Relationship|  
|--------|------|----------------|  
|sys.dm_xe_database_session_events.event_session_address|sys.dm_xe_database_sessions.address|Many-to-one|  
|sys.dm_xe_database_session_events.event_package_guid, sys.dm_xe_database_session_events.event_name|sys.dm_xe_objects.name, sys.dm_xe_objects.package_guid|Many-to-one|  
  
## See Also  
[Extended events in Azure SQL Database](http://azure.microsoft.com/documentation/articles/sql-database-xevent-db-diff-from-svr/)  
[Extended Events](../../../relational-databases/extended-events/extended-events.md)  
  
 