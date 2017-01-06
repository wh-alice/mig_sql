---
title: "getCharacterStream Method (long, long) (SQLServerNClob) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5a8028bc-c877-4668-b662-0746d462040e
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
# getCharacterStream Method (long, long) (SQLServerNClob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the **NCLOB** data as a **Reader** object or as a stream of characters with a specified position and length.  
  
## Syntax  
  
```  
  
public java.io.Reader getCharacterStream(long pos,  
                                  long length)  
```  
  
#### Parameters  
 *pos*  
  
 A **long** that indicates the offset to the first character of the partial value to be retrieved.  
  
 *length*  
  
 A **long** that indicates the length in characters of the partial value to be retrieved.  
  
## Return Value  
 A Reader object that contains the **NCLOB** data.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getCharacterStream method is specified by the getCharacterStream method in the java.sql.NClob interface.  
  
## See Also  
 [getCharacterStream Method &#40;SQLServerNClob&#41;](../../../connect/jdbc/reference/getcharacterstream-method--sqlservernclob-.md)   
 [SQLServerNClob Methods](../../../connect/jdbc/reference/sqlservernclob-methods.md)   
 [SQLServerNClob Members](../../../connect/jdbc/reference/sqlservernclob-members.md)   
 [SQLServerNClob Class](../../../connect/jdbc/reference/sqlservernclob-class.md)  
  
  