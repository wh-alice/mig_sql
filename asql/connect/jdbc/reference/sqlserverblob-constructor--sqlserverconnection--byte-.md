---
title: "SQLServerBlob Constructor (SQLServerConnection, byte) | Microsoft Docs"
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
  - "SQLServerConnection, byte[].SQLServerBlob"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 9fe573e3-30db-4828-abab-e9346493e931
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
# SQLServerBlob Constructor (SQLServerConnection, byte)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Initializes a new instance of the [SQLServerBlob](../../../connect/jdbc/reference/sqlserverblob-class.md) class when given a [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object and a **byte** array.  
  
> [!NOTE]  
>  This method has been deprecated in JDBC Driver version 2.0. Instead, use the [createBlob](../../../connect/jdbc/reference/createblob-method--sqlserverconnection-.md) method of the [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) class.  
  
## Syntax  
  
```  
  
public SQLServerBlob(SQLServerConnection connection,  
                     byte[] data)  
```  
  
#### Parameters  
 *connection*  
  
 A SQLServerConnection object.  
  
 *data*  
  
 A **byte** array.  
  
## See Also  
 [SQLServerBlob Constructors](../../../connect/jdbc/reference/sqlserverblob-constructors.md)   
 [SQLServerBlob Members](../../../connect/jdbc/reference/sqlserverblob-members.md)   
 [SQLServerBlob Class](../../../connect/jdbc/reference/sqlserverblob-class.md)  
  
  