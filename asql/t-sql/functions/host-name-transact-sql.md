---
title: "HOST_NAME (Transact-SQL) | Microsoft Docs"
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
  - "HOST_NAME_TSQL"
  - "HOST_NAME"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "HOST_NAME function"
  - "workstation names [SQL Server]"
ms.assetid: 4b8b0705-c083-4b07-b954-c83ee73b2ebb
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# HOST_NAME (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the workstation name.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
HOST_NAME ()  
```  
  
## Return Types  
 **nvarchar(128)**  
  
## Remarks  
 When the parameter to a system function is optional, the current database, host computer, server user, or database user is assumed. Built-in functions must always be followed by parentheses.  
  
 System functions can be used in the select list, in the WHERE clause, and anywhere an expression is allowed.  
  
> [!IMPORTANT]  
>  The client application provides the workstation name and can provide inaccurate data. Do not rely upon HOST_NAME as a security feature.  
  
## Examples  
 The following example creates a table that uses `HOST_NAME()` in a `DEFAULT` definition to record the workstation name of computers that insert rows into a table recording orders.  
  
```  
CREATE TABLE Orders  
   (OrderID     int        PRIMARY KEY,  
    CustomerID  nchar(5)   REFERENCES Customers(CustomerID),  
    Workstation nchar(30)  NOT NULL DEFAULT HOST_NAME(),  
    OrderDate   datetime   NOT NULL,  
    ShipDate    datetime   NULL,  
    ShipperID   int        NULL REFERENCES Shippers(ShipperID));  
GO  
```  
  
## See Also  
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/system-functions-for-transact-sql.md)  
  
  