---
title: "Read (Database Engine) | Microsoft Docs"
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
  - "Read_TSQL"
  - "Read"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Read [Database Engine]"
ms.assetid: f2b8207c-b69f-4327-a874-100b3a1f27d8
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# Read (Database Engine)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Read reads binary representation of **SqlHierarchyId** from the passed-in **BinaryReader** and sets the **SqlHierarchyId** object to that value. Read cannot be called by using [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. Use CAST or CONVERT instead.  
  
## Syntax  
  
```  
  
void Read( BinaryReader r )   
```  
  
## Arguments  
 *r*  
 The **BinaryReader** object that produces a binary stream corresponding to a binary representation of a **hierarchyid** node.  
  
## Return Types  
 **CLR return type:void**  
  
## Remarks  
 Read does not validate its input. If an invalid binary input is given, Read might raise an exception. Or, it might succeed and produce an invalid **SqlHierarchyId** object whose methods can either give unpredictable results or raise an exception.  
  
 Read can only be called on a newly created **SqlHierarchyId** object.  
  
 Read is used internally by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] when it is necessary, such as when writing data to **hierarchyid** column. Read is also called internally when a conversion is done between **varbinary** and **hierarchyid**.  
  
## Examples  
  
```  
Byte[] encoding = new byte[] { 0x58 };  
MemoryStream stream = new MemoryStream(encoding, false /*not writable*/);  
BinaryReader br = new BinaryReader(stream);  
SqlHierarchyId hid = new SqlHierarchyId();  
hid.Read(br);   
```  
  
## See Also  
 [Write &#40;Database Engine&#41;](../../t-sql/data-types/write-database-engine.md)   
 [ToString &#40;Database Engine&#41;](../../t-sql/data-types/tostring-database-engine.md)   
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)   
 [hierarchyid Data Type Method Reference](../Topic/hierarchyid%20Data%20Type%20Method%20Reference.md)  
  
  