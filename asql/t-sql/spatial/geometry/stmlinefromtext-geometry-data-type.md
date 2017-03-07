---
title: "STMLineFromText (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "STMLineFromText (geometry Data Type)"
  - "STMLineFromText_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STMLineFromText (geometry Data Type)"
ms.assetid: 39fe8559-c4c2-4d61-8508-86eb0a103807
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# STMLineFromText (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **geometry** instance from an Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation augmented with any Z (elevation) and M (measure) values carried by the instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
STMLineFromText ( 'multilinestring_tagged_text' , SRID )  
```  
  
## Arguments  
 *multilinestring_tagged_text*  
 Is the WKT representation of the **geometryMultiLineString** instance you wish to return. *multilinestring_tagged_text* is an **nvarchar(max)** expression.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **geometryMultiLineString** instance you wish to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
 OGC type: **MultiLineString**  
  
## Remarks  
 This method will throw a **FormatException** if the input is not well-formatted.  
  
## Examples  
 The following example uses `STMLineFromText()` to create a `geometry` instance.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STMLineFromText('MULTILINESTRING ((100 100, 200 200), (3 4, 7 8, 10 10))', 0);  
```  
  
 `SELECT @g.ToString();`  
  
## See Also  
 [OGC Static Geometry Methods](../../../t-sql/data-types/ogc-static-geometry-methods.md)  
  
  