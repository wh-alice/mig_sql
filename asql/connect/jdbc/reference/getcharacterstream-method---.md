---
title: "getCharacterStream Method () | Microsoft Docs"
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
  - "SQLServerClob.getCharacterStream"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 70a5a8c8-791a-43f9-8a0e-1c390f30857c
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
# getCharacterStream Method ()
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns the **CLOB** data as a Reader object or as a stream of characters.  
  
## Syntax  
  
```  
  
public java.io.Reader getCharacterStream()  
```  
  
## Return Value  
 A Reader object that contains the **CLOB** data.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getCharacterStream method is specified by the getCharacterStream method in the java.sql.Clob interface.  
  
## See Also  
 [SQLServerClob Methods](../../../connect/jdbc/reference/sqlserverclob-methods.md)   
 [SQLServerClob Members](../../../connect/jdbc/reference/sqlserverclob-members.md)   
 [SQLServerClob Class](../../../connect/jdbc/reference/sqlserverclob-class.md)  
  
  