---
title: "Get Information About DDL Triggers | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-ddl"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "metadata [SQL Server], triggers"
  - "status information [SQL Server], DDL triggers"
  - "DDL triggers, metadata"
ms.assetid: 462becea-292a-4b9e-bb98-533e89733911
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# Get Information About DDL Triggers
  The catalog views listed in this section can be used to get information about DDL Triggers.  
  
 **To get information about the events or event groups on which a DDL trigger can fire.**  
  
-   [sys.trigger_event_types &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.trigger-event-types-transact-sql.md)  
  
 **To view the dependencies of a trigger**  
  
-   [sys.sql_expression_dependencies &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.sql-expression-dependencies-transact-sql.md)  
  
-   [sys.dm_sql_referenced_entities &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-sql-referenced-entities-transact-sql.md)  
  
-   [sys.dm_sql_referencing_entities &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-sql-referencing-entities-transact-sql.md)  
  
## Database-Scoped DDL Triggers  
 **To get information about database-scoped triggers**  
  
-   [sys.triggers &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.triggers-transact-sql.md)  
  
 **To get information about database events that fire triggers**  
  
-   [sys.trigger_events &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.trigger-events-transact-sql.md)  
  
 **To view the definition of a database-scoped trigger**  
  
-   [sys.sql_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md)  
  
 **To get information about CLR database-scoped triggers**  
  
-   [sys.assembly_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.assembly-modules-transact-sql.md)  
  
## Server-Scoped DDL Triggers  
 **To get information about server-scoped triggers**  
  
-   [sys.server_triggers &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-triggers-transact-sql.md)  
  
 **To get information about server events that fire triggers**  
  
-   [sys.server_trigger_events &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-trigger-events-transact-sql.md)  
  
 **To view the definition of a server-scoped trigger**  
  
-   [sys.server_sql_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-sql-modules-transact-sql.md)  
  
 **To get information about CLR server-scoped triggers**  
  
-   [sys.server_assembly_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-assembly-modules-transact-sql.md)  
  
## See Also  
 [DDL Triggers](../../relational-databases/triggers/ddl-triggers.md)  
  
  