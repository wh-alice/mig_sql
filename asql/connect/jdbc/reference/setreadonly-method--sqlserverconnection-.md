---
title: "setReadOnly Method (SQLServerConnection) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
apiname: 
  - "SQLServerConnection.setReadOnly"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: bd11fd50-f092-43a0-a6bc-c63e70cff8da
caps.latest.revision: 14
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# setReadOnly Method (SQLServerConnection)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Puts this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object in read-only mode as a hint to the JDBC driver to enable database optimizations.  
  
> [!NOTE]  
>  This method is not supported by the Microsoft JDBC Driver for SQL Server.  
  
## Syntax  
  
```  
  
public void setReadOnly(boolean readOnly)  
```  
  
#### Parameters  
 *readOnly*  
  
 **true** if the connection is to be read-only. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setReadOnly method is specified by the setReadOnly method in the java.sql.Connection interface.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  