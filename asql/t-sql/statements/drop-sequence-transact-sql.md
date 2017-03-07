---
title: "DROP SEQUENCE (Transact-SQL) | Microsoft Docs"
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
  - "DROP SEQUENCE"
  - "DROP_SEQUENCE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DROP SEQUENCE statement"
  - "sequence number object, dropping"
ms.assetid: c25772d3-61af-4aa7-b58b-a6f67a793e3d
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP SEQUENCE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Removes a sequence object from the current database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DROP SEQUENCE [ IF EXISTS ] { [ database_name . [ schema_name ] . | schema_name. ]    sequence_name } [ ,...n ]  
 [ ; ]  
```  
  
## Arguments  
 *IF EXISTS*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 Conditionally drops the sequence only if it already exists.  
  
 *database_name*  
 Is the name of the database in which the sequence object was created.  
  
 *schema_name*  
 Is the name of the schema to which the sequence object belongs.  
  
 *sequence_name*  
 Is the name of the sequence to be dropped. Type is **sysname**.  
  
## Remarks  
 After generating a number, a sequence object has no continuing relationship to the number it generated, so the sequence object can be dropped, even though the number generated is still in use.  
  
 A sequence object can be dropped while it is referenced by a stored procedure, or trigger, because it is not schema bound. A sequence object cannot be dropped if it is referenced as a default value in a table. The error message will list the object referencing the sequence.  
  
 To list all sequence objects in the database, execute the following statement.  
  
```  
SELECT sch.name + '.' + seq.name AS [Sequence schema and name]   
    FROM sys.sequences AS seq  
    JOIN sys.schemas AS sch  
        ON seq.schema_id = sch.schema_id ;  
GO  
```  
  
## Security  
  
### Permissions  
 Requires ALTER or CONTROL permission on the schema.  
  
### Audit  
 To audit **DROP SEQUENCE**, monitor the **SCHEMA_OBJECT_CHANGE_GROUP**.  
  
## Examples  
 The following example removes a sequence object named `CountBy1` from the current database.  
  
```  
DROP SEQUENCE CountBy1 ;  
GO  
```  
  
## See Also  
 [ALTER SEQUENCE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-sequence-transact-sql.md)   
 [CREATE SEQUENCE &#40;Transact-SQL&#41;](../../t-sql/statements/create-sequence-transact-sql.md)   
 [NEXT VALUE FOR &#40;Transact-SQL&#41;](../../t-sql/functions/next-value-for-transact-sql.md)   
 [Sequence Numbers](../../relational-databases/sequence-numbers/sequence-numbers.md)  
  
  