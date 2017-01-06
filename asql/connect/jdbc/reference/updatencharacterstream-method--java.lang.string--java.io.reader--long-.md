---
title: "updateNCharacterStream Method (java.lang.String, java.io.Reader, long) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: db0a96a8-248f-4664-9c13-f480f309ab91
caps.latest.revision: 20
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
# updateNCharacterStream Method (java.lang.String, java.io.Reader, long)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Updates the designated column with a character stream value, which will have the specified number of bytes.  
  
## Syntax  
  
```  
  
public void updateNCharacterStream(java.lang.String columnLabel,  
                                    java.io.Reader reader,  
                                    long length)  
```  
  
#### Parameters  
 *columnLabel*  
  
 A **String** that contains the column label.  
  
 *reader*  
  
 A Reader object.  
  
 *length*  
  
 The length of the stream.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateNCharacterStream method is specified by the updateNCharacterStream method in the java.sql.ResultSet interface.  
  
 This method passes Unicode characters from a Reader object to selected **nchar**, **nvarchar(max)**, **ntext**, and **xml** columns. Using this method on other data type columns will throw an exception.  
  
 If the length of the stream is different than what is specified in the *length* parameter, the JDBC driver throws an exception when the row is updated or inserted.  
  
 If the length of the stream is unknown, the *length* parameter may be set to -1 to indicate that the driver should accept the stream regardless of its length. With sqljdbc4.jar, we recommend that you use the JDBC 4.0 method [updateNCharacterStream Method &#40;java.lang.String, java.io.Reader&#41;](../../../connect/jdbc/reference/updatencharacterstream-method--java.lang.string--java.io.reader-.md) when the application wants to update the column from a stream whose length is unknown.  
  
## See Also  
 [updateNCharacterStream Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatencharacterstream-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  