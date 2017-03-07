---
title: "STLineFromWKB (geography Data Type) | Microsoft Docs"
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
  - "STLineFromWKB (geography Data Type)"
  - "STLineFromWKB_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STLineFromWKB method"
ms.assetid: 8ac2b772-6673-4ba1-a7ab-3b4b5841560b
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# STLineFromWKB (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **LineString geography** instance from an Open Geospatial Consortium (OGC) Well-Known Binary (WKB) representation.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
STLineFromWKB ( 'WKB_linestring' , SRID )  
```  
  
## Arguments  
 *WKB_linestring*  
 Is the WKB representation of the **LineString geography** instance you wish to return. *WKB_linestring* is a **varbinary(max)** expression.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **LineString geography** instance you wish to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
 OGC type: **LineString**  
  
## Remarks  
 This method throws a **FormatException** if the input is not well-formatted.  
  
## Examples  
 The following example uses `STLineFromWKB()` to create a `geography`instance.  
  
```  
DECLARE @g geography;  
SET @g = geography::STLineFromWKB(0x010200000002000000D7A3703D0A975EC08716D9CEF7D34740CBA145B6F3955EC08716D9CEF7D34740, 4326);  
SELECT @g.ToString();  
```  
  
## See Also  
 [OGC Static Geography Methods](../../t-sql/data-types/ogc-static-geography-methods.md)  
  
  