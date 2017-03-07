---
title: "UnionAggregate (geography Data Type) | Microsoft Docs"
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
  - "UnionAggregate"
  - "UnionAggregate_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "UnionAggregate method (geography)"
ms.assetid: 1a3aeef1-5b0e-4ae8-aeb7-c4aab22f42ab
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# UnionAggregate (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Performs a union operation on a set of geography objects.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
UnionAggregate ( geography_operand )  
```  
  
## Arguments  
 *geography_operand*  
 Is a **geography** type table column that holds the set of **geography** objects on which to perform a union operation.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
## Remarks  
 Method returns **null** if the input has different SRIDs. See [Spatial Reference Identifiers &#40;SRIDs&#41;](../../relational-databases/spatial/spatial-reference-identifiers-srids.md).  
  
 Method ignores **null** inputs.  
  
> [!NOTE]  
>  Method returns **null** if all inputted values are **null**.  
  
## Examples  
 The following example performs a `UnionAggregate` on a set of **geography** location points within a city.  
  
 `USE AdventureWorks2012`  
  
 `GO`  
  
 `SELECT City,`  
  
 `geography::UnionAggregate(SpatialLocation) AS SpatialLocation`  
  
 `FROM Person.Address`  
  
 `WHERE PostalCode LIKE('981%')`  
  
 `GROUP BY City;`  
  
## See Also  
 [Extended Static Geography Methods](../../t-sql/data-types/extended-static-geography-methods.md)  
  
  