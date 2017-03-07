---
title: "IsValidDetailed (geometry DataType) | Microsoft Docs"
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
  - "IsValidDetailed geometry"
ms.assetid: 5a31e88a-ad7b-4ef7-b773-e2571f1cb3aa
caps.latest.revision: 7
ms.author: "rickbyh"
manager: "jhubbard"
---
# IsValidDetailed (geometry DataType)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns a message that can help to identify problems with a spatial object that is not valid. When the object is not valid, only the first error is returned. When the object is valid, a value of 24400 is returned.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.IsValidDetailed()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **nvarchar(max)**  
  
 CLR return type: **string**  
  
## Remarks  
 The following table contains possible return values:  
  
|Return value|Description|  
|------------------|-----------------|  
|24400|Valid|  
|24401|Not valid, reason unknown.|  
|24402|Not valid because point {0} is an isolated point, which is not valid in this type of object.|  
|24403|Not valid because some pair of polygon edges overlap.|  
|24404|Not valid because polygon ring {0} intersects itself or some other ring.|  
|24405|Not valid because some polygon ring intersects itself or some other ring.|  
|24406|Not valid because curve {0} degenerates to a point.|  
|24407|Not valid because polygon ring {0} collapses to a line at point {1}.|  
|24408|Not valid because polygon ring {0} is not closed.|  
|24409|Not valid because some portion of polygon ring {0} lies in the interior of a polygon.|  
|24410|Not valid because ring {0} is the first ring in a polygon of which it is not the exterior ring.|  
|24411|Not valid because ring {0} lies outside the exterior ring {1} of its polygon.|  
|24412|Not valid because the interior of a polygon with rings {0} and {1} is not connected.|  
|24413|Not valid because of two overlapping edges in curve {0}.|  
|24414|Not valid because an edge of curve {0} overlaps an edge of curve {1}.|  
|24415|Not valid some polygon has an invalid ring structure.|  
|24416|Not valid because in curve {0} the edge that starts at point {1} is either a line or a degenerate arc with antipodal endpoints.|  
  
## Examples  
 The following example of an invalid spatial object illustrates how the **IsValidDetailed()** methods behaves.  
  
```tsql  
DECLARE @p GEOMETRY = 'Polygon((2 2, 4 4, 4 2, 2 4, 2 2))'  
SELECT @p.IsValidDetailed()  
--Returns: 24404: Not valid because polygon ring (1) intersects itself or some other ring.  
```  
  
## See Also  
 [Extended Methods on Geometry Instances](../../t-sql/data-types/extended-methods-on-geometry-instances.md)  
  
  