---
title: "ISJSON (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-02"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-json"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "ISJSON"
  - "ISJSON_TSQL"
helpviewer_keywords: 
  - "ISJSON function"
  - "JSON, validating"
ms.assetid: c836f3d3-3e17-44ae-92bf-f341918896c3
caps.latest.revision: 12
ms.author: "douglasl"
manager: "jhubbard"
---
# ISJSON (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Tests whether a string contains valid JSON.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```tsql  
ISJSON ( expression )  
```  
  
## Arguments  
 *expression*  
 The string to test.  
  
## Return Value  
 Returns 1 if the string contains valid JSON; otherwise, returns 0. Returns null if *expression* is null.  
  
 Does not return errors.  
  
## Remarks  
 **ISJSON** does not check the uniqueness of keys at the same level.  
  
## Examples  
  
### Example 1  
 The following example runs a statement block conditionally if the parameter value contains valid JSON.  
  
```tsql  
DECLARE @param <data type>
SET @param = <value>

IF (ISJSON(@param) > 0)  
BEGIN  
     -- Do something with the valid JSON value of @param.  
END
 
```  
  
### Example 2  
 The following example returns the JSON text if the column contains valid JSON.  
  
```tsql  
SELECT id,json_col
FROM tab1
WHERE ISJSON(json_col)>0 
```  
  
## See Also  
 [JSON Data &#40;SQL Server&#41;](../../relational-databases/json/json-data-sql-server.md)  
  
  