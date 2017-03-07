---
title: "STIsEmpty (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "STIsEmpty_TSQL"
  - "STIsEmpty (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STIsEmpty (geometry Data Type)"
ms.assetid: dcbd6ae1-5d63-485f-9d58-28bfd504524e
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# STIsEmpty (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns 1 if a **geometry** instance is empty. Returns 0 if a **geometry** instance is not empty.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STIsEmpty ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Examples  
 The following example creates an empty `geometry` instance and uses `STIsEmpty()` to test whether the instance is empty.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('POLYGON EMPTY', 0);  
SELECT @g.STIsEmpty();  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  