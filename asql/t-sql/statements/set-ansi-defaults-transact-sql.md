---
title: "SET ANSI_DEFAULTS (Transact-SQL) | Microsoft Docs"
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
  - "SET ANSI_DEFAULTS"
  - "ANSI_DEFAULTS"
  - "SET_ANSI_DEFAULTS_TSQL"
  - "ANSI_DEFAULTS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ANSI_DEFAULTS option"
  - "SET ANSI_DEFAULTS statement"
ms.assetid: bd721d97-6e23-488b-8c8c-c0453d5b3b86
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET ANSI_DEFAULTS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Controls a group of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] settings that collectively specify some ISO standard behavior.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server  
  
SET ANSI_DEFAULTS { ON | OFF }  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
SET ANSI_DEFAULTS ON;  
```  
  
## Remarks  
 SET ANSI_DEFAULTS is a server-side setting that the client does not modify. The client manages its own settings. By default, these settings are the opposite of the server setting. Users should not modify the server setting. To change client the behavior, users should use the SQL_COPT_SS_PRESERVE_CURSORS. For more information, see [SQLSetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md).  
  
 When enabled (ON), this option enables the following ISO settings:  
  
|||  
|-|-|  
|SET ANSI_NULLS|SET CURSOR_CLOSE_ON_COMMIT|  
|SET ANSI_NULL_DFLT_ON|SET IMPLICIT_TRANSACTIONS|  
|SET ANSI_PADDING|SET QUOTED_IDENTIFIER|  
|SET ANSI_WARNINGS||  
  
 Together, these ISO standard SET options define the query processing environment for the duration of the work session of the user, a running trigger, or a stored procedure. However, these SET options do not include all the options required to comply with the ISO standard.  
  
 When dealing with indexes on computed columns and indexed views, four of these defaults (ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, and QUOTED_IDENTIFIER) must be set to ON. These defaults are among seven SET options that must be assigned the required values when you are creating and changing indexes on computed columns and indexed views. The other SET options are ARITHABORT (ON), CONCAT_NULL_YIELDS_NULL (ON), and NUMERIC_ROUNDABORT (OFF). For more information about the required SET option settings with indexed views and indexes on computed columns, see "Considerations When You Use the SET Statements" in [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md).  
  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver and [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB Provider for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] automatically set ANSI_DEFAULTS to ON when connecting. The driver and Provider then set CURSOR_CLOSE_ON_COMMIT and IMPLICIT_TRANSACTIONS to OFF. The OFF settings for SET CURSOR_CLOSE_ON_COMMIT and SET IMPLICIT_TRANSACTIONS can be configured in ODBC data sources, in ODBC connection attributes, or in OLE DB connection properties that are set in the application before connecting to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The default for SET ANSI_DEFAULTS is OFF for connections from DB-Library applications.  
  
 When SET ANSI_DEFAULTS is issued, SET QUOTED_IDENTIFIER is set at parse time, and the following options are set at execute time:  
  
|||  
|-|-|  
|SET ANSI_NULLS|SET ANSI_WARNINGS|  
|SET ANSI_NULL_DFLT_ON|SET CURSOR_CLOSE_ON_COMMIT|  
|SET ANSI_PADDING|SET IMPLICIT_TRANSACTIONS|  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
 The following example sets `SET ANSI_DEFAULTS ON` and uses the `DBCC USEROPTIONS` statement to display the settings that are affected.  
  
```  
-- SET ANSI_DEFAULTS ON.  
SET ANSI_DEFAULTS ON;  
GO  
-- Display the current settings.  
DBCC USEROPTIONS;  
GO  
-- SET ANSI_DEFAULTS OFF.  
SET ANSI_DEFAULTS OFF;  
GO  
```  
  
## See Also  
 [DBCC USEROPTIONS &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-useroptions-transact-sql.md)   
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)   
 [SET ANSI_NULL_DFLT_ON &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-null-dflt-on-transact-sql.md)   
 [SET ANSI_NULLS &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-nulls-transact-sql.md)   
 [SET ANSI_PADDING &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-padding-transact-sql.md)   
 [SET ANSI_WARNINGS &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-warnings-transact-sql.md)   
 [SET CURSOR_CLOSE_ON_COMMIT &#40;Transact-SQL&#41;](../../t-sql/statements/set-cursor-close-on-commit-transact-sql.md)   
 [SET IMPLICIT_TRANSACTIONS &#40;Transact-SQL&#41;](../../t-sql/statements/set-implicit-transactions-transact-sql.md)   
 [SET QUOTED_IDENTIFIER &#40;Transact-SQL&#41;](../../t-sql/statements/set-quoted-identifier-transact-sql.md)  
  
  