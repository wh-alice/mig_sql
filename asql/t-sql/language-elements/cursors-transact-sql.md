---
title: "Cursors (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "statements [SQL Server], cursors"
  - "functions [SQL Server], cursors"
  - "cursors [SQL Server], statements"
ms.assetid: 63000023-54fc-4efc-a30f-fb4d4db73aae
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# Cursors (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] statements produce a complete result set, but there are times when the results are best processed one row at a time. Opening a cursor on a result set allows processing the result set one row at a time. You can assign a cursor to a variable or parameter with a **cursor** data type.  
  
 Cursor operations are supported on these statements:  
  
 [CLOSE](../Topic/CLOSE%20\(Transact-SQL\).md)  
  
 [CREATE PROCEDURE](../../t-sql/statements/create-procedure-transact-sql.md)  
  
 [DEALLOCATE](../Topic/DEALLOCATE%20\(Transact-SQL\).md)  
  
 [DECLARE CURSOR](../Topic/DECLARE%20CURSOR%20\(Transact-SQL\).md)  
  
 [DECLARE @local_variable](../Topic/DECLARE%20@local_variable%20\(Transact-SQL\).md)  
  
 [DELETE](../../t-sql/statements/delete-transact-sql.md)  
  
 [FETCH](../Topic/FETCH%20\(Transact-SQL\).md)  
  
 [OPEN](../Topic/OPEN%20\(Transact-SQL\).md)  
  
 [UPDATE](../../t-sql/queries/update-transact-sql.md)  
  
 [SET](../../t-sql/statements/set-statements-transact-sql.md)  
  
 These system functions and system stored procedures also support cursors:  
  
 [@@CURSOR_ROWS](../../t-sql/functions/cursor-rows-transact-sql.md)  
  
 [CURSOR_STATUS](../../t-sql/functions/cursor-status-transact-sql.md)  
  
 [@@FETCH_STATUS](../../t-sql/functions/fetch-status-transact-sql.md)  
  
 [sp_cursor_list](../../relational-databases/reference/system-stored-procedures/sp-cursor-list-transact-sql.md)  
  
 [sp_describe_cursor](../../relational-databases/reference/system-stored-procedures/sp-describe-cursor-transact-sql.md)  
  
 [sp_describe_cursor_columns](../../relational-databases/reference/system-stored-procedures/sp-describe-cursor-columns-transact-sql.md)  
  
 [sp_describe_cursor_tables](../../relational-databases/reference/system-stored-procedures/sp-describe-cursor-tables-transact-sql.md)  
  
## See Also  
 [Cursors](../../relational-databases/cursors.md)  
  
  