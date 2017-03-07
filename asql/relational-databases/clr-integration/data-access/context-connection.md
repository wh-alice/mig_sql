---
title: "Context Connection | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
dev_langs: 
  - "VB"
  - "CSharp"
helpviewer_keywords: 
  - "context connections [CLR integration]"
  - "database objects [CLR integration], connections"
  - "connections [CLR integration]"
  - "context [CLR integration]"
ms.assetid: 67dd1925-d672-4986-a85f-bce4fe832ef7
caps.latest.revision: 13
ms.author: "jhubbard"
manager: "jhubbard"
---
# Context Connection
  The problem of internal data access is a fairly common scenario. That is, you wish to access the same server on which your common language runtime (CLR) stored procedure or function is executing. One option is to create a connection using **System.Data.SqlClient.SqlConnection**, specify a connection string that points to the local server, and open the connection. This requires specifying credentials for logging in. The connection is in a different database session than the stored procedure or function, it may have different **SET** options, it is in a separate transaction, it does not see your temporary tables, and so on. If your managed stored procedure or function code is executing in the SQL Server process, it is because someone connected to that server and executed a SQL statement to invoke it. You probably want the stored procedure or function to execute in the context of that connection, along with its transaction, **SET** options, and so on. This is called the context connection.  
  
 The context connection lets you execute Transact-SQL statements in the same context that your code was invoked in the first place. In order to obtain the context connection, you must use the "context connection" connection string keyword, as in the example below:  
  
 [C#]  
  
```  
using(SqlConnection connection = new SqlConnection("context connection=true"))   
{  
    connection.Open();  
    // Use the connection  
}  
```  
  
 [Visual Basic]  
  
```  
Using connection as new SqlConnection("context connection=true")  
    connection.Open()  
    ' Use the connection  
End Using  
  
```  
  
## In This Section  
 [Regular vs. Context Connections](../Topic/Regular%20vs.%20Context%20Connections.md)  
 Describes the differences between regular and context connections.  
  
 [Restrictions on Regular and Context Connections](../Topic/Restrictions%20on%20Regular%20and%20Context%20Connections.md)  
 Describes the restrictions on regular and context connections.  
  
  