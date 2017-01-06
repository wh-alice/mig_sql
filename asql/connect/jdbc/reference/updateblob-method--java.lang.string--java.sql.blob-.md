---
title: "updateBlob Method (java.lang.String, java.sql.Blob) | Microsoft Docs"
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
  - "SQLServerResultSet.updateBlob (java.lang.String, java.sql.Blob)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: fdd47885-c7ec-4599-a645-ad0e082586f4
caps.latest.revision: 10
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
# updateBlob Method (java.lang.String, java.sql.Blob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a java.sql.Blob value.  
  
## Syntax  
  
```  
  
public void updateBlob(java.lang.String columnName,  
                       java.sql.Blob x)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that contains the column name.  
  
 *x*  
  
 A Blob object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateBlob method is specified by the updateBlob method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateBlob Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updateblob-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  