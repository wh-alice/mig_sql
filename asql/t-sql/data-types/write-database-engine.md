---
title: "Write (Database Engine) | Microsoft Docs"
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
  - "Write_TSQL"
  - "Write"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Write [Database Engine]"
ms.assetid: 7c554334-d2d9-4eae-a4ae-097aa4020e1a
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# Write (Database Engine)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Write writes out a binary representation of **SqlHierarchyId** to the passed-in **BinaryWriter**. Write cannot be called by using [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. Use CAST or CONVERT instead.  
  
## Syntax  
  
```  
  
void Write( BinaryWriter w )   
```  
  
## Arguments  
 *w*  
 A **BinaryWriter** object to which the binary representation of this **hierarchyid** node will be written out.  
  
## Return Types  
 **CLR return type:void**  
  
## Remarks  
 Write is used internally by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] when it is necessary, such as when loading data from a **hierarchyid** column. Write is also called internally when a conversion is done between **hierarchyid** and **varbinary**.  
  
## Examples  
  
```  
MemoryStream stream = new MemoryStream();  
BinaryWriter bw = new BinaryWriter(stream);  
hid.Write(bw);  
byte[] encoding = stream.ToArray();  
  
```  
  
## See Also  
 [Read &#40;Database Engine&#41;](../../t-sql/data-types/read-database-engine.md)   
 [ToString &#40;Database Engine&#41;](../../t-sql/data-types/tostring-database-engine.md)   
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)   
 [hierarchyid Data Type Method Reference](http://msdn.microsoft.com/library/01a050f5-7580-4d5f-807c-7f11423cbb06)  
  
  