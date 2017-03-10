---
title: "DROP TRIGGER (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-10-28"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DROP TRIGGER"
  - "DROP_TRIGGER_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "renaming triggers"
  - "triggers [SQL Server], removing"
  - "DDL triggers, removing"
  - "DROP TRIGGER statement"
  - "deleting triggers"
  - "dropping triggers"
  - "removing triggers"
  - "DML triggers, removing"
ms.assetid: 092d0d71-9f1e-4e38-a1c4-2487adfa5b4e
caps.latest.revision: 53
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP TRIGGER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Removes one or more DML or DDL triggers from the current database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
      -- SQL Server Syntax  
  
Trigger on an INSERT, UPDATE, or DELETE statement to a table or view (DML Trigger)  
  
DROP TRIGGER [ IF EXISTS ] [schema_name.]trigger_name [ ,...n ] [ ; ]  
  
Trigger on a CREATE, ALTER, DROP, GRANT, DENY, REVOKE or UPDATE statement (DDL Trigger)  
  
DROP TRIGGER [ IF EXISTS ] trigger_name [ ,...n ]   
ON { DATABASE | ALL SERVER }   
[ ; ]  
  
Trigger on a LOGON event (Logon Trigger)  
  
DROP TRIGGER [ IF EXISTS ] trigger_name [ ,...n ]   
ON ALL SERVER  
  
```  
  
```  
  
      -- Windows Azure SQL Database Syntax  
  
Trigger on an INSERT, UPDATE, or DELETE statement to a table or view (DML Trigger)   
  
DROP TRIGGER [schema_name.]trigger_name [ ,...n ] [ ; ]   
  
Trigger on a CREATE, ALTER, DROP, GRANT, DENY, REVOKE or UPDATE statement (DDL Trigger)   
  
DROP TRIGGER trigger_name [ ,...n ]   
ON { DATABASE }   
[ ; ]  
  
```  
  
## Arguments  
 *IF EXISTS*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 Conditionally drops the trigger only if it already exists.  
  
 *schema_name*  
 Is the name of the schema to which a DML trigger belongs. DML triggers are scoped to the schema of the table or view on which they are created. *schema_name* cannot be specified for DDL or logon triggers.  
  
 *trigger_name*  
 Is the name of the trigger to remove. To see a list of currently created triggers, use [sys.server_assembly_modules](../../relational-databases/reference/system-catalog-views/sys.triggers-transact-sql.md) or [sys.server_triggers](../../relational-databases/reference/system-catalog-views/sys.server-triggers-transact-sql.md).  
  
 DATABASE  
 Indicates the scope of the DDL trigger applies to the current database. DATABASE must be specified if it was also specified when the trigger was created or modified.  
  
 ALL SERVER  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Indicates the scope of the DDL trigger applies to the current server. ALL SERVER must be specified if it was also specified when the trigger was created or modified. ALL SERVER also applies to logon triggers.  
  
> [!NOTE]  
>  This option is not available in a contained database.  
  
## Remarks  
 You can remove a DML trigger by dropping it or by dropping the trigger table. When a table is dropped, all associated triggers are also dropped.  
  
 When a trigger is dropped, information about the trigger is removed from the **sys.objects**, **sys.triggers** and **sys.sql_modules** catalog views.  
  
 Multiple DDL triggers can be dropped per DROP TRIGGER statement only if all triggers were created using identical ON clauses.  
  
 To rename a trigger, use DROP TRIGGER and CREATE TRIGGER. To change the definition of a trigger, use ALTER TRIGGER.  
  
 For more information about determining dependencies for a specific trigger, see [sys.sql_expression_dependencies](../../relational-databases/reference/system-catalog-views/sys.sql-expression-dependencies-transact-sql.md), [sys.dm_sql_referenced_entities &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-sql-referenced-entities-transact-sql.md), and [sys.dm_sql_referencing_entities &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-sql-referencing-entities-transact-sql.md).  
  
 For more information about viewing the text of the trigger, see [sp_helptext &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-helptext-transact-sql.md) and [sys.sql_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md).  
  
 For more information about viewing a list of existing triggers, see [sys.triggers &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.triggers-transact-sql.md) and [sys.server_triggers &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-triggers-transact-sql.md).  
  
## Permissions  
 To drop a DML trigger requires ALTER permission on the table or view on which the trigger is defined.  
  
 To drop a DDL trigger defined with server scope (ON ALL SERVER) or a logon trigger requires CONTROL SERVER permission in the server. To drop a DDL trigger defined with database scope (ON DATABASE) requires ALTER ANY DATABASE DDL TRIGGER permission in the current database.  
  
## Examples  
  
### A. Dropping a DML trigger  
 The following example drops the `employee_insupd` trigger in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database. (Beginning with [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] you can use the DROP TRIGGER IF EXISTS syntax.)  
  
```  
IF OBJECT_ID ('employee_insupd', 'TR') IS NOT NULL  
   DROP TRIGGER employee_insupd;  
  
```  
  
### B. Dropping a DDL trigger  
 The following example drops DDL trigger `safety`.  
  
> [!IMPORTANT]  
>  Because DDL triggers are not schema-scoped and, therefore do not appear in the **sys.objects** catalog view, the OBJECT_ID function cannot be used to query whether they exist in the database. Objects that are not schema-scoped must be queried by using the appropriate catalog view. For DDL triggers, use **sys.triggers**.  
  
```  
DROP TRIGGER safety  
ON DATABASE;  
  
```  
  
## See Also  
 [ALTER TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/alter-trigger-transact-sql.md)   
 [CREATE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/create-trigger-transact-sql.md)   
 [ENABLE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/enable-trigger-transact-sql.md)   
 [DISABLE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/disable-trigger-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)   
 [Get Information About DML Triggers](../../relational-databases/triggers/get-information-about-dml-triggers.md)   
 [sp_help &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-help-transact-sql.md)   
 [sp_helptrigger &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-helptrigger-transact-sql.md)   
 [sys.triggers &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.triggers-transact-sql.md)   
 [sys.trigger_events &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.trigger-events-transact-sql.md)   
 [sys.sql_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md)   
 [sys.assembly_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.assembly-modules-transact-sql.md)   
 [sys.server_triggers &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-triggers-transact-sql.md)   
 [sys.server_trigger_events &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-trigger-events-transact-sql.md)   
 [sys.server_sql_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-sql-modules-transact-sql.md)   
 [sys.server_assembly_modules &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-assembly-modules-transact-sql.md)  
  
  