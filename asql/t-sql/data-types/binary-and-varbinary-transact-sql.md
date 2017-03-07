---
title: "binary and varbinary (Transact-SQL) | Microsoft Docs"
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
  - "binary_TSQL"
  - "varbinary_TSQL"
  - "binary"
  - "varbinary"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "varbinary data type"
  - "binary [SQL Server], about binary data type"
ms.assetid: bcce65f9-10db-4b3e-bfaf-dfc06c6f820f
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# binary and varbinary (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Binary data types of either fixed length or variable length.  
  
## Arguments  
 **binary** [ ( *n* ) ]  
 Fixed-length binary data with a length of *n* bytes, where *n* is a value from 1 through 8,000. The storage size is *n* bytes.  
  
 **varbinary** [ ( *n* | **max**) ]  
 Variable-length binary data. *n* can be a value from 1 through 8,000. **max** indicates that the maximum storage size is 2^31-1 bytes. The storage size is the actual length of the data entered + 2 bytes. The data that is entered can be 0 bytes in length. The ANSI SQL synonym for **varbinary** is **binary varying**.  
  
## Remarks  
 When *n* is not specified in a data definition or variable declaration statement, the default length is 1. When *n* is not specified with the CAST function, the default length is 30.  
  
 Use **binary** when the sizes of the column data entries are consistent.  
  
 Use **varbinary** when the sizes of the column data entries vary considerably.  
  
 Use **varbinary(max)** when the column data entries exceed 8,000 bytes.  
  
## Converting binary and varbinary Data  
 When data is converted from a string data type (**char**, **varchar**, **nchar**, **nvarchar**, **binary**, **varbinary**, **text**, **ntext**, or **image**) to a **binary** or **varbinary** data type of unequal length, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] pads or truncates the data on the right. When other data types are converted to **binary** or **varbinary**, the data is padded or truncated on the left. Padding is achieved by using hexadecimal zeros.  
  
 Converting data to the **binary** and **varbinary** data types is useful if **binary** data is the easiest way to move data around. Converting any value of any type to a binary value of large enough size and then back to the type, will always result in the same value if both conversions are taking place on the same version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. The binary representation of a value might change from version to version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 You can convert **int**, **smallint**, and **tinyint** to **binary** or **varbinary**, but if you convert the **binary** value back to an integer value, this value will be different from the original integer value if truncation has occurred. For example, the following SELECT statement shows that the integer value `123456` is usually stored as a binary `0x0001e240`:  
  
```  
SELECT CAST( 123456 AS BINARY(4) );  
```  
  
 However, the following `SELECT` statement shows that if the **binary** target is too small to hold the entire value, the leading digits are silently truncated so that the same number is stored as `0xe240`:  
  
```  
SELECT CAST( 123456 AS BINARY(2) );  
```  
  
 The following batch shows that this silent truncation can affect arithmetic operations without raising an error:  
  
```  
DECLARE @BinaryVariable2 BINARY(2);  
  
SET @BinaryVariable2 = 123456;  
SET @BinaryVariable2 = @BinaryVariable2 + 1;  
  
SELECT CAST( @BinaryVariable2 AS INT);  
GO  
```  
  
 The final result is `57921`, not `123457`.  
  
> [!NOTE]  
>  Conversions between any data type and the **binary** data types are not guaranteed to be the same between versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)   
 [Data Type Conversion &#40;Database Engine&#41;](../../t-sql/data-types/data-type-conversion-database-engine.md)   
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)  
  
  