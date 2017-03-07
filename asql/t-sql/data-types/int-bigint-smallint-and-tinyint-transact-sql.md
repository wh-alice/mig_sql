---
title: "int, bigint, smallint, and tinyint (Transact-SQL) | Microsoft Docs"
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
  - "bigint_TSQL"
  - "smallint"
  - "bigint"
  - "smallint_TSQL"
  - "tinyint_TSQL"
  - "int_TSQL"
  - "int"
  - "tinyint"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "exact numeric data [SQL Server]"
  - "numeric data"
  - "tinyint data type"
  - "int data type"
  - "smallint data type"
ms.assetid: 9bda5b0b-2380-4931-a1c8-f362fdefa99b
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# int, bigint, smallint, and tinyint (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Exact-number data types that use integer data.  
  
|Data type|Range|Storage|  
|---------------|-----------|-------------|  
|**bigint**|-2^63 (-9,223,372,036,854,775,808) to 2^63-1 (9,223,372,036,854,775,807)|8 Bytes|  
|**int**|-2^31 (-2,147,483,648) to 2^31-1 (2,147,483,647)|4 Bytes|  
|**smallint**|-2^15 (-32,768) to 2^15-1 (32,767)|2 Bytes|  
|**tinyint**|0 to 255|1 Byte|  
  
## Remarks  
 The **int** data type is the primary integer data type in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The **bigint** data type is intended for use when integer values might exceed the range that is supported by the **int** data type.  
  
 **bigint** fits between **smallmoney** and **int** in the data type precedence chart.  
  
 Functions return **bigint** only if the parameter expression is a **bigint** data type. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] does not automatically promote other integer data types (**tinyint**, **smallint**, and **int**) to **bigint**.  
  
> [!CAUTION]  
>  When you use the +, -, \*, /, or % arithmetic operators to perform implicit or explicit conversion of **int**, **smallint**, **tinyint**, or **bigint** constant values to the **float**, **real**, **decimal** or **numeric** data types, the rules that [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] applies when it calculates the data type and precision of the expression results differ depending on whether the query is autoparameterized or not.  
>   
>  Therefore, similar expressions in queries can sometimes produce different results. When a query is not autoparameterized, the constant value is first converted to **numeric**, whose precision is just large enough to hold the value of the constant, before converting to the specified data type. For example, the constant value 1 is converted to **numeric (1, 0)**, and the constant value 250 is converted to **numeric (3, 0)**.  
>   
>  When a query is autoparameterized, the constant value is always converted to **numeric (10, 0)** before converting to the final data type. When the / operator is involved, not only can the result type's precision differ among similar queries, but the result value can differ also. For example, the result value of an autoparameterized query that includes the expression `SELECT CAST (1.0 / 7 AS float)` will differ from the result value of the same query that is not autoparameterized, because the results of the autoparameterized query will be truncated to fit into the **numeric (10, 0)** data type.  
  
##  <a name="_integer"></a> Converting Integer Data  
 When integers are implicitly converted to a character data type, if the integer is too large to fit into the character field, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] enters ASCII character 42, the asterisk (*).  
  
 Integer constants greater than 2,147,483,647 are converted to the **decimal** data type, not the **bigint** data type. The following example shows that when the threshold value is exceeded, the data type of the result changes from an **int** to a **decimal**.  
  
```  
SELECT 2147483647 / 2 AS Result1, 2147483649 / 2 AS Result2 ;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result1      Result2  
1073741823   1073741824.500000  
```  
  
## Examples  
 The following example creates a table using the **bigint**, **int**, **smallint**, and **tinyint** data types. Values are inserted into each column and returned in the SELECT statement.  
  
```  
CREATE TABLE dbo.MyTable  
(  
  MyBigIntColumn bigint  
 ,MyIntColumn  int  
 ,MySmallIntColumn smallint  
 ,MyTinyIntColumn tinyint  
);  
  
GO  
  
INSERT INTO dbo.MyTable VALUES (9223372036854775807, 214483647,32767,255);  
 GO  
SELECT MyBigIntColumn, MyIntColumn, MySmallIntColumn, MyTinyIntColumn  
FROM dbo.MyTable;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
MyBigIntColumn       MyIntColumn MySmallIntColumn MyTinyIntColumn  
-------------------- ----------- ---------------- ---------------  
9223372036854775807  214483647   32767            255  
  
(1 row(s) affected)  
  
```  
  
## See Also  
 [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md)   
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)   
 [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md)   
 [DECLARE @local_variable &#40;Transact-SQL&#41;](../Topic/DECLARE%20@local_variable%20\(Transact-SQL\).md)   
 [SET @local_variable &#40;Transact-SQL&#41;](../Topic/SET%20@local_variable%20\(Transact-SQL\).md)   
 [sys.types &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md)  
  
  