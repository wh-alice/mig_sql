---
title: "createBlob Method (SQLServerConnection) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 630a93b0-6e3c-4255-a007-1097ce0ee243
caps.latest.revision: 9
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
# createBlob Method (SQLServerConnection)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates a Blob object without any data.  
  
## Syntax  
  
```  
  
public java.sql.Blob createBlob()  
```  
  
## Return Value  
 A Blob object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This createBlob method is specified by the createBlob method in the java.sql.Connection interface.  
  
 This method replaces the need for [SQLServerBlob Constructor &#40;SQLServerConnection, byte&#41;](../../../connect/jdbc/reference/sqlserverblob-constructor--sqlserverconnection--byte-.md).  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  