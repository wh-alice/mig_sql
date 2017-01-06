---
title: "updateSQLXML Method (java.lang.String, java.sql.SQLXML) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 60021881-ef83-499b-9977-e20ff23c1312
caps.latest.revision: 8
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
# updateSQLXML Method (java.lang.String, java.sql.SQLXML)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a java.sql.SQLXML value.  
  
## Syntax  
  
```  
  
public void updateSQLXML(java.lang.String columnLabel,  
                         java.sql.SQLXML xmlObject)  
```  
  
#### Parameters  
 *columnLabel*  
  
 A **String** that indicates the column label.  
  
 *xmlObject*  
  
 A SQLXML object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateSQLXML method is specified by the updateSQLXML method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateSQLXML Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatesqlxml-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  