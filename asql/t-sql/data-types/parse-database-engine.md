---
title: "Parse (Database Engine) | Microsoft Docs"
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
  - "Parse"
  - "Parse_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Parse [Database Engine]"
ms.assetid: b37e28b6-6e2e-470a-945b-ce5252da743a
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# Parse (Database Engine)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Parse converts the canonical string representation of a **hierarchyid** to a **hierarchyid** value. Parse is called implicitly when a conversion from a string type to **hierarchyid** occurs. Acts as the opposite of [ToString](../../t-sql/data-types/tostring-database-engine.md). Parse() is a static method.  
  
## Syntax  
  
```  
  
-- Transact-SQL syntax  
hierarchyid::Parse ( input )  
-- This is functionally equivalent to the following syntax   
-- which implicitly calls Parse():  
CAST ( input AS hierarchyid )  
```  
  
```  
  
-- CLR syntax  
static SqlHierarchyId Parse ( SqlString input )   
```  
  
## Arguments  
 *input*  
 [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]: The character data type value that is being converted.  
  
 CLR: The String value that is being evaluated.  
  
## Return Types  
 **SQL Server return type:hierarchyid**  
  
 **CLR return type:SqlHierarchyId**  
  
## Remarks  
 If Parse receives a value that is not a valid string representation of a **hierarchyid**, an exception is raised. For example, if **char** data types contain trailing spaces, an exception is raised.  
  
## Examples  
  
### A. Converting Transact-SQL values without a table  
 The following code example uses `ToString` to convert a **hierarchyid** value to a string, and `Parse` to convert a string value to a **hierarchyid**.  
  
```  
DECLARE @StringValue AS nvarchar(4000), @hierarchyidValue AS hierarchyid  
SET @StringValue = '/1/1/3/'  
SET @hierarchyidValue = 0x5ADE  
  
SELECT hierarchyid::Parse(@StringValue) AS hierarchyidRepresentation,  
 @hierarchyidValue.ToString() AS StringRepresentation ;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `hierarchyidRepresentation    StringRepresentation`  
  
 `-------------------------    -----------------------`  
  
 `0x5ADE                       /1/1/3/`  
  
### B. CLR example  
 The following code snippet calls the Parse() method:  
  
```  
string input = “/1/2/”;  
SqlHierarchyId.Parse(input);  
  
```  
  
## See Also  
 [hierarchyid Data Type Method Reference](http://msdn.microsoft.com/library/01a050f5-7580-4d5f-807c-7f11423cbb06)   
 [Hierarchical Data &#40;SQL Server&#41;](../../relational-databases/hierarchical-data-sql-server.md)   
 [hierarchyid &#40;Transact-SQL&#41;](../../t-sql/data-types/hierarchyid-data-type-method-reference.md)  
  
  