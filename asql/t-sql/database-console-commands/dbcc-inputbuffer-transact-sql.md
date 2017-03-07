---
title: "DBCC INPUTBUFFER (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-01"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DBCC INPUTBUFFER"
  - "INPUTBUFFER"
  - "DBCC_INPUTBUFFER_TSQL"
  - "INPUTBUFFER_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "input buffers [SQL Server]"
  - "last statement from client"
  - "displaying last statement sent"
  - "statements [SQL Server], last statement"
  - "DBCC INPUTBUFFER statement"
ms.assetid: a44d702b-b3fb-4950-8c8f-1adcf3f514ba
caps.latest.revision: 51
ms.author: "jhubbard"
manager: "jhubbard"
---
# DBCC INPUTBUFFER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Displays the last statement sent from a client to an instance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DBCC INPUTBUFFER ( session_id [ , request_id ])  
[WITH NO_INFOMSGS ]  
```  
  
## Arguments  
 *session_id*  
 Is the session ID associated with each active primary connection.  
  
 *request_id*  
 Is the exact request (batch) to search for within the current session.  
  
 The following query returns *request_id*:  
  
```  
SELECT request_id   
FROM sys.dm_exec_requests   
WHERE session_id = @@spid;  
```  
  
 WITH  
 Enables options to be specified.  
  
 NO_INFOMSGS  
 Suppresses all informational messages that have severity levels from 0 through 10.  
  
## Result Sets  
 DBCC INPUTBUFFER returns a rowset with the following columns.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**EventType**|**nvarchar(30)**|Event type. This could be **RPC Event** or **Language Event**. The output will be **No Event** when no last event was detected.|  
|**Parameters**|**smallint**|0 = Text<br /><br /> 1- *n* = Parameters|  
|**EventInfo**|**nvarchar(4000)**|For an **EventType** of RPC, **EventInfo** contains only the procedure name. For an **EventType** of Language, only the first 4000 characters of the event are displayed.|  
  
 For example, DBCC INPUTBUFFER returns the following result set when the last event in the buffer is DBCC INPUTBUFFER(11).  
  
```  
EventType      Parameters EventInfo               
-------------- ---------- ---------------------   
Language Event 0          DBCC INPUTBUFFER (11)  
  
(1 row(s) affected)  
  
DBCC execution completed. If DBCC printed error messages, contact your system administrator.  
```  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] requires one of the following:  
  
-   User must be a member of the **sysadmin** fixed server role.  
  
-   User must have VIEW SERVER STATE permission.  
  
-   *session_id* must be the same as the session ID on which the command is being run. To determine the session ID execute the following query:  
  
    ```  
    SELECT @@spid;  
    ```  
  
 On [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] admin account.  
  
## Examples  
 The following example runs `DBCC INPUTBUFFER` on a second connection while a long transaction is running on a previous connection.  
  
```  
CREATE TABLE dbo.T1 (Col1 int, Col2 char(3));  
GO  
DECLARE @i int = 0;  
BEGIN TRAN  
SET @i = 0;  
WHILE (@i < 100000)  
BEGIN  
INSERT INTO dbo.T1 VALUES (@i, CAST(@i AS char(3)));  
SET @i += 1;  
END;  
COMMIT TRAN;  
--Start new connection #2.  
DBCC INPUTBUFFER (52);  
```  
  
## See Also  
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)   
 [sp_who &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-who-transact-sql.md)  
  
  