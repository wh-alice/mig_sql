---
title: "IS_OBJECTSIGNED (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "IS_OBJECTSIGNED"
  - "IS_OBJECTSIGNED_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IS_OBJECTSIGNED function"
ms.assetid: afbc4f7f-8266-4ee6-9802-14a2dbe69ef6
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# IS_OBJECTSIGNED (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Indicates whether an object is signed by a specified certificate or asymmetric key.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
IS_OBJECTSIGNED (   
'OBJECT', @object_id, @class, @thumbprint  
  )   
```  
  
## Arguments  
 **'OBJECT'**  
 The type of securable class.  
  
 *@object_id*  
 The object_id of the object being tested. *@object_id* is type **int**.  
  
 *@class*  
 The class of the object:  
  
-   'certificate'  
  
-   'asymmetric key'  
  
 *@class* is **sysname**.  
  
 *@thumbprint*  
 The SHA thumbprint of the object. *@thumbprint* is type **varbinary(32)**.  
  
## Returned Types  
 **int**  
  
## Remarks  
 IS_OBJECTSIGNED returns the following values.  
  
|Return value|Description|  
|------------------|-----------------|  
|NULL|The object is not signed, or the object is not valid.|  
|0|The object is signed, but the signature is not valid.|  
|1|The object is signed.|  
  
## Permissions  
 Requires VIEW DEFINITION on the certificate or asymmetric key.  
  
## Examples  
  
### A. Displaying extended properties on a database  
 The following example tests if the spt_fallback_db table in the **master** database is signed by the schema signing certificate.  
  
```  
USE master;  
-- Declare a variable to hold a thumbprint and an object name  
DECLARE @thumbprint varbinary(20), @objectname sysname;  
  
-- Populate the thumbprint variable with the thumbprint of   
-- the master database schema signing certificate  
SELECT @thumbprint = thumbprint   
FROM sys.certificates   
WHERE name LIKE '%SchemaSigningCertificate%';  
  
-- Populate the object name variable with a table name in master  
SELECT @objectname = 'spt_fallback_db';  
  
-- Query to see if the table is signed by the thumbprint  
SELECT @objectname AS [object name],  
IS_OBJECTSIGNED(  
'OBJECT', OBJECT_ID(@objectname), 'certificate', @thumbprint  
) AS [Is the object signed?] ;  
```  
  
## See Also  
 [sys.fn_check_object_signatures &#40;Transact-SQL&#41;](../../relational-databases/system-functions/sys.fn-check-object-signatures-transact-sql.md)  
  
  