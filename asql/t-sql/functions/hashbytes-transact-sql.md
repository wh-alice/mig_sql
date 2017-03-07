---
title: "HASHBYTES (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-02-03"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "HASHBYTES_TSQL"
  - "HASHBYTES"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "hash input"
  - "HASHBYTES"
ms.assetid: 0ea6a4d1-313e-4f70-b939-dd2cd570f6d6
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# HASHBYTES (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the MD2, MD4, MD5, SHA, SHA1, or SHA2 hash of its input in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
HASHBYTES ( '<algorithm>', { @input | 'input' } )  
  
<algorithm>::= MD2 | MD4 | MD5 | SHA | SHA1 | SHA2_256 | SHA2_512   
```  
  
## Arguments  
 **'**\<algorithm>**'**  
 Identifies the hashing algorithm to be used to hash the input. This is a required argument with no default. The single quotation marks are required. Beginning with [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)], all algorithms other than SHA2_256, and SHA2_512 are deprecated. Older algorithms (not recommended) will continue working, but they will raise a deprecation event.  
  
 **@input**  
 Specifies a variable containing the data to be hashed. **@input** is **varchar**, **nvarchar**, or **varbinary**.  
  
 **'** *input* **'**  
 Specifies an expression that evaluates to a character or binary string to be hashed.  
  
 The output conforms to the algorithm standard: 128 bits (16 bytes) for MD2, MD4, and MD5; 160 bits (20 bytes) for SHA and SHA1; 256 bits (32 bytes) for SHA2_256, and 512 bits (64 bytes) for SHA2_512.  
  
||  
|-|  
|256 bits (32 bytes) for SHA2_256, and 512 bits (64 bytes) for SHA2_512 applies to [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 For [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] and earlier, allowed input values are limited to 8000 bytes.  
  
## Return Value  
 **varbinary** (maximum 8000 bytes)  
  
## Examples  
  
### A: Return the hash of a variable  
 The following example returns the `SHA1` hash of the **nvarchar** data stored in variable `@HashThis`.  
  
```  
DECLARE @HashThis nvarchar(4000);  
SET @HashThis = CONVERT(nvarchar(4000),'dslfdkjLK85kldhnv$n000#knf');  
SELECT HASHBYTES('SHA1', @HashThis);  
  
```  
  
### B: Return the hash of a table column  
 The following example returns the SHA1 hash of the values in column `c1` in the table `Test1`.  
  
```  
CREATE TABLE dbo.Test1 (c1 nvarchar(50));  
INSERT dbo.Test1 VALUES ('This is a test.');  
INSERT dbo.Test1 VALUES ('This is test 2.');  
SELECT HASHBYTES('SHA1', c1) FROM dbo.Test1;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
-------------------------------------------  
0x0E7AAB0B4FF0FD2DFB4F0233E2EE7A26CD08F173  
0xF643A82F948DEFB922B12E50B950CEE130A934D6  
  
(2 row(s) affected)  
  
```  
  
## See Also  
 [Choose an Encryption Algorithm](../../relational-databases/security/encryption/choose-an-encryption-algorithm.md)  
  
  