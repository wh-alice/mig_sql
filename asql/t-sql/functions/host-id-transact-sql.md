---
title: "HOST_ID (Transact-SQL) | Microsoft Docs"
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
  - "HOST_ID"
  - "HOST_ID_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IDs [SQL Server], workstations"
  - "HOST_ID function"
  - "workstation IDs [SQL Server]"
  - "identification numbers [SQL Server], workstations"
ms.assetid: 36ba56d4-20d7-4cd1-aa2a-e40a6c0a4e39
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# HOST_ID (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the workstation identification number. The workstation identification number is the process ID (PID) of the application on the client computer that is connecting to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
HOST_ID ()  
```  
  
## Return Types  
 **char(10)**  
  
## Remarks  
 When the parameter to a system function is optional, the current database, host computer, server user, or database user is assumed. Built-in functions must always be followed by parentheses.  
  
 System functions can be used in the select list, in the WHERE clause, and anywhere an expression is allowed.  
  
## Examples  
 The following example creates a table that uses `HOST_ID()` in a `DEFAULT` definition to record the terminal ID of computers that insert rows into a table recording orders.  
  
```  
CREATE TABLE Orders  
   (OrderID     int       PRIMARY KEY,  
    CustomerID  nchar(5)  REFERENCES Customers(CustomerID),  
    TerminalID  char(8)   NOT NULL DEFAULT HOST_ID(),  
    OrderDate   datetime  NOT NULL,  
    ShipDate    datetime  NULL,  
    ShipperID   int       NULL REFERENCES Shippers(ShipperID));  
GO  
```  
  
## See Also  
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/system-functions-transact-sql.md)  
  
  