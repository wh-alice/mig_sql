---
title: "getCharacterStream Method () (SQLServerNClob) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7641698e-b25c-4bb2-bcc7-9273bdd08bf0
caps.latest.revision: 11
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
# getCharacterStream Method () (SQLServerNClob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the **NCLOB** data as a **Reader** object or as a stream of characters.  
  
## Syntax  
  
```  
  
public java.io.Reader getCharacterStream()  
```  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Return Value  
 A Reader object that contains the **NCLOB** data.  
  
## Remarks  
 This getCharacterStream method is specified by the getCharacterStream method in the java.sql.NClob interface.  
  
## See Also  
 [getCharacterStream Method &#40;SQLServerNClob&#41;](../../../connect/jdbc/reference/getcharacterstream-method--sqlservernclob-.md)   
 [SQLServerNClob Methods](../../../connect/jdbc/reference/sqlservernclob-methods.md)   
 [SQLServerNClob Members](../../../connect/jdbc/reference/sqlservernclob-members.md)   
 [SQLServerNClob Class](../../../connect/jdbc/reference/sqlservernclob-class.md)  
  
  