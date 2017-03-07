---
title: "Null (geometry Data Type) | Microsoft Docs"
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
  - "Null (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Null (geometry Data Type)"
ms.assetid: 67a4b019-9091-4443-85cc-f4836d0cb509
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# Null (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  A read-only property providing a null instance of the **geometry** type.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
Null  
```  
  
## Arguments  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] type: **geometry**  
  
 CLR type: **SqlGeometry**  
  
## Remarks  
  
## Examples  
 The following example retrieves a null `geometry` instance.  
  
```  
DECLARE @g geometry;   
SET @g = geometry::[Null];  
SELECT @g  
```  
  
## See Also  
 [Extended Static Geometry Methods](../../../t-sql/data-types/extended-static-geometry-methods.md)  
  
  