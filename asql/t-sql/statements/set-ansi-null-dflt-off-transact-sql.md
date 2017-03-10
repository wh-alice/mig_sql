---
title: "SET ANSI_NULL_DFLT_OFF (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/09/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "ANSI_NULL_DFLT_OFF_TSQL"
  - "ANSI_NULL_DFLT_OFF"
  - "SET ANSI_NULL_DFLT_OFF"
  - "SET_ANSI_NULL_DFLT_OFF_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "default nullability"
  - "ANSI_NULL_DFLT_OFF option"
  - "null values [SQL Server], overriding"
  - "overriding default nullability"
  - "SET ANSI_NULL_DFLT_OFF statement"
ms.assetid: 8ed5c512-f5de-4741-a18a-de85a3041295
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET ANSI_NULL_DFLT_OFF (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Alters the behavior of the session to override default nullability of new columns when the ANSI null default option for the database is **true**. For more information about setting the value for ANSI null default, see [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
SET ANSI_NULL_DFLT_OFF { ON | OFF }  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
SET ANSI_NULL_DFLT_OFF OFF  
```  
  
## Remarks  
 This setting only affects the nullability of new columns when the nullability of the column is not specified in the CREATE TABLE and ALTER TABLE statements. By default, when SET ANSI_NULL_DFLT_OFF is ON, new columns that are created by using the ALTER TABLE and CREATE TABLE statements are NOT NULL if the nullability status of the column is not explicitly specified. SET ANSI_NULL_DFLT_OFF does not affect columns that are created by using an explicit NULL or NOT NULL.  
  
 Both SET ANSI_NULL_DFLT_OFF and SET ANSI_NULL_DFLT_ON cannot be set ON at the same time. If one option is set ON, the other option is set OFF. Therefore, either ANSI_NULL_DFLT_OFF or SET ANSI_NULL_DFLT_ON can be set ON, or both can be set OFF. If either option is ON, that setting (SET ANSI_NULL_DFLT_OFF or SET ANSI_NULL_DFLT_ON) takes effect. If both options are set OFF, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] uses the value of the is_ansi_null_default_on column in the [sys.databases](../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md) catalog view.  
  
 For a more reliable operation of [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] scripts that are used in databases with different nullability settings, it is better to always specify NULL or NOT NULL in CREATE TABLE and ALTER TABLE statements.  
  
 The setting of SET ANSI_NULL_DFLT_OFF is set at execute or run time and not at parse time.  
  
 To view the current setting for this setting, run the following query.  
  
```  
DECLARE @ANSI_NULL_DFLT_OFF VARCHAR(3) = 'OFF';  
IF ( (2048 & @@OPTIONS) = 2048 ) SET @ANSI_NULL_DFLT_OFF = 'ON';  
SELECT @ANSI_NULL_DFLT_OFF AS ANSI_NULL_DFLT_OFF;  
  
```  
  
## Permissions  
 Requires membership in the public role.  
  
## Examples  
 The following example shows the effects of `SET ANSI_NULL_DFLT_OFF` with both settings for the ANSI null default database option.  
  
```  
USE AdventureWorks2012;  
GO  
  
-- Set the 'ANSI null default' database option to true by executing   
-- ALTER DATABASE.  
GO  
ALTER DATABASE AdventureWorks2012 SET ANSI_NULL_DEFAULT ON;  
GO  
-- Create table t1.  
CREATE TABLE t1 (a TINYINT);  
GO  
-- NULL INSERT should succeed.  
INSERT INTO t1 (a) VALUES (NULL);  
GO  
  
-- SET ANSI_NULL_DFLT_OFF to ON and create table t2.  
SET ANSI_NULL_DFLT_OFF ON;  
GO  
CREATE TABLE t2 (a TINYINT);  
GO   
-- NULL INSERT should fail.  
INSERT INTO t2 (a) VALUES (NULL);  
GO  
  
-- SET ANSI_NULL_DFLT_OFF to OFF and create table t3.  
SET ANSI_NULL_DFLT_OFF OFF;  
GO  
CREATE TABLE t3 (a TINYINT) ;  
GO   
-- NULL INSERT should succeed.  
INSERT INTO t3 (a) VALUES (NULL);  
GO  
  
-- This illustrates the effect of having both the database  
-- option and SET option disabled.  
-- Set the 'ANSI null default' database option to false.  
ALTER DATABASE AdventureWorks2012 SET ANSI_NULL_DEFAULT OFF;  
GO  
-- Create table t4.  
CREATE TABLE t4 (a tinyint) ;  
GO   
-- NULL INSERT should fail.  
INSERT INTO t4 (a) VALUES (null);  
GO  
  
-- SET ANSI_NULL_DFLT_OFF to ON and create table t5.  
SET ANSI_NULL_DFLT_OFF ON;  
GO  
CREATE TABLE t5 (a tinyint);  
GO   
-- NULL insert should fail.  
INSERT INTO t5 (a) VALUES (null);  
GO  
  
-- SET ANSI_NULL_DFLT_OFF to OFF and create table t6.  
SET ANSI_NULL_DFLT_OFF OFF;  
GO  
CREATE TABLE t6 (a tinyint);   
GO   
-- NULL insert should fail.  
INSERT INTO t6 (a) VALUES (null);  
GO  
  
-- Drop tables t1 through t6.  
DROP TABLE t1, t2, t3, t4, t5, t6;  
  
```  
  
## See Also  
 [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md)   
 [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md)   
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)   
 [SET ANSI_NULL_DFLT_ON &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-null-dflt-on-transact-sql.md)  
  
  