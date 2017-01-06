---
title: "isReadOnly Method (SQLServerConnection) | Microsoft Docs"
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
  - "SQLServerConnection.isReadOnly"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 902fd2c1-05e0-436e-9779-c048cdb8475a
caps.latest.revision: 15
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
# isReadOnly Method (SQLServerConnection)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Indicates whether this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object is in read-only mode.  
  
> [!NOTE]  
>  This method is not currently supported by the Microsoft JDBC Driver for SQL Server.  
  
## Syntax  
  
```  
  
public boolean isReadOnly()  
```  
  
## Return Value  
 **true** if the connection is in read-only mode, **false** if it is not.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This isReadOnly method is specified by the isReadOnly method in the java.sql.Connection interface.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  