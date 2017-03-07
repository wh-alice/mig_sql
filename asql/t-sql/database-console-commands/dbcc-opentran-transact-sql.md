---
title: "DBCC OPENTRAN (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DBCC_OPENTRAN_TSQL"
  - "DBCC OPENTRAN"
  - "OPENTRAN_TSQL"
  - "OPENTRAN"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "status information [SQL Server], transactions"
  - "transactions [SQL Server], status information"
  - "DBCC OPENTRAN statement"
  - "open transactions"
  - "displaying transaction information"
  - "checking open transactions"
  - "oldest transactions [SQL Server]"
ms.assetid: 63163843-226f-42d3-9e2c-b634fbf06943
caps.latest.revision: 40
ms.author: "jhubbard"
manager: "jhubbard"
---
# DBCC OPENTRAN (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  DBCC OPENTRAN helps to identify active transactions that may be preventing log truncation. DBCC OPENTRAN displays information about the oldest active transaction and the oldest distributed and nondistributed replicated transactions, if any, within the transaction log of the specified database. Results are displayed only if there is an active transaction that exists in the log or if the database contains replication information. An informational message is displayed if there are no active transactions in the log.  
  
> [!NOTE]  
>  DBCC OPENTRAN is not supported for non-[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publishers.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DBCC OPENTRAN   
[   
    ( [ database_name | database_id | 0 ] ) ]  
    { [ WITH TABLERESULTS ]  
      [ , [ NO_INFOMSGS ] ]  
    }  
]   
```  
  
## Arguments  
 *database_name* | *database_id*| 0  
 Is the name or ID of the database for which to display the oldest transaction information. If not specified, or if 0 is specified, the current database is used. Database names must comply with the rules for [identifiers](../../relational-databases/databases/database-identifiers.md).  
  
 TABLERESULTS  
 Specifies the results in a tabular format that can be loaded into a table. Use this option to create a table of results that can be inserted into a table for comparisons. When this option is not specified, results are formatted for readability.  
  
 NO_INFOMSGS  
 Suppresses all informational messages.  
  
## Remarks  
 Use DBCC OPENTRAN to determine whether an open transaction exists within the transaction log. When you use the BACKUP LOG statement, only the inactive part of the log can be truncated; an open transaction can prevent the log from truncating completely. To identify an open transaction, use sp_who to obtain the system process ID.  
  
## Result Sets  
 DBCC OPENTRAN returns the following result set when there are no open transactions:  
  
```  
No active open transactions.  
DBCC execution completed. If DBCC printed error messages, contact your system administrator.  
```  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role or the **db_owner** fixed database role.  
  
## Examples  
  
### A. Returning the oldest active transaction  
 The following example obtains transaction information for the current database. Results may vary.  
  
```tsql  
CREATE TABLE T1(Col1 int, Col2 char(3));  
GO  
BEGIN TRAN  
INSERT INTO T1 VALUES (101, 'abc');  
GO  
DBCC OPENTRAN;  
ROLLBACK TRAN;  
GO  
DROP TABLE T1;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Transaction information for database 'master'.`  
  
 `Oldest active transaction:`  
  
 `SPID (server process ID) : 52`  
  
 `UID (user ID) : -1`  
  
 `Name          : user_transaction`  
  
 `LSN           : (518:1576:1)`  
  
 `Start time    : Jun  1 2004  3:30:07:197PM`  
  
 `SID           : 0x010500000000000515000000a065cf7e784b9b5fe77c87709e611500`  
  
 `DBCC execution completed. If DBCC printed error messages, contact your system administrator.`  
  
> [!NOTE]  
>  The "UID (user ID)" result is meaningless and will be removed in a future version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
### B. Specifying the WITH TABLERESULTS option  
 The following example loads the results of the DBCC OPENTRAN command into a temporary table.  
  
```tsql  
-- Create the temporary table to accept the results.  
CREATE TABLE #OpenTranStatus (  
   ActiveTransaction varchar(25),  
   Details sql_variant   
   );  
-- Execute the command, putting the results in the table.  
INSERT INTO #OpenTranStatus   
   EXEC ('DBCC OPENTRAN WITH TABLERESULTS, NO_INFOMSGS');  
  
-- Display the results.  
SELECT * FROM #OpenTranStatus;  
GO  
```  
  
## See Also  
 [BEGIN TRANSACTION &#40;Transact-SQL&#41;](../Topic/BEGIN%20TRANSACTION%20\(Transact-SQL\).md)   
 [COMMIT TRANSACTION &#40;Transact-SQL&#41;](../Topic/COMMIT%20TRANSACTION%20\(Transact-SQL\).md)   
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)   
 [DB_ID &#40;Transact-SQL&#41;](../../t-sql/functions/db-id-transact-sql.md)   
 [ROLLBACK TRANSACTION &#40;Transact-SQL&#41;](../Topic/ROLLBACK%20TRANSACTION%20\(Transact-SQL\).md)  
  
  