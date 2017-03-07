---
title: "EnvelopeAggregate (geography Data Type) | Microsoft Docs"
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
  - "EnvelopeAggregate_TSQL"
  - "EnvelopeAggregate"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "EnvelopeAggregate method (geography)"
ms.assetid: 4947797f-edb8-490f-beca-37df9ec06954
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# EnvelopeAggregate (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns a bounding object for a given set of **geography** objects. The resulting **geography** object contains multiple circular arc segments.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
EnvelopeAggregate ( geography_operand )  
```  
  
## Arguments  
 *geography_operand*  
 Is a **geography** type table column that holds the set of **geography** objects on which to perform an envelope aggregate operation.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
## Remarks  
 A **FullGlobe** object is returned when the resulting bounding object is bigger than a hemisphere. This method is not precise.  
  
 Method returns **null** if the input has different SRIDs. See [Spatial Reference Identifiers &#40;SRIDs&#41;](../../../relational-databases/spatial/spatial-reference-identifiers-srids.md).  
  
 Method ignores **null** inputs.  
  
> [!NOTE]  
>  Method returns **null** if all inputted values are **null**.  
  
## Examples  
 The following example performs a `EnvelopeAggregate` on a set of **geography** location points within a city.  
  
 `USE AdventureWorks2012`  
  
 `GO`  
  
 `SELECT City,`  
  
 `geography::EnvelopeAggregate(SpatialLocation) AS SpatialLocation`  
  
 `FROM Person.Address`  
  
 `WHERE PostalCode LIKE('981%')`  
  
 `GROUP BY City;`  
  
## See Also  
 [Extended Static Geography Methods](../../../t-sql/data-types/extended-static-geography-methods.md)  
  
  