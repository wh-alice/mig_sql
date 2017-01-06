---
title: "updateCharacterStream Method (int, java.io.Reader, int) | Microsoft Docs"
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
  - "SQLServerResultSet.updateCharacterStream (int, java.io.Reader, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b692c372-f6d7-4528-9c5d-cd8421bdb12e
caps.latest.revision: 22
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
# updateCharacterStream Method (int, java.io.Reader, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a character stream value, which will have the specified number of characters.  
  
## Syntax  
  
```  
  
public void updateCharacterStream(int columnIndex,  
                                  java.io.Reader readerValue,  
                                  int length)  
```  
  
#### Parameters  
 *columnIndex*  
  
 An **int** that indicates the column index.  
  
 *readerValue*  
  
 A Reader object.  
  
 *length*  
  
 An **int** that indicates the length of the stream.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateCharacterStream method is specified by the updateCharacterStream method in the java.sql.ResultSet interface.  
  
 This method passes Unicode characters from a Reader object to selected text and binary columns. This includes all text columns and **binary**, **varbinary**, **varbinary(max)**, **image**, and **xml** columns, but not **udt** columns.  
  
 If the length of the stream is different than that specified in the *length* parameter, the JDBC driver throws an exception when the row is updated or inserted.  
  
 If the length of the stream is unknown, the *length* parameter may be set to -1 to indicate that the driver should accept the stream regardless of its length. With sqljdbc4.jar, we recommend that you use the JDBC 4.0 method [updateCharacterStream Method &#40;int, java.io.Reader&#41;](../../../connect/jdbc/reference/updatecharacterstream-method--int--java.io.reader-.md) when the application wants to update the column from a stream whose length is unknown.  
  
## See Also  
 [updateCharacterStream Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatecharacterstream-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  