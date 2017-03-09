---
title: "SET ANSI_NULLS (Transact-SQL) | Microsoft Docs"
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
  - "SET_ANSI_NULLS_TSQL"
  - "ANSI_NULLS"
  - "SET ANSI_NULLS"
  - "ANSI_NULLS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SET ANSI_NULLS statement"
  - "not equal to operator (<>)"
  - "ANSI_NULLS option"
  - "equals operator (=)"
  - "null values [SQL Server], comparison operators"
  - "comparison operators [SQL Server], null values"
ms.assetid: aae263ef-a3c7-4dae-80c2-cc901e48c755
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET ANSI_NULLS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Specifies ISO compliant behavior of the Equals (=) and Not Equal To (<>) comparison operators when they are used with null values in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
> [!IMPORTANT]  
>  In a future version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], ANSI_NULLS will always be ON and any applications that explicitly set the option to OFF will generate an error. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server  
  
SET ANSI_NULLS { ON | OFF }  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
SET ANSI_NULLS ON;  
```  
  
## Remarks  
 When SET ANSI_NULLS is ON, a SELECT statement that uses WHERE *column_name* = **NULL** returns zero rows even if there are null values in *column_name*. A SELECT statement that uses WHERE *column_name* <> **NULL** returns zero rows even if there are nonnull values in *column_name*.  
  
 When SET ANSI_NULLS is OFF, the Equals (=) and Not Equal To (<>) comparison operators do not follow the ISO standard. A SELECT statement that uses WHERE *column_name* = **NULL** returns the rows that have null values in *column_name*. A SELECT statement that uses WHERE *column_name* <> **NULL** returns the rows that have nonnull values in the column. Also, a SELECT statement that uses WHERE *column_name* <> *XYZ_value* returns all rows that are not *XYZ_value* and that are not NULL.  
  
 When SET ANSI_NULLS is ON, all comparisons against a null value evaluate to UNKNOWN. When SET ANSI_NULLS is OFF, comparisons of all data against a null value evaluate to TRUE if the data value is NULL. If SET ANSI_NULLS is not specified, the setting of the ANSI_NULLS option of the current database applies. For more information about the ANSI_NULLS database option, see [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md).  
  
 SET ANSI_NULLS ON affects a comparison only if one of the operands of the comparison is either a variable that is NULL or a literal NULL. If both sides of the comparison are columns or compound expressions, the setting does not affect the comparison.  
  
 For a script to work as intended, regardless of the ANSI_NULLS database option or the setting of SET ANSI_NULLS, use IS NULL and IS NOT NULL in comparisons that might contain null values.  
  
 SET ANSI_NULLS should be set to ON for executing distributed queries.  
  
 SET ANSI_NULLS must also be ON when you are creating or changing indexes on computed columns or indexed views. If SET ANSI_NULLS is OFF, any CREATE, UPDATE, INSERT, and DELETE statements on tables with indexes on computed columns or indexed views will fail. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will return an error that lists all SET options that violate the required values. Also, when you execute a SELECT statement, if SET ANSI_NULLS is OFF, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will ignore the index values on computed columns or views and resolve the select operation as if there were no such indexes on the tables or views.  
  
> [!NOTE]  
>  ANSI_NULLS is one of seven SET options that must be set to required values when dealing with indexes on computed columns or indexed views. The options ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, and CONCAT_NULL_YIELDS_NULL must also be set to ON, and NUMERIC_ROUNDABORT must be set to OFF.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB Provider for [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] automatically set ANSI_NULLS to ON when connecting. This setting can be configured in ODBC data sources, in ODBC connection attributes, or in OLE DB connection properties that are set in the application before connecting to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. The default for SET ANSI_NULLS is OFF.  
  
 When SET ANSI_DEFAULTS is ON, SET ANSI_NULLS is enabled.  
  
 The setting of SET ANSI_NULLS is set at execute or run time and not at parse time.  
  
 To view the current setting for this setting, run the following query.  
  
```  
DECLARE @ANSI_NULLS VARCHAR(3) = 'OFF';  
IF ( (32 & @@OPTIONS) = 32 ) SET @ANSI_NULLS = 'ON';  
SELECT @ANSI_NULLS AS ANSI_NULLS;  
  
```  
  
## Permissions  
 Requires membership in the public role.  
  
## Examples  
 The following example uses the Equals (`=`) and Not Equal To (`<>`) comparison operators to make comparisons with `NULL` and nonnull values in a table. The example also shows that `IS NULL` is not affected by the `SET ANSI`_`NULLS` setting.  
  
```  
-- Create table t1 and insert values.  
CREATE TABLE dbo.t1 (a INT NULL);  
INSERT INTO dbo.t1 values (NULL),(0),(1);  
GO  
  
-- Print message and perform SELECT statements.  
PRINT 'Testing default setting';  
DECLARE @varname int;   
SET @varname = NULL;  
  
SELECT a  
FROM t1   
WHERE a = @varname;  
  
SELECT a   
FROM t1   
WHERE a <> @varname;  
  
SELECT a   
FROM t1   
WHERE a IS NULL;  
GO  
  
-- SET ANSI_NULLS to ON and test.  
PRINT 'Testing ANSI_NULLS ON';  
SET ANSI_NULLS ON;  
GO  
DECLARE @varname int;  
SET @varname = NULL  
  
SELECT a   
FROM t1   
WHERE a = @varname;  
  
SELECT a   
FROM t1   
WHERE a <> @varname;  
  
SELECT a   
FROM t1   
WHERE a IS NULL;  
GO  
  
-- SET ANSI_NULLS to OFF and test.  
PRINT 'Testing SET ANSI_NULLS OFF';  
SET ANSI_NULLS OFF;  
GO  
DECLARE @varname int;  
SET @varname = NULL;  
SELECT a   
FROM t1   
WHERE a = @varname;  
  
SELECT a   
FROM t1   
WHERE a <> @varname;  
  
SELECT a   
FROM t1   
WHERE a IS NULL;  
GO  
  
-- Drop table t1.  
DROP TABLE dbo.t1;  
  
```  
  
## See Also  
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)   
 [SESSIONPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/sessionproperty-transact-sql.md)   
 [= &#40;Equals&#41; &#40;Transact-SQL&#41;](../Topic/=%20\(Equals\)%20\(Transact-SQL\).md)   
 [IF...ELSE &#40;Transact-SQL&#41;](../Topic/IF...ELSE%20\(Transact-SQL\).md)   
 [&#60;&#62; &#40;Not Equal To&#41; &#40;Transact-SQL&#41;](../Topic/%3C%3E%20\(Not%20Equal%20To\)%20\(Transact-SQL\).md)   
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)   
 [SET ANSI_DEFAULTS &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-defaults-transact-sql.md)   
 [WHERE &#40;Transact-SQL&#41;](../../t-sql/queries/where-transact-sql.md)   
 [WHILE &#40;Transact-SQL&#41;](../Topic/WHILE%20\(Transact-SQL\).md)  
  
  