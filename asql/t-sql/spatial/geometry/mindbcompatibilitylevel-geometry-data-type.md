---
title: "MinDbCompatibilityLevel (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "MinDbCompatibilityLevel method (geometry)"
ms.assetid: c848b974-8ccb-4c5c-a7eb-b019a9538d99
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# MinDbCompatibilityLevel (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns the minimum database compatibility level that recognizes the **geometry** data type instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.MinDbCompatibilityLevel ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **int**  
  
 CLR return type: **int**  
  
## Remarks  
 Use `MinDbCompatibilityLevel()` to test a spatial object for compatibility before changing the compatibility level on a database.  
  
## Examples  
  
### A. Testing CircularString type for compatibility with compatibility level 110  
 The following example tests a `CircularString` instance for compatibility with an earlier version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]:  
  
 `DECLARE @g geometry = 'CIRCULARSTRING(3 4, 8 9, 5 6)';`  
  
 `IF @g.MinDbCompatibilityLevel() <= 110`  
  
 `BEGIN`  
  
 `SELECT @g.ToString();`  
  
 `END`  
  
### B. Testing LineString type for compatibility with compatibility level 100  
 The following example tests a `LineString` instance for compatibility with [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)]:  
  
 `DECLARE @g geometry = 'LINESTRING(3 4, 8 9, 5 6)';`  
  
 `IF @g.MinDbCompatibilityLevel() <= 100`  
  
 `BEGIN`  
  
 `SELECT @g.ToString();`  
  
 `END`  
  
## See Also  
 [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-database-transact-sql-compatibility-level.md)  
  
  