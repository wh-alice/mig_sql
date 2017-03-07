---
title: "Include Null Values in JSON Output with the INCLUDE_NULL_VALUES Option (SQL Server) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-json"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "INCLUDE_NULL_VALUES (FOR JSON)"
ms.assetid: 06873768-3778-4ed8-a1db-61758726bda0
caps.latest.revision: 14
ms.author: "douglasl"
manager: "jhubbard"
---
# Include Null Values in JSON - INCLUDE_NULL_VALUES Option
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  To include null values in the JSON output of the **FOR JSON** clause, specify the **INCLUDE_NULL_VALUES** option.  
  
 If you don't specify the **INCLUDE_NULL_VALUES** option, the JSON output doesn't include properties for values that are null in the query results.  
  
## Examples  
 The following example shows the output of the **FOR JSON** clause with and without the **INCLUDE_NULL_VALUES** option.  
  
|Without the **INCLUDE_NULL_VALUES** option|With the **INCLUDE_NULL_VALUES** option|  
|--------------------------------------------------|-----------------------------------------------|  
|`{    "name": "John",    "surname": "Doe" }`|`{    "name": "John",    "surname": "Doe",    "age": null,    "phone": null }`|  
  
 Here's another example of a **FOR JSON** clause with the **INCLUDE_NULL_VALUES** option.  
  
 **Query**  
  
```tsql  
SELECT name, surname  
FROM emp  
FOR JSON AUTO, INCLUDE_NULL_VALUES    
```  
  
 **Result**  
  
```json  
[{
	"name": "John",
	"surname": null
}, {
	"name": "Jane",
	"surname": "Doe"
}] 
```  
  
## See Also  
 [FOR Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-for-clause-transact-sql.md)  
  
  