---
title: "updateNClob Method (java.lang.String, java.io.Reader) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 87621ca7-e64a-49e2-b9c2-551390adaa26
caps.latest.revision: 18
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
# updateNClob Method (java.lang.String, java.io.Reader)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column using the specified Readerobject.  
  
## Syntax  
  
```  
  
public void updateNClob(java.lang.String columnLabel,  
                        java.io.Reader reader)  
```  
  
#### Parameters  
 *columnLabel*  
  
 A **String** that indicates the column label.  
  
 *reader*  
  
 A Reader object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateNClob method is specified by the updateNClob method in the java.sql.ResultSet interface.  
  
 This method is supported only on **nvarchar(max)**, **ntext**, and **xml** columns. Using this method on any other data types will cause an exception to be thrown.  
  
## See Also  
 [updateNClob Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatenclob-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  